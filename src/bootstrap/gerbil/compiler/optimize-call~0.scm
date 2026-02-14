(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771030495)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp253899 (list gxc#::basic-xform::t))
            (__tmp253898 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp253899
         '()
         __tmp253898
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args253176%_
        (apply make-instance gxc#::optimize-call::t _%$args253176%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp253900
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
        (__make-atomic-promise __tmp253900)))
    (define gxc#apply-optimize-call
      (lambda (_%stx253168%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self253171%_
                (let ((__obj253890
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj253890))
               (__tmp253901
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253171%_ _%stx253168%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp253901
           gxc#current-compile-method
           _%self253171%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp253903 (list gxc#::void::t))
            (__tmp253902 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp253903
         '()
         __tmp253902
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args253165%_
        (apply make-instance gxc#::check-return-type::t _%$args253165%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp253904
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
        (__make-atomic-promise __tmp253904)))
    (define gxc#apply-check-return-type
      (lambda (_%stx253157%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self253160%_
                (let ((__obj253892
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj253892))
               (__tmp253905
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253160%_ _%stx253157%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp253905
           gxc#current-compile-method
           _%self253160%_))))
    (define gxc#optimize-call%
      (lambda (_%self252764%_ _%stx252765%_)
        (let* ((_%__stx253245253246%_ _%stx252765%_)
               (_%g252768252814%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253245253246%_)))))
          (let ((_%__kont253247253248%_
                 (lambda (_%g252770252953%_ _%g252771252954%_)
                   (let* ((_%rator-id252974%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g252771252954%_)))
                          (_%rator-type252976%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id252974%_))))
                     (if (or (not _%rator-type252976%_)
                             (eq? (##structure-ref
                                   _%rator-type252976%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self252764%_ _%stx252765%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type252976%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp253906
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type252976%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id252974%_
                                  '" => "
                                  _%rator-type252976%_
                                  '" "
                                  __tmp253906))
                               (let* ((_%optimized252991%_
                                       (let ((__method253893
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type252976%_
                                                 'optimize-call))))
                                         (if __method253893
                                             (let ((__tmp253907
                                                    (let ((__tmp253908
                                                           (lambda (_%g252983252986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g252984252988%_)
                     (cons _%g252983252986%_ _%g252984252988%_))))
              (declare (not safe))
              (foldr__0 __tmp253908 '() _%g252770252953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method253893
                                                _%rator-type252976%_
                                                _%self252764%_
                                                _%stx252765%_
                                                __tmp253907))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type252976%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx253193253194%_
                                       _%optimized252991%_)
                                      (_%g252994253023%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx253193253194%_)))))
                                 (let ((_%__kont253195253196%_
                                        (lambda (_%g252996253089%_
                                                 _%g252997253090%_)
                                          (let* ((_%optimized-rator-id253117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g252997253090%_)))
                                                 (_%rator-type253122%_
                                                  (let ((_%$e253119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id253117%_))))
                                                    (if _%$e253119%_
                                                        _%$e253119%_
                                                        _%rator-type252976%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type253122%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id253117%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type253122%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type253122%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized252991%_
                                                (let ((__tmp253909
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g252997253090%_ '()))
                           (let ((__tmp253910
                                  (lambda (_%g253130253133%_ _%g253131253135%_)
                                    (cons _%g253130253133%_
                                          _%g253131253135%_))))
                             (declare (not safe))
                             (foldr__0 __tmp253910 '() _%g252996253089%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp253909
                                                   _%stx252765%_))))))
                                       (_%__kont253199253200%_
                                        (lambda () _%optimized252991%_)))
                                   (let ((_%__match253242253243%_
                                          (lambda (_%e252998253035%_
                                                   _%hd252999253038%_
                                                   _%tl253000253040%_
                                                   _%e253001253043%_
                                                   _%hd253002253046%_
                                                   _%tl253003253048%_
                                                   _%e253004253051%_
                                                   _%hd253005253054%_
                                                   _%tl253006253056%_
                                                   _%e253007253059%_
                                                   _%hd253008253062%_
                                                   _%tl253009253064%_
                                                   _%__splice253197253198%_
                                                   _%target253010253067%_
                                                   _%tl253012253069%_)
                                            (letrec ((_%loop253013253072%_
                                                      (lambda (_%hd253011253075%_
                                                               _%arg253017253077%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd253011253075%_))
                                                            (let ((_%e253014253079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd253011253075%_))))
                      (let ((_%lp-tl253016253084%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253014253079%_)))
                            (_%lp-hd253015253082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253014253079%_))))
                        (_%loop253013253072%_
                         _%lp-tl253016253084%_
                         (cons _%lp-hd253015253082%_ _%arg253017253077%_))))
                    (let ((_%arg253018253087%_ (reverse _%arg253017253077%_)))
                      (_%__kont253195253196%_
                       _%arg253018253087%_
                       _%hd253008253062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop253013253072%_
                                               _%target253010253067%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx253193253194%_))
                                         (let ((_%e252998253035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx253193253194%_))))
                                           (let ((_%tl253000253040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e252998253035%_)))
                                                 (_%hd252999253038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e252998253035%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd252999253038%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd252999253038%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl253000253040%_))
                                                         (let ((_%e253001253043%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl253000253040%_))))
                   (let ((_%tl253003253048%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e253001253043%_)))
                         (_%hd253002253046%_
                          (let ()
                            (declare (not safe))
                            (##car _%e253001253043%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd253002253046%_))
                         (let ((_%e253004253051%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd253002253046%_))))
                           (let ((_%tl253006253056%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e253004253051%_)))
                                 (_%hd253005253054%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e253004253051%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd253005253054%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd253005253054%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl253006253056%_))
                                         (let ((_%e253007253059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl253006253056%_))))
                                           (let ((_%tl253009253064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253007253059%_)))
                                                 (_%hd253008253062%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253007253059%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl253009253064%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl253003253048%_))
                                                     (let ((_%__splice253197253198%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl253003253048%_
                                                               '0))))
                                                       (let ((_%tl253012253069%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice253197253198%_ '1)))
                     (_%target253010253067%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice253197253198%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl253012253069%_))
                     (_%__match253242253243%_
                      _%e252998253035%_
                      _%hd252999253038%_
                      _%tl253000253040%_
                      _%e253001253043%_
                      _%hd253002253046%_
                      _%tl253003253048%_
                      _%e253004253051%_
                      _%hd253005253054%_
                      _%tl253006253056%_
                      _%e253007253059%_
                      _%hd253008253062%_
                      _%tl253009253064%_
                      _%__splice253197253198%_
                      _%target253010253067%_
                      _%tl253012253069%_)
                     (_%__kont253199253200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253199253200%_))
                                                 (_%__kont253199253200%_))))
                                         (_%__kont253199253200%_))
                                     (_%__kont253199253200%_))
                                 (_%__kont253199253200%_))))
                         (_%__kont253199253200%_))))
                 (_%__kont253199253200%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253199253200%_))
                                                 (_%__kont253199253200%_))))
                                         (_%__kont253199253200%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type252976%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type252976%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp253911
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g252771252954%_
                                                                '()))
                                                    (map (lambda (_%g253141253143%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self252764%_
                                                              _%g253141253143%_)))
                                                         (let ((__tmp253912
                                                                (lambda (_%g253145253148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g253146253150%_)
                          (cons _%g253145253148%_ _%g253146253150%_))))
                   (declare (not safe))
                   (foldr__0 __tmp253912 '() _%g252770252953%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp253911
                                    _%stx252765%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx252765%_
                                    _%rator-type252976%_))))))))
                (_%__kont253251253252%_
                 (lambda (_%g252793252857%_ _%g252794252858%_)
                   (let ((_%rator-type252875%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g252794252858%_))))
                     (if (and _%rator-type252875%_
                              (eq? (##structure-ref
                                    _%rator-type252875%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type252875%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type252875%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type252875%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp253913
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self252764%_
                                               _%g252794252858%_))
                                            (map (lambda (_%g252877252879%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self252764%_
                                                      _%g252877252879%_)))
                                                 (let ((__tmp253914
                                                        (lambda (_%g252881252884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g252882252886%_)
                  (cons _%g252881252884%_ _%g252882252886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp253914
                                                    '()
                                                    _%g252793252857%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp253913 _%stx252765%_))
                         (if (or (not _%rator-type252875%_)
                                 (let ((__tmp253915
                                        (##structure-ref
                                         _%rator-type252875%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp253915 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self252764%_ _%stx252765%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx252765%_
                                _%rator-type252875%_))))))))
            (let* ((_%__match253312253313%_
                    (lambda (_%e252795252819%_
                             _%hd252796252822%_
                             _%tl252797252824%_
                             _%e252798252827%_
                             _%hd252799252830%_
                             _%tl252800252832%_
                             _%__splice253253253254%_
                             _%target252801252835%_
                             _%tl252803252837%_)
                      (letrec ((_%loop252804252840%_
                                (lambda (_%hd252802252843%_
                                         _%rand252808252845%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252802252843%_))
                                      (let ((_%e252805252847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd252802252843%_))))
                                        (let ((_%lp-tl252807252852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252805252847%_)))
                                              (_%lp-hd252806252850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252805252847%_))))
                                          (_%loop252804252840%_
                                           _%lp-tl252807252852%_
                                           (cons _%lp-hd252806252850%_
                                                 _%rand252808252845%_))))
                                      (let ((_%rand252809252855%_
                                             (reverse _%rand252808252845%_)))
                                        (_%__kont253251253252%_
                                         _%rand252809252855%_
                                         _%hd252799252830%_))))))
                        (_%loop252804252840%_ _%target252801252835%_ '()))))
                   (_%__match253292253293%_
                    (lambda (_%e252772252899%_
                             _%hd252773252902%_
                             _%tl252774252904%_
                             _%e252775252907%_
                             _%hd252776252910%_
                             _%tl252777252912%_
                             _%e252778252915%_
                             _%hd252779252918%_
                             _%tl252780252920%_
                             _%e252781252923%_
                             _%hd252782252926%_
                             _%tl252783252928%_
                             _%__splice253249253250%_
                             _%target252784252931%_
                             _%tl252786252933%_)
                      (letrec ((_%loop252787252936%_
                                (lambda (_%hd252785252939%_
                                         _%rand252791252941%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252785252939%_))
                                      (let ((_%e252788252943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd252785252939%_))))
                                        (let ((_%lp-tl252790252948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252788252943%_)))
                                              (_%lp-hd252789252946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252788252943%_))))
                                          (_%loop252787252936%_
                                           _%lp-tl252790252948%_
                                           (cons _%lp-hd252789252946%_
                                                 _%rand252791252941%_))))
                                      (let ((_%rand252792252951%_
                                             (reverse _%rand252791252941%_)))
                                        (_%__kont253247253248%_
                                         _%rand252792252951%_
                                         _%hd252782252926%_))))))
                        (_%loop252787252936%_ _%target252784252931%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253245253246%_))
                  (let ((_%e252772252899%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253245253246%_))))
                    (let ((_%tl252774252904%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252772252899%_)))
                          (_%hd252773252902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252772252899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252774252904%_))
                          (let ((_%e252775252907%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252774252904%_))))
                            (let ((_%tl252777252912%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252775252907%_)))
                                  (_%hd252776252910%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252775252907%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd252776252910%_))
                                  (let ((_%e252778252915%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd252776252910%_))))
                                    (let ((_%tl252780252920%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252778252915%_)))
                                          (_%hd252779252918%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252778252915%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd252779252918%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd252779252918%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252780252920%_))
                                                  (let ((_%e252781252923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl252780252920%_))))
                                                    (let ((_%tl252783252928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252781252923%_)))
                                                          (_%hd252782252926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252781252923%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252783252928%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl252777252912%_))
                      (let ((_%__splice253249253250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl252777252912%_
                                '0))))
                        (let ((_%tl252786252933%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253249253250%_ '1)))
                              (_%target252784252931%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253249253250%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252786252933%_))
                              (_%__match253292253293%_
                               _%e252772252899%_
                               _%hd252773252902%_
                               _%tl252774252904%_
                               _%e252775252907%_
                               _%hd252776252910%_
                               _%tl252777252912%_
                               _%e252778252915%_
                               _%hd252779252918%_
                               _%tl252780252920%_
                               _%e252781252923%_
                               _%hd252782252926%_
                               _%tl252783252928%_
                               _%__splice253249253250%_
                               _%target252784252931%_
                               _%tl252786252933%_)
                              (let ()
                                (declare (not safe))
                                (_%g252768252814%_)))))
                      (let () (declare (not safe)) (_%g252768252814%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl252777252912%_))
                      (let ((_%__splice253253253254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl252777252912%_
                                '0))))
                        (let ((_%tl252803252837%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253253253254%_ '1)))
                              (_%target252801252835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253253253254%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252803252837%_))
                              (_%__match253312253313%_
                               _%e252772252899%_
                               _%hd252773252902%_
                               _%tl252774252904%_
                               _%e252775252907%_
                               _%hd252776252910%_
                               _%tl252777252912%_
                               _%__splice253253253254%_
                               _%target252801252835%_
                               _%tl252803252837%_)
                              (let ()
                                (declare (not safe))
                                (_%g252768252814%_)))))
                      (let () (declare (not safe)) (_%g252768252814%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl252777252912%_))
                                                      (let ((_%__splice253253253254%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl252777252912%_
                        '0))))
                (let ((_%tl252803252837%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253253253254%_ '1)))
                      (_%target252801252835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253253253254%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252803252837%_))
                      (_%__match253312253313%_
                       _%e252772252899%_
                       _%hd252773252902%_
                       _%tl252774252904%_
                       _%e252775252907%_
                       _%hd252776252910%_
                       _%tl252777252912%_
                       _%__splice253253253254%_
                       _%target252801252835%_
                       _%tl252803252837%_)
                      (let () (declare (not safe)) (_%g252768252814%_)))))
              (let () (declare (not safe)) (_%g252768252814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl252777252912%_))
                                                  (let ((_%__splice253253253254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl252777252912%_
                                                            '0))))
                                                    (let ((_%tl252803252837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253253253254%_
                                                              '1)))
                                                          (_%target252801252835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253253253254%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252803252837%_))
                                                          (_%__match253312253313%_
                                                           _%e252772252899%_
                                                           _%hd252773252902%_
                                                           _%tl252774252904%_
                                                           _%e252775252907%_
                                                           _%hd252776252910%_
                                                           _%tl252777252912%_
                                                           _%__splice253253253254%_
                                                           _%target252801252835%_
                                                           _%tl252803252837%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g252768252814%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g252768252814%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl252777252912%_))
                                              (let ((_%__splice253253253254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl252777252912%_
                                                        '0))))
                                                (let ((_%tl252803252837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253253253254%_
                                                          '1)))
                                                      (_%target252801252835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253253253254%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252803252837%_))
                                                      (_%__match253312253313%_
                                                       _%e252772252899%_
                                                       _%hd252773252902%_
                                                       _%tl252774252904%_
                                                       _%e252775252907%_
                                                       _%hd252776252910%_
                                                       _%tl252777252912%_
                                                       _%__splice253253253254%_
                                                       _%target252801252835%_
                                                       _%tl252803252837%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g252768252814%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g252768252814%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252777252912%_))
                                      (let ((_%__splice253253253254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252777252912%_
                                                '0))))
                                        (let ((_%tl252803252837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253253253254%_
                                                  '1)))
                                              (_%target252801252835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253253253254%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252803252837%_))
                                              (_%__match253312253313%_
                                               _%e252772252899%_
                                               _%hd252773252902%_
                                               _%tl252774252904%_
                                               _%e252775252907%_
                                               _%hd252776252910%_
                                               _%tl252777252912%_
                                               _%__splice253253253254%_
                                               _%target252801252835%_
                                               _%tl252803252837%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g252768252814%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252768252814%_))))))
                          (let () (declare (not safe)) (_%g252768252814%_)))))
                  (let () (declare (not safe)) (_%g252768252814%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self252726%_ _%ctx252727%_ _%stx252728%_ _%args252729%_)
        (let ((_%self252732%_ _%self252726%_))
          (if (let ((__method253894
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self252732%_ 'check-arguments))))
                (if __method253894
                    (let ()
                      (declare (not safe))
                      (__method253894
                       _%self252732%_
                       _%ctx252727%_
                       _%stx252728%_
                       _%args252729%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self252732%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature252742%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252732%_ '2 '#f '#f)))
                     (_%signature252744%_ _%signature252742%_)
                     (_%$e252754%_
                      (if _%signature252744%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature252744%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e252754%_
                    ((lambda (_%unchecked252757%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked252757%_))
                           (let ((__tmp253916
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked252757%_
                                                          '()))
                                              (map (lambda (_%g252758252760%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252727%_
                                                        _%g252758252760%_)))
                                                   _%args252729%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp253916
                              _%stx252728%_
                              _%ctx252727%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx252727%_ _%stx252728%_))))
                     _%$e252754%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx252727%_ _%stx252728%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx252727%_ _%stx252728%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass253178 __method-table253179)
        (let ((__check-arguments253180
               (let ((__tmp253917
                      (lambda ()
                        (let ((__method253181
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253179
                                  'check-arguments
                                  '#f))))
                          (if __method253181
                              __method253181
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp253917))))
          (lambda (_%self252726%_ _%ctx252727%_ _%stx252728%_ _%args252729%_)
            (let ((_%self252732%_ _%self252726%_))
              (if ((force __check-arguments253180)
                   _%self252732%_
                   _%ctx252727%_
                   _%stx252728%_
                   _%args252729%_)
                  (let* ((_%signature252742%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252732%_
                             '2
                             '#f
                             '#f)))
                         (_%signature252744%_ _%signature252742%_)
                         (_%$e252754%_
                          (if _%signature252744%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature252744%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e252754%_
                        ((lambda (_%unchecked252757%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked252757%_))
                               (let ((__tmp253918
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked252757%_
                                                              '()))
                                                  (map (lambda (_%g252758252760%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx252727%_
                                                            _%g252758252760%_)))
                                                       _%args252729%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp253918
                                  _%stx252728%_
                                  _%ctx252727%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx252727%_
                                  _%stx252728%_))))
                         _%$e252754%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx252727%_ _%stx252728%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx252727%_ _%stx252728%_))))))))
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
      (lambda (_%self252479%_ _%ctx252480%_ _%stx252481%_ _%args252482%_)
        (let* ((_%self252485%_ _%self252479%_)
               (_%signature252494252496%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252485%_ '2 '#f '#f))))
          (if _%signature252494252496%_
              (let* ((_%signature252498%_ _%signature252494252496%_)
                     (_%argument-types252499252501%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature252498%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types252499252501%_
                    (let* ((_%argument-types252503%_
                            _%argument-types252499252501%_)
                           (_%argument-types252508%_
                            (let ((__tmp253919
                                   (lambda (_%t252506%_)
                                     (if _%t252506%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252481%_
                                            _%t252506%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp253919
                               _%argument-types252503%_))))
                      (let _%loop252510%_ ((_%rest-args252512%_ _%args252482%_)
                                           (_%rest-types252513%_
                                            _%argument-types252508%_)
                                           (_%result252514%_ '#t))
                        (let* ((_%rest-args252515252523%_ _%rest-args252512%_)
                               (_%else252517252531%_
                                (lambda () _%result252514%_))
                               (_%K252519252592%_
                                (lambda (_%rest-args252534%_ _%arg252535%_)
                                  (let* ((_%rest-types252536252547%_
                                          _%rest-types252513%_)
                                         (_%E252540252551%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types252536252547%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K252543252580%_
                                           (lambda (_%rest-types252577%_
                                                    _%type252578%_)
                                             (_%loop252510%_
                                              _%rest-args252534%_
                                              _%rest-types252577%_
                                              (if (gxc#check-expression-type!
                                                   _%stx252481%_
                                                   _%arg252535%_
                                                   _%type252578%_)
                                                  _%result252514%_
                                                  '#f))))
                                          (_%K252542252571%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx252481%_
                                                _%argument-types252508%_))))
                                          (_%K252541252561%_
                                           (lambda (_%tail-type252555%_)
                                             (if (let ((__tmp253920
                                                        (lambda (_%g252556252558%_)
                                                          (gxc#check-expression-type!
                                                           _%stx252481%_
                                                           _%g252556252558%_
                                                           _%tail-type252555%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp253920
                                                    _%rest-args252534%_))
                                                 _%result252514%_
                                                 '#f))))
                                      (let ((_%try-match252538252574%_
                                             (lambda ()
                                               (if (null? _%rest-types252536252547%_)
                                                   (_%K252542252571%_)
                                                   (let ((_%tail-type252564%_
                                                          _%rest-types252536252547%_))
                                                     (_%K252541252561%_
                                                      _%tail-type252564%_))))))
                                        (if (pair? _%rest-types252536252547%_)
                                            (let ((_%tl252545252585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types252536252547%_)))
                                                  (_%hd252544252583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types252536252547%_))))
                                              (let ((_%type252588%_
                                                     _%hd252544252583%_)
                                                    (_%rest-types252590%_
                                                     _%tl252545252585%_))
                                                (_%K252543252580%_
                                                 _%rest-types252590%_
                                                 _%type252588%_)))
                                            (_%try-match252538252574%_))))))))
                          (if (pair? _%rest-args252515252523%_)
                              (let ((_%hd252520252595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args252515252523%_)))
                                    (_%tl252521252597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args252515252523%_))))
                                (let* ((_%arg252600%_ _%hd252520252595%_)
                                       (_%rest-args252602%_
                                        _%tl252521252597%_))
                                  (_%K252519252592%_
                                   _%rest-args252602%_
                                   _%arg252600%_)))
                              (_%else252517252531%_)))))
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
      (lambda (_%self252290%_ _%ctx252291%_ _%stx252292%_ _%args252293%_)
        (let* ((_%self252296%_ _%self252290%_)
               (_%g252306252316%_
                (lambda (_%g252307252313%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252307252313%_))))
               (_%g252305252354%_
                (lambda (_%g252307252319%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252307252319%_))
                      (let ((_%e252309252321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252307252319%_))))
                        (let ((_%hd252310252324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252309252321%_)))
                              (_%tl252311252326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252309252321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252311252326%_))
                              ((lambda (_%g252308252329%_)
                                 (let* ((_%klass252341%_
                                         (let ((__tmp253921
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252296%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252292%_
                                            __tmp253921)))
                                        (_%object252343%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252291%_
                                            _%g252308252329%_)))
                                        (_%instance?252348%_
                                         (let ((_%$e252345%_
                                                (gxc#expression-type?
                                                 _%object252343%_
                                                 _%klass252341%_)))
                                           (if _%$e252345%_
                                               _%$e252345%_
                                               (gxc#expression-type?
                                                _%g252308252329%_
                                                _%klass252341%_)))))
                                   (if _%instance?252348%_
                                       (let ((__tmp253922
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252343%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252308252329%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252343%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253922
                                          _%stx252292%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx252291%_
                                          _%stx252292%_)))))
                               _%hd252310252324%_)
                              (_%g252306252316%_ _%g252307252319%_))))
                      (_%g252306252316%_ _%g252307252319%_)))))
          (_%g252305252354%_ _%args252293%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self252086%_ _%ctx252087%_ _%stx252088%_ _%args252089%_)
        (let* ((_%self252092%_ _%self252086%_)
               (_%g252102252112%_
                (lambda (_%g252103252109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252103252109%_))))
               (_%g252101252165%_
                (lambda (_%g252103252115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252103252115%_))
                      (let ((_%e252105252117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252103252115%_))))
                        (let ((_%hd252106252120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252105252117%_)))
                              (_%tl252107252122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252105252117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252107252122%_))
                              ((lambda (_%g252104252125%_)
                                 (let* ((_%klass252137%_
                                         (let ((__tmp253923
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252092%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252088%_
                                            __tmp253923)))
                                        (_%object252139%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252087%_
                                            _%g252104252125%_)))
                                        (_%instance?252144%_
                                         (let ((_%$e252141%_
                                                (gxc#expression-type?
                                                 _%object252139%_
                                                 _%klass252137%_)))
                                           (if _%$e252141%_
                                               _%$e252141%_
                                               (gxc#expression-type?
                                                _%g252104252125%_
                                                _%klass252137%_))))
                                        (_%klass252147%_ _%klass252137%_))
                                   (if _%instance?252144%_
                                       (let ((__tmp253924
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252139%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252104252125%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252139%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253924
                                          _%stx252088%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252147%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp253925
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass252147%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object252139%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253925
                                              _%stx252088%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252147%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253926
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass252147%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object252139%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253926
                                                  _%stx252088%_))
                                               (let ((__tmp253927
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self252092%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object252139%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253927
                                                  _%stx252088%_)))))))
                               _%hd252106252120%_)
                              (_%g252102252112%_ _%g252103252115%_))))
                      (_%g252102252112%_ _%g252103252115%_)))))
          (_%g252101252165%_ _%args252089%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx251754%_)
        (let* ((_%__stx253322253323%_ _%stx251754%_)
               (_%g251759251800%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253322253323%_)))))
          (let ((_%__kont253324253325%_ (lambda () '#t))
                (_%__kont253326253327%_ (lambda () '#t))
                (_%__kont253328253329%_
                 (lambda (_%g251773251866%_ _%g251774251867%_)
                   (let ((_%rator-type251888251890%_
                          (let ((__tmp253928
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g251774251867%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp253928))))
                     (if _%rator-type251888251890%_
                         (let* ((_%rator-type251892%_
                                 _%rator-type251888251890%_)
                                (_%rator-signature251893251895%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type251892%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type251892%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature251893251895%_
                               (let* ((_%rator-signature251897%_
                                       _%rator-signature251893251895%_)
                                      (_%rator-effect251898251900%_
                                       (if _%rator-signature251897%_
                                           (##direct-structure-ref
                                            _%rator-signature251897%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect251898251900%_
                                     (let ((_%rator-effect251902%_
                                            _%rator-effect251898251900%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect251902%_)
                                               (equal? '(alloc)
                                                       _%rator-effect251902%_))
                                           (let ((__tmp253929
                                                  (let ((__tmp253930
                                                         (lambda (_%g251907251910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g251908251912%_)
                   (cons _%g251907251910%_ _%g251908251912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp253930
                                                     '()
                                                     _%g251773251866%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp253929))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont253332253333%_ (lambda () '#f)))
            (let ((_%__match253411253412%_
                   (lambda (_%e251775251812%_
                            _%hd251776251815%_
                            _%tl251777251817%_
                            _%e251778251820%_
                            _%hd251779251823%_
                            _%tl251780251825%_
                            _%e251781251828%_
                            _%hd251782251831%_
                            _%tl251783251833%_
                            _%e251784251836%_
                            _%hd251785251839%_
                            _%tl251786251841%_
                            _%__splice253330253331%_
                            _%target251787251844%_
                            _%tl251789251846%_)
                     (letrec ((_%loop251790251849%_
                               (lambda (_%hd251788251852%_
                                        _%rand251794251854%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251788251852%_))
                                     (let ((_%e251791251856%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd251788251852%_))))
                                       (let ((_%lp-tl251793251861%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251791251856%_)))
                                             (_%lp-hd251792251859%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251791251856%_))))
                                         (_%loop251790251849%_
                                          _%lp-tl251793251861%_
                                          (cons _%lp-hd251792251859%_
                                                _%rand251794251854%_))))
                                     (let ((_%rand251795251864%_
                                            (reverse _%rand251794251854%_)))
                                       (_%__kont253328253329%_
                                        _%rand251795251864%_
                                        _%hd251785251839%_))))))
                       (_%loop251790251849%_ _%target251787251844%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253322253323%_))
                  (let ((_%e251761251943%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253322253323%_))))
                    (let ((_%tl251763251948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251761251943%_)))
                          (_%hd251762251946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251761251943%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd251762251946%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd251762251946%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251763251948%_))
                                  (let ((_%e251764251951%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251763251948%_))))
                                    (let ((_%tl251766251956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251764251951%_)))
                                          (_%hd251765251954%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251764251951%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251766251956%_))
                                          (_%__kont253324253325%_)
                                          (_%__kont253332253333%_))))
                                  (_%__kont253332253333%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd251762251946%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251763251948%_))
                                      (let ((_%e251770251928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251763251948%_))))
                                        (let ((_%tl251772251933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251770251928%_)))
                                              (_%hd251771251931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251770251928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251772251933%_))
                                              (_%__kont253326253327%_)
                                              (_%__kont253332253333%_))))
                                      (_%__kont253332253333%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd251762251946%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251763251948%_))
                                          (let ((_%e251778251820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251763251948%_))))
                                            (let ((_%tl251780251825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251778251820%_)))
                                                  (_%hd251779251823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251778251820%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd251779251823%_))
                                                  (let ((_%e251781251828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd251779251823%_))))
                                                    (let ((_%tl251783251833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251781251828%_)))
                                                          (_%hd251782251831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251781251828%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd251782251831%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd251782251831%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251783251833%_))
                          (let ((_%e251784251836%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251783251833%_))))
                            (let ((_%tl251786251841%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251784251836%_)))
                                  (_%hd251785251839%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251784251836%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251786251841%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl251780251825%_))
                                      (let ((_%__splice253330253331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl251780251825%_
                                                '0))))
                                        (let ((_%tl251789251846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253330253331%_
                                                  '1)))
                                              (_%target251787251844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253330253331%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251789251846%_))
                                              (_%__match253411253412%_
                                               _%e251761251943%_
                                               _%hd251762251946%_
                                               _%tl251763251948%_
                                               _%e251778251820%_
                                               _%hd251779251823%_
                                               _%tl251780251825%_
                                               _%e251781251828%_
                                               _%hd251782251831%_
                                               _%tl251783251833%_
                                               _%e251784251836%_
                                               _%hd251785251839%_
                                               _%tl251786251841%_
                                               _%__splice253330253331%_
                                               _%target251787251844%_
                                               _%tl251789251846%_)
                                              (_%__kont253332253333%_))))
                                      (_%__kont253332253333%_))
                                  (_%__kont253332253333%_))))
                          (_%__kont253332253333%_))
                      (_%__kont253332253333%_))
                  (_%__kont253332253333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont253332253333%_))))
                                          (_%__kont253332253333%_))
                                      (_%__kont253332253333%_))))
                          (_%__kont253332253333%_))))
                  (_%__kont253332253333%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx251749%_ _%klass251750%_)
        (let ((_%expr-type251752%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx251749%_))))
          (if _%expr-type251752%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type251752%_ _%klass251750%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx251727%_ _%expr251728%_ _%type251729%_)
        (if (not _%type251729%_)
            '#f
            (let ((_%$e251732%_
                   (eq? (##structure-ref _%type251729%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e251732%_
                  _%$e251732%_
                  (let ((_%expr-type251736%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr251728%_))))
                    (if (not _%expr-type251736%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type251736%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e251740%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type251736%_
                                      'gxc#!abort::t))))
                              (if _%$e251740%_
                                  _%$e251740%_
                                  (let ((_%$e251743%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type251736%_
                                            _%type251729%_))))
                                    (if _%$e251743%_
                                        _%$e251743%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type251729%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type251729%_
                                                   _%expr-type251736%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx251727%_
                                                   _%expr251728%_
                                                   _%expr-type251736%_
                                                   _%type251729%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self251541%_ _%ctx251542%_ _%stx251543%_ _%args251544%_)
        (let* ((_%self251547%_ _%self251541%_)
               (_%klass251557%_
                (let ((__tmp253931
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251547%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx251543%_ __tmp253931)))
               (_%fields251559%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass251557%_
                           '5
                           '#f
                           '#f))))
               (_%args251565%_
                (map (lambda (_%g251560251562%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx251542%_ _%g251560251562%_)))
                     _%args251544%_))
               (_%inline-make-object251567%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self251547%_
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
                           _%self251547%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields251559%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass251570%_ _%klass251557%_)
               (_%$e251584%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass251570%_ '6 '#f '#f))))
          (if _%$e251584%_
              ((lambda (_%ctor251587%_)
                 (let ((_%$obj251589%_
                        (let ((__tmp253932
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp253932)))
                       (_%ctor-impl251590%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass251570%_
                           _%ctor251587%_))))
                   (let ((__tmp253933
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj251589%_ '())
                                                  (cons _%inline-make-object251567%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl251590%_
                                                            (let ((__tmp253934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl251590%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj251589%_ '()))
                                             _%args251565%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp253934
                       _%stx251543%_
                       _%ctx251542%_))
                    (let ((_%$ctor251592%_
                           (let ((__tmp253935
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp253935))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor251592%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251547%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj251589%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor251587%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor251592%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor251592%_ '()))
                              (cons (cons '%#ref (cons _%$obj251589%_ '()))
                                    _%args251565%_)))
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
                             _%self251547%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor251587%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj251589%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp253933 _%stx251543%_))))
               _%$e251584%_)
              (let ((_%$e251594%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass251570%_
                        '10
                        '#f
                        '#f))))
                (if _%$e251594%_
                    ((lambda (_%metaclass251597%_)
                       (let* ((_%$obj251599%_
                               (let ((__tmp253936
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253936)))
                              (_%metakons251601%_
                               (let ((__tmp253937
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx251543%_
                                         _%metaclass251597%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp253937
                                  'instance-init!)))
                              (__tmp253938
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj251599%_
                                                             '())
                                                       (cons _%inline-make-object251567%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons251601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp253939
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons251601%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self251547%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj251599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args251565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp253939
                            _%stx251543%_
                            _%ctx251542%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251547%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj251599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args251565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj251599%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253938 _%stx251543%_)))
                     _%$e251594%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass251570%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp253940
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args251565%_))))
                              (declare (not safe))
                              (##fx= __tmp253940 _%fields251559%_))
                            (let ((__tmp253941
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self251547%_
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
                                              _%self251547%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args251565%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp253941
                               _%stx251543%_))
                            (let ((__tmp253943
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self251547%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp253942
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass251570%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx251543%_
                               __tmp253943
                               __tmp253942)))
                        (let ((_%$obj251606%_
                               (let ((__tmp253944
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253944))))
                          (let _%lp251608%_ ((_%rest251610%_ _%args251565%_)
                                             (_%initializers251611%_ '()))
                            (let* ((_%__stx253414253415%_ _%rest251610%_)
                                   (_%g251615251636%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx253414253415%_)))))
                              (let ((_%__kont253416253417%_
                                     (lambda (_%g251617251690%_
                                              _%g251618251691%_
                                              _%g251619251692%_)
                                       (let* ((_%slot251719%_
                                               (let ((__tmp253945
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g251619251692%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp253945)))
                                              (_%off251721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass251570%_
                                                  _%slot251719%_))))
                                         (if _%off251721%_
                                             (_%lp251608%_
                                              _%g251617251690%_
                                              (cons (cons _%off251721%_
                                                          _%g251618251691%_)
                                                    _%initializers251611%_))
                                             (let ((__tmp253946
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251547%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx251543%_
                                                __tmp253946
                                                _%slot251719%_))))))
                                    (_%__kont253418253419%_
                                     (lambda ()
                                       (let ((__tmp253947
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj251606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object251567%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp253950
                                     (cons (cons '%#ref
                                                 (cons _%$obj251606%_ '()))
                                           '()))
                                    (__tmp253948
                                     (let ((__tmp253949
                                            (lambda (_%i251650%_ _%r251651%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251547%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i251650%_) '()))
                              (cons (cons '%#ref (cons _%$obj251606%_ '()))
                                    (cons (cdr _%i251650%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r251651%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp253949
                                        '()
                                        _%initializers251611%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp253950 __tmp253948)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253947
                                          _%stx251543%_))))
                                    (_%__kont253420253421%_
                                     (lambda ()
                                       (let ((__tmp253951
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj251606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object251567%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args251565%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj251606%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253951
                                          _%stx251543%_)))))
                                (let* ((_%g251613251653%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx253414253415%_))
                                              (_%__kont253418253419%_)
                                              (_%__kont253420253421%_))))
                                       (_%__match253451253452%_
                                        (lambda (_%e251620251658%_
                                                 _%hd251621251661%_
                                                 _%tl251622251663%_
                                                 _%e251623251666%_
                                                 _%hd251624251669%_
                                                 _%tl251625251671%_
                                                 _%e251626251674%_
                                                 _%hd251627251677%_
                                                 _%tl251628251679%_
                                                 _%e251629251682%_
                                                 _%hd251630251685%_
                                                 _%tl251631251687%_)
                                          (let ((_%g251617251690%_
                                                 _%tl251631251687%_)
                                                (_%g251618251691%_
                                                 _%hd251630251685%_)
                                                (_%g251619251692%_
                                                 _%hd251627251677%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g251619251692%_))
                                                (_%__kont253416253417%_
                                                 _%g251617251690%_
                                                 _%g251618251691%_
                                                 _%g251619251692%_)
                                                (_%__kont253420253421%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx253414253415%_))
                                      (let ((_%e251620251658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx253414253415%_))))
                                        (let ((_%tl251622251663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251620251658%_)))
                                              (_%hd251621251661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251620251658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd251621251661%_))
                                              (let ((_%e251623251666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd251621251661%_))))
                                                (let ((_%tl251625251671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251623251666%_)))
                                                      (_%hd251624251669%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251623251666%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd251624251669%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd251624251669%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251625251671%_))
                      (let ((_%e251626251674%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251625251671%_))))
                        (let ((_%tl251628251679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251626251674%_)))
                              (_%hd251627251677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251626251674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251628251679%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251622251663%_))
                                  (let ((_%e251629251682%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251622251663%_))))
                                    (let ((_%tl251631251687%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251629251682%_)))
                                          (_%hd251630251685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251629251682%_))))
                                      (_%__match253451253452%_
                                       _%e251620251658%_
                                       _%hd251621251661%_
                                       _%tl251622251663%_
                                       _%e251623251666%_
                                       _%hd251624251669%_
                                       _%tl251625251671%_
                                       _%e251626251674%_
                                       _%hd251627251677%_
                                       _%tl251628251679%_
                                       _%e251629251682%_
                                       _%hd251630251685%_
                                       _%tl251631251687%_)))
                                  (_%__kont253420253421%_))
                              (_%__kont253420253421%_))))
                      (_%__kont253420253421%_))
                  (_%__kont253420253421%_))
              (_%__kont253420253421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont253420253421%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251613251653%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self251324%_ _%ctx251325%_ _%stx251326%_ _%args251327%_)
        (let* ((_%self251330%_ _%self251324%_)
               (_%arguments-ok?251340%_
                (let ((__method253895
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251330%_ 'check-arguments))))
                  (if __method253895
                      (let ()
                        (declare (not safe))
                        (__method253895
                         _%self251330%_
                         _%ctx251325%_
                         _%stx251326%_
                         _%args251327%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251330%_
                                 'check-arguments))
                        '#!void))))
               (_%g251342251352%_
                (lambda (_%g251343251349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251343251349%_))))
               (_%g251341251416%_
                (lambda (_%g251343251355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251343251355%_))
                      (let ((_%e251345251357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251343251355%_))))
                        (let ((_%hd251346251360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251345251357%_)))
                              (_%tl251347251362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251345251357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251347251362%_))
                              ((lambda (_%g251344251365%_)
                                 (let* ((_%klass251378%_
                                         (let ((__tmp253952
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251330%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251326%_
                                            __tmp253952)))
                                        (_%field251380%_
                                         (let ((__tmp253953
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251330%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass251378%_
                                            __tmp253953)))
                                        (_%object251382%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx251325%_
                                            _%g251344251365%_)))
                                        (_%klass251385%_ _%klass251378%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass251385%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp253954
                                              (cons (if (or _%arguments-ok?251340%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251330%_
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
                                 _%self251330%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field251380%_ '()))
                        (cons _%object251382%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253954
                                          _%stx251326%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251385%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp253955
                                                  (cons (if (or _%arguments-ok?251340%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251330%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251330%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251380%_ '()))
                            (cons _%object251382%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253955
                                              _%stx251326%_))
                                           (let ((_%$e251404%_
                                                  (let ((__tmp253956
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251330%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass251385%_
                                                     __tmp253956))))
                                             (if _%$e251404%_
                                                 ((lambda (_%klass251407%_)
                                                    (let ((__tmp253957
                                                           (cons (if (or _%arguments-ok?251340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251330%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self251330%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field251380%_ '()))
                                     (cons _%object251382%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp253957 _%stx251326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e251404%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self251330%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp253958
                                                            (let ((_%$obj251413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp253959
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp253959))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj251413%_ '())
                                              (cons _%object251382%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass251385%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj251413%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251330%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251380%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251413%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?251340%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj251413%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251330%_
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
                                                             _%self251330%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj251413%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self251330%_
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
               (gxc#xform-wrap-source __tmp253958 _%stx251326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp253960
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object251382%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251330%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp253960 _%stx251326%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd251346251360%_)
                              (_%g251342251352%_ _%g251343251355%_))))
                      (_%g251342251352%_ _%g251343251355%_)))))
          (_%g251341251416%_ _%args251327%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass253182 __method-table253183)
        (let ((__check-arguments253184
               (let ((__tmp253961
                      (lambda ()
                        (let ((__method253185
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253183
                                  'check-arguments
                                  '#f))))
                          (if __method253185
                              __method253185
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp253961)))
              (__slot253186
               (let ((__slot253187
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass253182 'slot))))
                 (if __slot253187
                     __slot253187
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self251324%_ _%ctx251325%_ _%stx251326%_ _%args251327%_)
            (let* ((_%self251330%_ _%self251324%_)
                   (_%arguments-ok?251340%_
                    ((force __check-arguments253184)
                     _%self251330%_
                     _%ctx251325%_
                     _%stx251326%_
                     _%args251327%_))
                   (_%g251342251352%_
                    (lambda (_%g251343251349%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251343251349%_))))
                   (_%g251341251416%_
                    (lambda (_%g251343251355%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251343251355%_))
                          (let ((_%e251345251357%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251343251355%_))))
                            (let ((_%hd251346251360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251345251357%_)))
                                  (_%tl251347251362%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251345251357%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251347251362%_))
                                  ((lambda (_%g251344251365%_)
                                     (let* ((_%klass251378%_
                                             (let ((__tmp253962
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251330%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx251326%_
                                                __tmp253962)))
                                            (_%field251380%_
                                             (let ((__tmp253963
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251330%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass251378%_
                                                __tmp253963)))
                                            (_%object251382%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx251325%_
                                                _%g251344251365%_)))
                                            (_%klass251385%_ _%klass251378%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251385%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp253964
                                                  (cons (if (or _%arguments-ok?251340%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251330%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251330%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251380%_ '()))
                            (cons _%object251382%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253964
                                              _%stx251326%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251385%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253965
                                                      (cons (if (or _%arguments-ok?251340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251330%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251330%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251380%_ '()))
                                (cons _%object251382%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253965
                                                  _%stx251326%_))
                                               (let ((_%$e251404%_
                                                      (let ((__tmp253966
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self251330%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass251385%_ __tmp253966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e251404%_
                                                     ((lambda (_%klass251407%_)
                                                        (let ((__tmp253967
                                                               (cons (if (or _%arguments-ok?251340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251330%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self251330%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field251380%_ '()))
                                         (cons _%object251382%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253967 _%stx251326%_)))
              _%$e251404%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251330%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp253968
                                                                (let ((_%$obj251413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253969
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253969))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj251413%_ '())
                                                  (cons _%object251382%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass251385%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj251413%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251330%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251380%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj251413%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?251340%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251413%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251330%_
                               __slot253186
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
                        (##unchecked-structure-ref _%self251330%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj251413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251330%_
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
                   (gxc#xform-wrap-source __tmp253968 _%stx251326%_))
                 (let ((__tmp253970
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object251382%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251330%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp253970 _%stx251326%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd251346251360%_)
                                  (_%g251342251352%_ _%g251343251355%_))))
                          (_%g251342251352%_ _%g251343251355%_)))))
              (_%g251341251416%_ _%args251327%_))))))
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
      (lambda (_%self251088%_ _%ctx251089%_ _%stx251090%_ _%args251091%_)
        (let* ((_%self251094%_ _%self251088%_)
               (_%arguments-ok?251104%_
                (let ((__method253896
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251094%_ 'check-arguments))))
                  (if __method253896
                      (let ()
                        (declare (not safe))
                        (__method253896
                         _%self251094%_
                         _%ctx251089%_
                         _%stx251090%_
                         _%args251091%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251094%_
                                 'check-arguments))
                        '#!void))))
               (_%g251106251120%_
                (lambda (_%g251107251117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251107251117%_))))
               (_%g251105251199%_
                (lambda (_%g251107251123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251107251123%_))
                      (let ((_%e251110251125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251107251123%_))))
                        (let ((_%hd251111251128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251110251125%_)))
                              (_%tl251112251130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251110251125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251112251130%_))
                              (let ((_%e251113251133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251112251130%_))))
                                (let ((_%hd251114251136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251113251133%_)))
                                      (_%tl251115251138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251113251133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251115251138%_))
                                      ((lambda (_%g251108251141%_
                                                _%g251109251142%_)
                                         (let* ((_%klass251158%_
                                                 (let ((__tmp253971
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251094%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx251090%_
                                                    __tmp253971)))
                                                (_%field251160%_
                                                 (let ((__tmp253972
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251094%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass251158%_
                                                    __tmp253972)))
                                                (_%object251162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251089%_
                                                    _%g251109251142%_)))
                                                (_%value251164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251089%_
                                                    _%g251108251141%_)))
                                                (_%klass251167%_
                                                 _%klass251158%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251167%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253973
                                                      (cons (if (or _%arguments-ok?251104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251094%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251094%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251160%_ '()))
                                (cons _%object251162%_
                                      (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253973
                                                  _%stx251090%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251167%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp253974
                                                          (cons (if (or _%arguments-ok?251104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251094%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251094%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251160%_ '()))
                                    (cons _%object251162%_
                                          (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp253974
                                                      _%stx251090%_))
                                                   (let ((_%$e251187%_
                                                          (let ((__tmp253975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251094%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass251167%_
                     __tmp253975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e251187%_
                                                         ((lambda (_%klass251190%_)
                                                            (let ((__tmp253976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?251104%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251094%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self251094%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field251160%_ '()))
                                             (cons _%object251162%_
                                                   (cons _%value251164%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253976 _%stx251090%_)))
                  _%$e251187%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self251094%_ '4 '#f '#f))
                     (let ((__tmp253977
                            (let ((_%$obj251196%_
                                   (let ((__tmp253978
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp253978))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj251196%_ '())
                                                      (cons _%object251162%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass251167%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj251196%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251094%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field251160%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251196%_
                                                              '()))
                                                  (cons _%value251164%_
                                                        '())))))
                          (cons (if _%arguments-ok?251104%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self251094%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value251164%_ '())))))
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
                             _%self251094%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj251196%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251094%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253977 _%stx251090%_))
                     (let ((__tmp253979
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object251162%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251094%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value251164%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp253979
                        _%stx251090%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd251114251136%_
                                       _%hd251111251128%_)
                                      (_%g251106251120%_ _%g251107251123%_))))
                              (_%g251106251120%_ _%g251107251123%_))))
                      (_%g251106251120%_ _%g251107251123%_)))))
          (_%g251105251199%_ _%args251091%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass253188 __method-table253189)
        (let ((__check-arguments253190
               (let ((__tmp253980
                      (lambda ()
                        (let ((__method253191
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253189
                                  'check-arguments
                                  '#f))))
                          (if __method253191
                              __method253191
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp253980))))
          (lambda (_%self251088%_ _%ctx251089%_ _%stx251090%_ _%args251091%_)
            (let* ((_%self251094%_ _%self251088%_)
                   (_%arguments-ok?251104%_
                    ((force __check-arguments253190)
                     _%self251094%_
                     _%ctx251089%_
                     _%stx251090%_
                     _%args251091%_))
                   (_%g251106251120%_
                    (lambda (_%g251107251117%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251107251117%_))))
                   (_%g251105251199%_
                    (lambda (_%g251107251123%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251107251123%_))
                          (let ((_%e251110251125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251107251123%_))))
                            (let ((_%hd251111251128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251110251125%_)))
                                  (_%tl251112251130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251110251125%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251112251130%_))
                                  (let ((_%e251113251133%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251112251130%_))))
                                    (let ((_%hd251114251136%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251113251133%_)))
                                          (_%tl251115251138%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251113251133%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251115251138%_))
                                          ((lambda (_%g251108251141%_
                                                    _%g251109251142%_)
                                             (let* ((_%klass251158%_
                                                     (let ((__tmp253981
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251094%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx251090%_
                                                        __tmp253981)))
                                                    (_%field251160%_
                                                     (let ((__tmp253982
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251094%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass251158%_
                                                        __tmp253982)))
                                                    (_%object251162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251089%_
                                                        _%g251109251142%_)))
                                                    (_%value251164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251089%_
                                                        _%g251108251141%_)))
                                                    (_%klass251167%_
                                                     _%klass251158%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251167%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp253983
                                                          (cons (if (or _%arguments-ok?251104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251094%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251094%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251160%_ '()))
                                    (cons _%object251162%_
                                          (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp253983
                                                      _%stx251090%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass251167%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp253984
                                                              (cons (if (or _%arguments-ok?251104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self251094%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251094%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251160%_ '()))
                                        (cons _%object251162%_
                                              (cons _%value251164%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp253984 _%stx251090%_))
               (let ((_%$e251187%_
                      (let ((__tmp253985
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251094%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass251167%_
                         __tmp253985))))
                 (if _%$e251187%_
                     ((lambda (_%klass251190%_)
                        (let ((__tmp253986
                               (cons (if (or _%arguments-ok?251104%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251094%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251094%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field251160%_
                                                             '()))
                                                 (cons _%object251162%_
                                                       (cons _%value251164%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp253986 _%stx251090%_)))
                      _%$e251187%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251094%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp253987
                                (let ((_%$obj251196%_
                                       (let ((__tmp253988
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp253988))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj251196%_
                                                                '())
                                                          (cons _%object251162%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass251167%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251196%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self251094%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field251160%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value251164%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?251104%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj251196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251094%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value251164%_ '())))))
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
                                 _%self251094%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj251196%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251094%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp253987 _%stx251090%_))
                         (let ((__tmp253989
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object251162%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251094%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value251164%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp253989
                            _%stx251090%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd251114251136%_
                                           _%hd251111251128%_)
                                          (_%g251106251120%_
                                           _%g251107251123%_))))
                                  (_%g251106251120%_ _%g251107251123%_))))
                          (_%g251106251120%_ _%g251107251123%_)))))
              (_%g251105251199%_ _%args251091%_))))))
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
      (lambda (_%self250904%_ _%ctx250905%_ _%stx250906%_ _%args250907%_)
        (let* ((_%self250910%_ _%self250904%_)
               (_%self250919250929%_ _%self250910%_)
               (_%E250921250932%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self250919250929%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K250922250942%_
                (lambda (_%inline250935%_ _%dispatch250936%_ _%arity250937%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self250910%_
                         _%args250907%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx250906%_
                         _%arity250937%_)))
                  (if _%inline250935%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp253990 (_%inline250935%_ _%stx250906%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp253990
                           _%stx250906%_
                           _%ctx250905%_)))
                      (if (and _%dispatch250936%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch250936%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch250936%_))
                            (let ((__tmp253991
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch250936%_
                                                           '()))
                                               _%args250907%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp253991
                               _%stx250906%_
                               _%ctx250905%_)))
                          (gxc#!procedure::optimize-call
                           _%self250910%_
                           _%ctx250905%_
                           _%stx250906%_
                           _%args250907%_)))))
               (_%e250923250945%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250919250929%_ '1 '#f '#f)))
               (_%e250924250948%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250919250929%_ '2 '#f '#f)))
               (_%e250925250951%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250919250929%_ '3 '#f '#f)))
               (_%arity250954%_ _%e250925250951%_)
               (_%e250926250956%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250919250929%_ '4 '#f '#f)))
               (_%dispatch250959%_ _%e250926250956%_)
               (_%e250927250961%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250919250929%_ '5 '#f '#f)))
               (_%inline250964%_ _%e250927250961%_))
          (_%K250922250942%_
           _%inline250964%_
           _%dispatch250959%_
           _%arity250954%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self250756%_ _%ctx250757%_ _%stx250758%_ _%args250759%_)
        (let* ((_%self250762%_ _%self250756%_)
               (_%$e250776%_
                (let ((__tmp253993
                       (lambda (_%g250771250773%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g250771250773%_
                            _%args250759%_))))
                      (__tmp253992
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self250762%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp253993 __tmp253992))))
          (if _%$e250776%_
              ((lambda (_%clause250779%_)
                 (let ((__method253897
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause250779%_ 'optimize-call))))
                   (if __method253897
                       (let ()
                         (declare (not safe))
                         (__method253897
                          _%clause250779%_
                          _%ctx250757%_
                          _%stx250758%_
                          _%args250759%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause250779%_
                                  'optimize-call))
                         '#!void))))
               _%$e250776%_)
              (let ((__tmp253994
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self250762%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx250758%_
                 __tmp253994))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self250497%_ _%ctx250498%_ _%stx250499%_ _%args250500%_)
        (let* ((_%self250503%_ _%self250497%_)
               (_%self250512250521%_ _%self250503%_)
               (_%E250514250524%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self250512250521%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K250515250615%_
                (lambda (_%dispatch250527%_ _%table250528%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch250527%_))
                      (let* ((_%g250529250539%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch250527%_)))
                             (_%else250531250547%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch250527%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx250498%_
                                   _%stx250499%_))))
                             (_%K250533250596%_
                              (lambda (_%main250550%_ _%keys250551%_)
                                (let ((_g253995_
                                       (gxc#!kw-lambda-split-args
                                        _%stx250499%_
                                        _%args250500%_)))
                                  (begin
                                    (let ((_g253996_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g253995_)
                                                 (##values-length _g253995_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g253996_ 2)))
                                          (error "Context expects 2 values"
                                                 _g253996_)))
                                    (let ((_%pargs250553%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g253995_ 0)))
                                          (_%kwargs250554%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g253995_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main250550%_))
                                        (if _%table250528%_
                                            (let ((_%xargs250562%_
                                                   (map (lambda (_%key250556%_)
                                                          (let ((_%$e250558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key250556%_ _%kwargs250554%_))))
                    (if _%$e250558%_ _%$e250558%_ '(%#ref absent-value))))
                _%keys250551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw250564%_)
                                                 (if (memq (car _%kw250564%_)
                                                           _%keys250551%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx250499%_
                                                        _%keys250551%_
                                                        _%kw250564%_))))
                                               _%kwargs250554%_)
                                              (let ((__tmp253997
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main250550%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs250553%_
                                  _%xargs250562%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp253997
                                                 _%stx250499%_
                                                 _%ctx250498%_)))
                                            (let* ((_%kwt250566%_
                                                    (let ((__tmp253998
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253998)))
                                                   (_%kwvars250570%_
                                                    (map (lambda (_%_250568%_)
                                                           (let ((__tmp253999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp253999)))
                 _%kwargs250554%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind250575%_
                                                    (map (lambda (_%kw250572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250573%_)
                   (cons (cons _%kwvar250573%_ '())
                         (cons (cdr _%kw250572%_) '())))
                 _%kwargs250554%_
                 _%kwvars250570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset250580%_
                                                    (map (lambda (_%kw250577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250578%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt250566%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw250577%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar250578%_
                                                             '()))
                                                 '()))))))
                 _%kwargs250554%_
                 _%kwvars250570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs250585%_
                                                    (map (lambda (_%kw250582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250583%_)
                   (cons (car _%kw250582%_)
                         (cons '%#ref (cons _%kwvar250583%_ '()))))
                 _%kwargs250554%_
                 _%kwvars250570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs250593%_
                                                    (map (lambda (_%key250587%_)
                                                           (let ((_%$e250589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key250587%_ _%xkwargs250585%_))))
                     (if _%$e250589%_ _%$e250589%_ '(%#ref absent-value))))
                 _%keys250551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp254000
                                                    (cons '%#let-values
                                                          (cons _%kwbind250575%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt250566%_ '())
                                                      (cons (let ((__tmp254001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs250554%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254001 _%stx250499%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp254002
                                                             (cons (let ((__tmp254003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main250550%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt250566%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs250553%_
                                                       _%xargs250593%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp254003 _%stx250499%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp254002 _%kwset250580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp254000
                                               _%stx250499%_
                                               _%ctx250498%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g250529250539%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e250534250599%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250529250539%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e250535250602%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250529250539%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e250536250605%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250529250539%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys250608%_ _%e250536250605%_)
                                   (_%e250537250610%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250529250539%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main250613%_ _%e250537250610%_))
                              (_%K250533250596%_
                               _%main250613%_
                               _%keys250608%_))
                            (_%else250531250547%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx250498%_ _%stx250499%_)))))
               (_%e250516250618%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250512250521%_ '1 '#f '#f)))
               (_%e250517250621%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250512250521%_ '2 '#f '#f)))
               (_%e250518250624%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250512250521%_ '3 '#f '#f)))
               (_%table250627%_ _%e250518250624%_)
               (_%e250519250629%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250512250521%_ '4 '#f '#f)))
               (_%dispatch250632%_ _%e250519250629%_))
          (_%K250515250615%_ _%dispatch250632%_ _%table250627%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx250110%_ _%args250111%_)
        (let _%lp250113%_ ((_%rest250115%_ _%args250111%_)
                           (_%pargs250116%_ '())
                           (_%kwargs250117%_ '()))
          (let* ((_%__stx253456253457%_ _%rest250115%_)
                 (_%g250123250175%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx253456253457%_)))))
            (let ((_%__kont253458253459%_
                   (lambda (_%g250125250354%_ _%g250126250355%_)
                     (_%lp250113%_
                      _%g250125250354%_
                      (cons _%g250126250355%_ _%pargs250116%_)
                      _%kwargs250117%_)))
                  (_%__kont253460253461%_
                   (lambda (_%g250140250300%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g250140250300%_
                                _%pargs250116%_))
                             (reverse _%kwargs250117%_))))
                  (_%__kont253462253463%_
                   (lambda (_%g250151250247%_
                            _%g250152250248%_
                            _%g250153250249%_)
                     (let ((_%kw250266%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g250153250249%_))))
                       (if (assq _%kw250266%_ _%kwargs250117%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx250110%_
                              _%kw250266%_))
                           (_%lp250113%_
                            _%g250151250247%_
                            _%pargs250116%_
                            (cons (cons _%kw250266%_ _%g250152250248%_)
                                  _%kwargs250117%_))))))
                  (_%__kont253464253465%_
                   (lambda (_%g250166250195%_ _%g250167250196%_)
                     (_%lp250113%_
                      _%g250166250195%_
                      (cons _%g250167250196%_ _%pargs250116%_)
                      _%kwargs250117%_)))
                  (_%__kont253466253467%_
                   (lambda ()
                     (values (reverse _%pargs250116%_)
                             (reverse _%kwargs250117%_)))))
              (let ((_%__match253563253564%_
                     (lambda (_%e250154250215%_
                              _%hd250155250218%_
                              _%tl250156250220%_
                              _%e250157250223%_
                              _%hd250158250226%_
                              _%tl250159250228%_
                              _%e250160250231%_
                              _%hd250161250234%_
                              _%tl250162250236%_
                              _%e250163250239%_
                              _%hd250164250242%_
                              _%tl250165250244%_)
                       (let ((_%g250151250247%_ _%tl250165250244%_)
                             (_%g250152250248%_ _%hd250164250242%_)
                             (_%g250153250249%_ _%hd250161250234%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g250153250249%_))
                             (_%__kont253462253463%_
                              _%g250151250247%_
                              _%g250152250248%_
                              _%g250153250249%_)
                             (_%__kont253464253465%_
                              _%tl250156250220%_
                              _%hd250155250218%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx253456253457%_))
                    (let ((_%e250127250319%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx253456253457%_))))
                      (let ((_%tl250129250324%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250127250319%_)))
                            (_%hd250128250322%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250127250319%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd250128250322%_))
                            (let ((_%e250130250327%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd250128250322%_))))
                              (let ((_%tl250132250332%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e250130250327%_)))
                                    (_%hd250131250330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e250130250327%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd250131250330%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd250131250330%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl250132250332%_))
                                            (let ((_%e250133250335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl250132250332%_))))
                                              (let ((_%tl250135250340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e250133250335%_)))
                                                    (_%hd250134250338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e250133250335%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd250134250338%_))
                                                    (let ((_%e250136250343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd250134250338%_))))
                                                      (if (equal? _%e250136250343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250135250340%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250129250324%_))
                          (let ((_%e250137250346%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250129250324%_))))
                            (let ((_%tl250139250351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250137250346%_)))
                                  (_%hd250138250349%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250137250346%_))))
                              (_%__kont253458253459%_
                               _%tl250139250351%_
                               _%hd250138250349%_)))
                          (_%__kont253464253465%_
                           _%tl250129250324%_
                           _%hd250128250322%_))
                      (_%__kont253464253465%_
                       _%tl250129250324%_
                       _%hd250128250322%_))
                  (if (equal? _%e250136250343%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250135250340%_))
                          (_%__kont253460253461%_ _%tl250129250324%_)
                          (_%__kont253464253465%_
                           _%tl250129250324%_
                           _%hd250128250322%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250135250340%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250129250324%_))
                              (let ((_%e250163250239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250129250324%_))))
                                (let ((_%tl250165250244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250163250239%_)))
                                      (_%hd250164250242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250163250239%_))))
                                  (_%__match253563253564%_
                                   _%e250127250319%_
                                   _%hd250128250322%_
                                   _%tl250129250324%_
                                   _%e250130250327%_
                                   _%hd250131250330%_
                                   _%tl250132250332%_
                                   _%e250133250335%_
                                   _%hd250134250338%_
                                   _%tl250135250340%_
                                   _%e250163250239%_
                                   _%hd250164250242%_
                                   _%tl250165250244%_)))
                              (_%__kont253464253465%_
                               _%tl250129250324%_
                               _%hd250128250322%_))
                          (_%__kont253464253465%_
                           _%tl250129250324%_
                           _%hd250128250322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250135250340%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl250129250324%_))
                                                            (let ((_%e250163250239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl250129250324%_))))
                      (let ((_%tl250165250244%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250163250239%_)))
                            (_%hd250164250242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250163250239%_))))
                        (_%__match253563253564%_
                         _%e250127250319%_
                         _%hd250128250322%_
                         _%tl250129250324%_
                         _%e250130250327%_
                         _%hd250131250330%_
                         _%tl250132250332%_
                         _%e250133250335%_
                         _%hd250134250338%_
                         _%tl250135250340%_
                         _%e250163250239%_
                         _%hd250164250242%_
                         _%tl250165250244%_)))
                    (_%__kont253464253465%_
                     _%tl250129250324%_
                     _%hd250128250322%_))
                (_%__kont253464253465%_
                 _%tl250129250324%_
                 _%hd250128250322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont253464253465%_
                                             _%tl250129250324%_
                                             _%hd250128250322%_))
                                        (_%__kont253464253465%_
                                         _%tl250129250324%_
                                         _%hd250128250322%_))
                                    (_%__kont253464253465%_
                                     _%tl250129250324%_
                                     _%hd250128250322%_))))
                            (_%__kont253464253465%_
                             _%tl250129250324%_
                             _%hd250128250322%_))))
                    (_%__kont253466253467%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self250094%_ _%ctx250095%_ _%stx250096%_ _%args250097%_)
        (let ((_%self250100%_ _%self250094%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx250095%_ _%stx250096%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self249784%_ _%stx249785%_)
        (let* ((_%__stx253572253573%_ _%stx249785%_)
               (_%g249788249828%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253572253573%_)))))
          (let ((_%__kont253574253575%_
                 (lambda (_%g249790249932%_ _%g249791249933%_)
                   (let ((_%$e249960%_
                          (member 'return:
                                  (let ((__tmp254004
                                         (lambda (_%g249952249955%_
                                                  _%g249953249957%_)
                                           (cons _%g249952249955%_
                                                 _%g249953249957%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp254004
                                     '()
                                     _%g249791249933%_))
                                  gx#stx-eq?)))
                     (if _%$e249960%_
                         ((lambda (_%tail249963%_)
                            (let ((_%type249965%_
                                   (let ((__tmp254005
                                          (let ((__tmp254006
                                                 (cadr _%tail249963%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp254006))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx249785%_
                                      __tmp254005))))
                              (gxc#check-return-type!
                               _%stx249785%_
                               _%g249790249932%_
                               _%type249965%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self249784%_
                                 _%g249790249932%_))))
                          _%$e249960%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self249784%_
                            _%g249790249932%_))))))
                (_%__kont253578253579%_
                 (lambda (_%g249813249857%_ _%g249814249858%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self249784%_ _%g249813249857%_)))))
            (let ((_%__match253609253610%_
                   (lambda (_%e249792249878%_
                            _%hd249793249881%_
                            _%tl249794249883%_
                            _%e249795249886%_
                            _%hd249796249889%_
                            _%tl249797249891%_
                            _%e249798249894%_
                            _%hd249799249897%_
                            _%tl249800249899%_
                            _%__splice253576253577%_
                            _%target249801249902%_
                            _%tl249803249904%_)
                     (letrec ((_%loop249804249907%_
                               (lambda (_%hd249802249910%_
                                        _%signature249808249912%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd249802249910%_))
                                     (let ((_%e249805249914%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd249802249910%_))))
                                       (let ((_%lp-tl249807249919%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e249805249914%_)))
                                             (_%lp-hd249806249917%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e249805249914%_))))
                                         (_%loop249804249907%_
                                          _%lp-tl249807249919%_
                                          (cons _%lp-hd249806249917%_
                                                _%signature249808249912%_))))
                                     (let ((_%signature249809249922%_
                                            (reverse _%signature249808249912%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl249797249891%_))
                                           (let ((_%e249810249924%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl249797249891%_))))
                                             (let ((_%tl249812249929%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e249810249924%_)))
                                                   (_%hd249811249927%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e249810249924%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl249812249929%_))
                                                   (_%__kont253574253575%_
                                                    _%hd249811249927%_
                                                    _%signature249809249922%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g249788249828%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g249788249828%_))))))))
                       (_%loop249804249907%_ _%target249801249902%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253572253573%_))
                  (let ((_%e249792249878%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253572253573%_))))
                    (let ((_%tl249794249883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249792249878%_)))
                          (_%hd249793249881%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249792249878%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249794249883%_))
                          (let ((_%e249795249886%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249794249883%_))))
                            (let ((_%tl249797249891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249795249886%_)))
                                  (_%hd249796249889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249795249886%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249796249889%_))
                                  (let ((_%e249798249894%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249796249889%_))))
                                    (let ((_%tl249800249899%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249798249894%_)))
                                          (_%hd249799249897%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249798249894%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249799249897%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd249799249897%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl249800249899%_))
                                                  (let ((_%__splice253576253577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl249800249899%_
                                                            '0))))
                                                    (let ((_%tl249803249904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253576253577%_
                                                              '1)))
                                                          (_%target249801249902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253576253577%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249803249904%_))
                                                          (_%__match253609253610%_
                                                           _%e249792249878%_
                                                           _%hd249793249881%_
                                                           _%tl249794249883%_
                                                           _%e249795249886%_
                                                           _%hd249796249889%_
                                                           _%tl249797249891%_
                                                           _%e249798249894%_
                                                           _%hd249799249897%_
                                                           _%tl249800249899%_
                                                           _%__splice253576253577%_
                                                           _%target249801249902%_
                                                           _%tl249803249904%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249797249891%_))
                      (let ((_%e249821249849%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249797249891%_))))
                        (let ((_%tl249823249854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249821249849%_)))
                              (_%hd249822249852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249821249849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249823249854%_))
                              (_%__kont253578253579%_
                               _%hd249822249852%_
                               _%hd249796249889%_)
                              (let ()
                                (declare (not safe))
                                (_%g249788249828%_)))))
                      (let () (declare (not safe)) (_%g249788249828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249797249891%_))
                                                      (let ((_%e249821249849%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249797249891%_))))
                (let ((_%tl249823249854%_
                       (let () (declare (not safe)) (##cdr _%e249821249849%_)))
                      (_%hd249822249852%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249821249849%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249823249854%_))
                      (_%__kont253578253579%_
                       _%hd249822249852%_
                       _%hd249796249889%_)
                      (let () (declare (not safe)) (_%g249788249828%_)))))
              (let () (declare (not safe)) (_%g249788249828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249797249891%_))
                                                  (let ((_%e249821249849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249797249891%_))))
                                                    (let ((_%tl249823249854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249821249849%_)))
                                                          (_%hd249822249852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249821249849%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249823249854%_))
                                                          (_%__kont253578253579%_
                                                           _%hd249822249852%_
                                                           _%hd249796249889%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249788249828%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249788249828%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249797249891%_))
                                              (let ((_%e249821249849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249797249891%_))))
                                                (let ((_%tl249823249854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249821249849%_)))
                                                      (_%hd249822249852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249821249849%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249823249854%_))
                                                      (_%__kont253578253579%_
                                                       _%hd249822249852%_
                                                       _%hd249796249889%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249788249828%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249788249828%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249797249891%_))
                                      (let ((_%e249821249849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249797249891%_))))
                                        (let ((_%tl249823249854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249821249849%_)))
                                              (_%hd249822249852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249821249849%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249823249854%_))
                                              (_%__kont253578253579%_
                                               _%hd249822249852%_
                                               _%hd249796249889%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g249788249828%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249788249828%_))))))
                          (let () (declare (not safe)) (_%g249788249828%_)))))
                  (let () (declare (not safe)) (_%g249788249828%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx249759%_ _%expr249760%_ _%type249761%_)
        (let ((_%$e249763%_ (not _%type249761%_)))
          (if _%$e249763%_
              _%$e249763%_
              (let ((_%$e249766%_
                     (eq? (##structure-ref _%type249761%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e249766%_
                    _%$e249766%_
                    (let ((_%$e249769%_
                           (eq? (##structure-ref
                                 _%type249761%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e249769%_
                          _%$e249769%_
                          (let ((_%expr-type249773%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr249760%_))))
                            (if (not _%expr-type249773%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx249759%_
                                   _%type249761%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type249773%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx249759%_
                                       _%type249761%_
                                       _%expr-type249773%_))
                                    (let ((_%$e249777%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type249773%_
                                              'gxc#!abort::t))))
                                      (if _%$e249777%_
                                          _%$e249777%_
                                          (let ((_%$e249780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type249773%_
                                                    _%type249761%_))))
                                            (if _%$e249780%_
                                                _%$e249780%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx249759%_
                                                   _%type249761%_
                                                   _%expr-type249773%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self249185%_ _%stx249186%_)
        (let* ((_%__stx253654253655%_ _%stx249186%_)
               (_%g249191249301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253654253655%_)))))
          (let ((_%__kont253656253657%_
                 (lambda (_%g249193249733%_
                          _%g249194249734%_
                          _%g249195249735%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g249195249735%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self249185%_ _%g249194249734%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self249185%_
                          _%g249193249733%_)))))
                (_%__kont253658253659%_
                 (lambda (_%g249214249559%_
                          _%g249215249560%_
                          _%g249216249561%_
                          _%g249217249562%_)
                   (let ((_%$e249594%_
                          (let ((__tmp254007
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249217249562%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp254007))))
                     (if _%$e249594%_
                         ((lambda (_%pred-type249597%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type249597%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type249597%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test249602%_
                                        (let ((__tmp254008
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g249217249562%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g249216249561%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp254008
                                           _%stx249186%_
                                           _%self249185%_)))
                                       (_%K249606%_
                                        (let ((__tmp254009
                                               (lambda ()
                                                 (let ((__tmp254012
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self249185%_
                                                             _%g249215249560%_))))
                                                       (__tmp254010
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g249216249561%_))
                            (let ((__tmp254011
                                   (##structure-ref
                                    _%pred-type249597%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx249186%_
                               __tmp254011)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp254012
                                                    gxc#current-compile-path-type
                                                    __tmp254010)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254009)))
                                       (_%E249609%_
                                        (let ((__tmp254013
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self249185%_
                                                    _%g249214249559%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254013)))
                                       (_%__stx253632253633%_ _%test249602%_)
                                       (_%g249613249627%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx253632253633%_)))))
                                  (let ((_%__kont253634253635%_
                                         (lambda (_%g249615249655%_
                                                  _%g249616249656%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g249615249655%_))
                                               (force _%K249606%_)
                                               (force _%E249609%_))))
                                        (_%__kont253636253637%_
                                         (lambda ()
                                           (let ((__tmp254014
                                                  (cons '%#if
                                                        (cons _%test249602%_
                                                              (cons (force _%K249606%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E249609%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254014
                                              _%stx249186%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx253632253633%_))
                                        (let ((_%e249617249639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx253632253633%_))))
                                          (let ((_%tl249619249644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e249617249639%_)))
                                                (_%hd249618249642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e249617249639%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl249619249644%_))
                                                (let ((_%e249620249647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl249619249644%_))))
                                                  (let ((_%tl249622249652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e249620249647%_)))
                                                        (_%hd249621249650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e249620249647%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl249622249652%_))
                                                        (_%__kont253634253635%_
                                                         _%hd249621249650%_
                                                         _%hd249618249642%_)
                                                        (_%__kont253636253637%_))))
                                                (_%__kont253636253637%_))))
                                        (_%__kont253636253637%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self249185%_
                                   _%stx249186%_))))
                          _%$e249594%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self249185%_
                            _%stx249186%_))))))
                (_%__kont253660253661%_
                 (lambda (_%g249251249435%_
                          _%g249252249436%_
                          _%g249253249437%_
                          _%g249254249438%_)
                   (gxc#optimize-if%
                    _%self249185%_
                    (let ((__tmp254015
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g249253249437%_
                                       (cons _%g249251249435%_
                                             (cons _%g249252249436%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254015 _%stx249186%_)))))
                (_%__kont253662253663%_
                 (lambda (_%g249282249338%_
                          _%g249283249339%_
                          _%g249284249340%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self249185%_ _%stx249186%_)))))
            (let ((_%__match253861253862%_
                   (lambda (_%e249255249363%_
                            _%hd249256249366%_
                            _%tl249257249368%_
                            _%e249258249371%_
                            _%hd249259249374%_
                            _%tl249260249376%_
                            _%e249261249379%_
                            _%hd249262249382%_
                            _%tl249263249384%_
                            _%e249264249387%_
                            _%hd249265249390%_
                            _%tl249266249392%_
                            _%e249267249395%_
                            _%hd249268249398%_
                            _%tl249269249400%_
                            _%e249270249403%_
                            _%hd249271249406%_
                            _%tl249272249408%_
                            _%e249273249411%_
                            _%hd249274249414%_
                            _%tl249275249416%_
                            _%e249276249419%_
                            _%hd249277249422%_
                            _%tl249278249424%_
                            _%e249279249427%_
                            _%hd249280249430%_
                            _%tl249281249432%_)
                     (let ((_%g249251249435%_ _%hd249280249430%_)
                           (_%g249252249436%_ _%hd249277249422%_)
                           (_%g249253249437%_ _%hd249274249414%_)
                           (_%g249254249438%_ _%hd249271249406%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g249254249438%_ 'not))
                           (_%__kont253660253661%_
                            _%g249251249435%_
                            _%g249252249436%_
                            _%g249253249437%_
                            _%g249254249438%_)
                           (_%__kont253662253663%_
                            _%hd249280249430%_
                            _%hd249277249422%_
                            _%hd249259249374%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253654253655%_))
                  (let ((_%e249196249685%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253654253655%_))))
                    (let ((_%tl249198249690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249196249685%_)))
                          (_%hd249197249688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249196249685%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249198249690%_))
                          (let ((_%e249199249693%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249198249690%_))))
                            (let ((_%tl249201249698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249199249693%_)))
                                  (_%hd249200249696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249199249693%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249200249696%_))
                                  (let ((_%e249202249701%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249200249696%_))))
                                    (let ((_%tl249204249706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249202249701%_)))
                                          (_%hd249203249704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249202249701%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249203249704%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd249203249704%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249204249706%_))
                                                  (let ((_%e249205249709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249204249706%_))))
                                                    (let ((_%tl249207249714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249205249709%_)))
                                                          (_%hd249206249712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249205249709%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249207249714%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249201249698%_))
                      (let ((_%e249208249717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249201249698%_))))
                        (let ((_%tl249210249722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249208249717%_)))
                              (_%hd249209249720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249208249717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249210249722%_))
                              (let ((_%e249211249725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249210249722%_))))
                                (let ((_%tl249213249730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249211249725%_)))
                                      (_%hd249212249728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249211249725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249213249730%_))
                                      (_%__kont253656253657%_
                                       _%hd249212249728%_
                                       _%hd249209249720%_
                                       _%hd249206249712%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249191249301%_)))))
                      (let () (declare (not safe)) (_%g249191249301%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249201249698%_))
                      (let ((_%e249291249322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249201249698%_))))
                        (let ((_%tl249293249327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249291249322%_)))
                              (_%hd249292249325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249291249322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249293249327%_))
                              (let ((_%e249294249330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249293249327%_))))
                                (let ((_%tl249296249335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249294249330%_)))
                                      (_%hd249295249333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249294249330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249296249335%_))
                                      (_%__kont253662253663%_
                                       _%hd249295249333%_
                                       _%hd249292249325%_
                                       _%hd249200249696%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249191249301%_)))))
                      (let () (declare (not safe)) (_%g249191249301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249201249698%_))
                                                      (let ((_%e249291249322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249201249698%_))))
                (let ((_%tl249293249327%_
                       (let () (declare (not safe)) (##cdr _%e249291249322%_)))
                      (_%hd249292249325%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249291249322%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249293249327%_))
                      (let ((_%e249294249330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249293249327%_))))
                        (let ((_%tl249296249335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249294249330%_)))
                              (_%hd249295249333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249294249330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249296249335%_))
                              (_%__kont253662253663%_
                               _%hd249295249333%_
                               _%hd249292249325%_
                               _%hd249200249696%_)
                              (let ()
                                (declare (not safe))
                                (_%g249191249301%_)))))
                      (let () (declare (not safe)) (_%g249191249301%_)))))
              (let () (declare (not safe)) (_%g249191249301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd249203249704%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249204249706%_))
                                                      (let ((_%e249227249495%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249204249706%_))))
                (let ((_%tl249229249500%_
                       (let () (declare (not safe)) (##cdr _%e249227249495%_)))
                      (_%hd249228249498%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249227249495%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd249228249498%_))
                      (let ((_%e249230249503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd249228249498%_))))
                        (let ((_%tl249232249508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249230249503%_)))
                              (_%hd249231249506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249230249503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd249231249506%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249231249506%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249232249508%_))
                                      (let ((_%e249233249511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249232249508%_))))
                                        (let ((_%tl249235249516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249233249511%_)))
                                              (_%hd249234249514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249233249511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249235249516%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249229249500%_))
                                                  (let ((_%e249236249519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249229249500%_))))
                                                    (let ((_%tl249238249524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249236249519%_)))
                                                          (_%hd249237249522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249236249519%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd249237249522%_))
                                                          (let ((_%e249239249527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd249237249522%_))))
                    (let ((_%tl249241249532%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249239249527%_)))
                          (_%hd249240249530%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249239249527%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249240249530%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd249240249530%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249241249532%_))
                                  (let ((_%e249242249535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249241249532%_))))
                                    (let ((_%tl249244249540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249242249535%_)))
                                          (_%hd249243249538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249242249535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249244249540%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249238249524%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249201249698%_))
                                                  (let ((_%e249245249543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249201249698%_))))
                                                    (let ((_%tl249247249548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249245249543%_)))
                                                          (_%hd249246249546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249245249543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249247249548%_))
                                                          (let ((_%e249248249551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249247249548%_))))
                    (let ((_%tl249250249556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249248249551%_)))
                          (_%hd249249249554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249248249551%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249250249556%_))
                          (_%__kont253658253659%_
                           _%hd249249249554%_
                           _%hd249246249546%_
                           _%hd249243249538%_
                           _%hd249234249514%_)
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249201249698%_))
                                                  (let ((_%e249291249322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249201249698%_))))
                                                    (let ((_%tl249293249327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249291249322%_)))
                                                          (_%hd249292249325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249291249322%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249293249327%_))
                                                          (let ((_%e249294249330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249293249327%_))))
                    (let ((_%tl249296249335%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249294249330%_)))
                          (_%hd249295249333%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249294249330%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249296249335%_))
                          (_%__kont253662253663%_
                           _%hd249295249333%_
                           _%hd249292249325%_
                           _%hd249200249696%_)
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249238249524%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249201249698%_))
                                                  (let ((_%e249276249419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249201249698%_))))
                                                    (let ((_%tl249278249424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249276249419%_)))
                                                          (_%hd249277249422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249276249419%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249278249424%_))
                                                          (let ((_%e249279249427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249278249424%_))))
                    (let ((_%tl249281249432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249279249427%_)))
                          (_%hd249280249430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249279249427%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249281249432%_))
                          (_%__match253861253862%_
                           _%e249196249685%_
                           _%hd249197249688%_
                           _%tl249198249690%_
                           _%e249199249693%_
                           _%hd249200249696%_
                           _%tl249201249698%_
                           _%e249202249701%_
                           _%hd249203249704%_
                           _%tl249204249706%_
                           _%e249227249495%_
                           _%hd249228249498%_
                           _%tl249229249500%_
                           _%e249230249503%_
                           _%hd249231249506%_
                           _%tl249232249508%_
                           _%e249233249511%_
                           _%hd249234249514%_
                           _%tl249235249516%_
                           _%e249236249519%_
                           _%hd249237249522%_
                           _%tl249238249524%_
                           _%e249276249419%_
                           _%hd249277249422%_
                           _%tl249278249424%_
                           _%e249279249427%_
                           _%hd249280249430%_
                           _%tl249281249432%_)
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249201249698%_))
                                                  (let ((_%e249291249322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249201249698%_))))
                                                    (let ((_%tl249293249327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249291249322%_)))
                                                          (_%hd249292249325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249291249322%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249293249327%_))
                                                          (let ((_%e249294249330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249293249327%_))))
                    (let ((_%tl249296249335%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249294249330%_)))
                          (_%hd249295249333%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249294249330%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249296249335%_))
                          (_%__kont253662253663%_
                           _%hd249295249333%_
                           _%hd249292249325%_
                           _%hd249200249696%_)
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249238249524%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249201249698%_))
                                          (let ((_%e249276249419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249201249698%_))))
                                            (let ((_%tl249278249424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249276249419%_)))
                                                  (_%hd249277249422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249276249419%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249278249424%_))
                                                  (let ((_%e249279249427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249278249424%_))))
                                                    (let ((_%tl249281249432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249279249427%_)))
                                                          (_%hd249280249430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249279249427%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249281249432%_))
                                                          (_%__match253861253862%_
                                                           _%e249196249685%_
                                                           _%hd249197249688%_
                                                           _%tl249198249690%_
                                                           _%e249199249693%_
                                                           _%hd249200249696%_
                                                           _%tl249201249698%_
                                                           _%e249202249701%_
                                                           _%hd249203249704%_
                                                           _%tl249204249706%_
                                                           _%e249227249495%_
                                                           _%hd249228249498%_
                                                           _%tl249229249500%_
                                                           _%e249230249503%_
                                                           _%hd249231249506%_
                                                           _%tl249232249508%_
                                                           _%e249233249511%_
                                                           _%hd249234249514%_
                                                           _%tl249235249516%_
                                                           _%e249236249519%_
                                                           _%hd249237249522%_
                                                           _%tl249238249524%_
                                                           _%e249276249419%_
                                                           _%hd249277249422%_
                                                           _%tl249278249424%_
                                                           _%e249279249427%_
                                                           _%hd249280249430%_
                                                           _%tl249281249432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249191249301%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249201249698%_))
                                          (let ((_%e249291249322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249201249698%_))))
                                            (let ((_%tl249293249327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249291249322%_)))
                                                  (_%hd249292249325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249291249322%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249293249327%_))
                                                  (let ((_%e249294249330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249293249327%_))))
                                                    (let ((_%tl249296249335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249294249330%_)))
                                                          (_%hd249295249333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249294249330%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249296249335%_))
                                                          (_%__kont253662253663%_
                                                           _%hd249295249333%_
                                                           _%hd249292249325%_
                                                           _%hd249200249696%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249191249301%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249238249524%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249201249698%_))
                                      (let ((_%e249276249419%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249201249698%_))))
                                        (let ((_%tl249278249424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249276249419%_)))
                                              (_%hd249277249422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249276249419%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249278249424%_))
                                              (let ((_%e249279249427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249278249424%_))))
                                                (let ((_%tl249281249432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249279249427%_)))
                                                      (_%hd249280249430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249279249427%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249281249432%_))
                                                      (_%__match253861253862%_
                                                       _%e249196249685%_
                                                       _%hd249197249688%_
                                                       _%tl249198249690%_
                                                       _%e249199249693%_
                                                       _%hd249200249696%_
                                                       _%tl249201249698%_
                                                       _%e249202249701%_
                                                       _%hd249203249704%_
                                                       _%tl249204249706%_
                                                       _%e249227249495%_
                                                       _%hd249228249498%_
                                                       _%tl249229249500%_
                                                       _%e249230249503%_
                                                       _%hd249231249506%_
                                                       _%tl249232249508%_
                                                       _%e249233249511%_
                                                       _%hd249234249514%_
                                                       _%tl249235249516%_
                                                       _%e249236249519%_
                                                       _%hd249237249522%_
                                                       _%tl249238249524%_
                                                       _%e249276249419%_
                                                       _%hd249277249422%_
                                                       _%tl249278249424%_
                                                       _%e249279249427%_
                                                       _%hd249280249430%_
                                                       _%tl249281249432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249191249301%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249191249301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249201249698%_))
                                      (let ((_%e249291249322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249201249698%_))))
                                        (let ((_%tl249293249327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249291249322%_)))
                                              (_%hd249292249325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249291249322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249293249327%_))
                                              (let ((_%e249294249330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249293249327%_))))
                                                (let ((_%tl249296249335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249294249330%_)))
                                                      (_%hd249295249333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249294249330%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249296249335%_))
                                                      (_%__kont253662253663%_
                                                       _%hd249295249333%_
                                                       _%hd249292249325%_
                                                       _%hd249200249696%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249191249301%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249191249301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249238249524%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249201249698%_))
                                  (let ((_%e249276249419%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249201249698%_))))
                                    (let ((_%tl249278249424%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249276249419%_)))
                                          (_%hd249277249422%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249276249419%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249278249424%_))
                                          (let ((_%e249279249427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249278249424%_))))
                                            (let ((_%tl249281249432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249279249427%_)))
                                                  (_%hd249280249430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249279249427%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249281249432%_))
                                                  (_%__match253861253862%_
                                                   _%e249196249685%_
                                                   _%hd249197249688%_
                                                   _%tl249198249690%_
                                                   _%e249199249693%_
                                                   _%hd249200249696%_
                                                   _%tl249201249698%_
                                                   _%e249202249701%_
                                                   _%hd249203249704%_
                                                   _%tl249204249706%_
                                                   _%e249227249495%_
                                                   _%hd249228249498%_
                                                   _%tl249229249500%_
                                                   _%e249230249503%_
                                                   _%hd249231249506%_
                                                   _%tl249232249508%_
                                                   _%e249233249511%_
                                                   _%hd249234249514%_
                                                   _%tl249235249516%_
                                                   _%e249236249519%_
                                                   _%hd249237249522%_
                                                   _%tl249238249524%_
                                                   _%e249276249419%_
                                                   _%hd249277249422%_
                                                   _%tl249278249424%_
                                                   _%e249279249427%_
                                                   _%hd249280249430%_
                                                   _%tl249281249432%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249201249698%_))
                                  (let ((_%e249291249322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249201249698%_))))
                                    (let ((_%tl249293249327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249291249322%_)))
                                          (_%hd249292249325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249291249322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249293249327%_))
                                          (let ((_%e249294249330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249293249327%_))))
                                            (let ((_%tl249296249335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249294249330%_)))
                                                  (_%hd249295249333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249294249330%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249296249335%_))
                                                  (_%__kont253662253663%_
                                                   _%hd249295249333%_
                                                   _%hd249292249325%_
                                                   _%hd249200249696%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249238249524%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249201249698%_))
                          (let ((_%e249276249419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249201249698%_))))
                            (let ((_%tl249278249424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249276249419%_)))
                                  (_%hd249277249422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249276249419%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249278249424%_))
                                  (let ((_%e249279249427%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249278249424%_))))
                                    (let ((_%tl249281249432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249279249427%_)))
                                          (_%hd249280249430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249279249427%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249281249432%_))
                                          (_%__match253861253862%_
                                           _%e249196249685%_
                                           _%hd249197249688%_
                                           _%tl249198249690%_
                                           _%e249199249693%_
                                           _%hd249200249696%_
                                           _%tl249201249698%_
                                           _%e249202249701%_
                                           _%hd249203249704%_
                                           _%tl249204249706%_
                                           _%e249227249495%_
                                           _%hd249228249498%_
                                           _%tl249229249500%_
                                           _%e249230249503%_
                                           _%hd249231249506%_
                                           _%tl249232249508%_
                                           _%e249233249511%_
                                           _%hd249234249514%_
                                           _%tl249235249516%_
                                           _%e249236249519%_
                                           _%hd249237249522%_
                                           _%tl249238249524%_
                                           _%e249276249419%_
                                           _%hd249277249422%_
                                           _%tl249278249424%_
                                           _%e249279249427%_
                                           _%hd249280249430%_
                                           _%tl249281249432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))))
                          (let () (declare (not safe)) (_%g249191249301%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249201249698%_))
                          (let ((_%e249291249322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249201249698%_))))
                            (let ((_%tl249293249327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249291249322%_)))
                                  (_%hd249292249325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249291249322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249293249327%_))
                                  (let ((_%e249294249330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249293249327%_))))
                                    (let ((_%tl249296249335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249294249330%_)))
                                          (_%hd249295249333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249294249330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249296249335%_))
                                          (_%__kont253662253663%_
                                           _%hd249295249333%_
                                           _%hd249292249325%_
                                           _%hd249200249696%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g249191249301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249201249698%_))
                                                      (let ((_%e249291249322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249201249698%_))))
                (let ((_%tl249293249327%_
                       (let () (declare (not safe)) (##cdr _%e249291249322%_)))
                      (_%hd249292249325%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249291249322%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249293249327%_))
                      (let ((_%e249294249330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249293249327%_))))
                        (let ((_%tl249296249335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249294249330%_)))
                              (_%hd249295249333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249294249330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249296249335%_))
                              (_%__kont253662253663%_
                               _%hd249295249333%_
                               _%hd249292249325%_
                               _%hd249200249696%_)
                              (let ()
                                (declare (not safe))
                                (_%g249191249301%_)))))
                      (let () (declare (not safe)) (_%g249191249301%_)))))
              (let () (declare (not safe)) (_%g249191249301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249201249698%_))
                                                  (let ((_%e249291249322%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249201249698%_))))
                                                    (let ((_%tl249293249327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249291249322%_)))
                                                          (_%hd249292249325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249291249322%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249293249327%_))
                                                          (let ((_%e249294249330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249293249327%_))))
                    (let ((_%tl249296249335%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249294249330%_)))
                          (_%hd249295249333%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249294249330%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249296249335%_))
                          (_%__kont253662253663%_
                           _%hd249295249333%_
                           _%hd249292249325%_
                           _%hd249200249696%_)
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249201249698%_))
                                          (let ((_%e249291249322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249201249698%_))))
                                            (let ((_%tl249293249327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249291249322%_)))
                                                  (_%hd249292249325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249291249322%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249293249327%_))
                                                  (let ((_%e249294249330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249293249327%_))))
                                                    (let ((_%tl249296249335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249294249330%_)))
                                                          (_%hd249295249333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249294249330%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249296249335%_))
                                                          (_%__kont253662253663%_
                                                           _%hd249295249333%_
                                                           _%hd249292249325%_
                                                           _%hd249200249696%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249191249301%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249201249698%_))
                                      (let ((_%e249291249322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249201249698%_))))
                                        (let ((_%tl249293249327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249291249322%_)))
                                              (_%hd249292249325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249291249322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249293249327%_))
                                              (let ((_%e249294249330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249293249327%_))))
                                                (let ((_%tl249296249335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249294249330%_)))
                                                      (_%hd249295249333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249294249330%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249296249335%_))
                                                      (_%__kont253662253663%_
                                                       _%hd249295249333%_
                                                       _%hd249292249325%_
                                                       _%hd249200249696%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249191249301%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249191249301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249201249698%_))
                                  (let ((_%e249291249322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249201249698%_))))
                                    (let ((_%tl249293249327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249291249322%_)))
                                          (_%hd249292249325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249291249322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249293249327%_))
                                          (let ((_%e249294249330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249293249327%_))))
                                            (let ((_%tl249296249335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249294249330%_)))
                                                  (_%hd249295249333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249294249330%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249296249335%_))
                                                  (_%__kont253662253663%_
                                                   _%hd249295249333%_
                                                   _%hd249292249325%_
                                                   _%hd249200249696%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249191249301%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249201249698%_))
                          (let ((_%e249291249322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249201249698%_))))
                            (let ((_%tl249293249327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249291249322%_)))
                                  (_%hd249292249325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249291249322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249293249327%_))
                                  (let ((_%e249294249330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249293249327%_))))
                                    (let ((_%tl249296249335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249294249330%_)))
                                          (_%hd249295249333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249294249330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249296249335%_))
                                          (_%__kont253662253663%_
                                           _%hd249295249333%_
                                           _%hd249292249325%_
                                           _%hd249200249696%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249191249301%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))))
                          (let () (declare (not safe)) (_%g249191249301%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl249201249698%_))
                  (let ((_%e249291249322%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249201249698%_))))
                    (let ((_%tl249293249327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249291249322%_)))
                          (_%hd249292249325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249291249322%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249293249327%_))
                          (let ((_%e249294249330%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249293249327%_))))
                            (let ((_%tl249296249335%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249294249330%_)))
                                  (_%hd249295249333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249294249330%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249296249335%_))
                                  (_%__kont253662253663%_
                                   _%hd249295249333%_
                                   _%hd249292249325%_
                                   _%hd249200249696%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g249191249301%_)))))
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249201249698%_))
                                                      (let ((_%e249291249322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249201249698%_))))
                (let ((_%tl249293249327%_
                       (let () (declare (not safe)) (##cdr _%e249291249322%_)))
                      (_%hd249292249325%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249291249322%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249293249327%_))
                      (let ((_%e249294249330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249293249327%_))))
                        (let ((_%tl249296249335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249294249330%_)))
                              (_%hd249295249333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249294249330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249296249335%_))
                              (_%__kont253662253663%_
                               _%hd249295249333%_
                               _%hd249292249325%_
                               _%hd249200249696%_)
                              (let ()
                                (declare (not safe))
                                (_%g249191249301%_)))))
                      (let () (declare (not safe)) (_%g249191249301%_)))))
              (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249201249698%_))
                                              (let ((_%e249291249322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249201249698%_))))
                                                (let ((_%tl249293249327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249291249322%_)))
                                                      (_%hd249292249325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249291249322%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249293249327%_))
                                                      (let ((_%e249294249330%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249293249327%_))))
                (let ((_%tl249296249335%_
                       (let () (declare (not safe)) (##cdr _%e249294249330%_)))
                      (_%hd249295249333%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249294249330%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249296249335%_))
                      (_%__kont253662253663%_
                       _%hd249295249333%_
                       _%hd249292249325%_
                       _%hd249200249696%_)
                      (let () (declare (not safe)) (_%g249191249301%_)))))
              (let () (declare (not safe)) (_%g249191249301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g249191249301%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249201249698%_))
                                      (let ((_%e249291249322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249201249698%_))))
                                        (let ((_%tl249293249327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249291249322%_)))
                                              (_%hd249292249325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249291249322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249293249327%_))
                                              (let ((_%e249294249330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249293249327%_))))
                                                (let ((_%tl249296249335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249294249330%_)))
                                                      (_%hd249295249333%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249294249330%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249296249335%_))
                                                      (_%__kont253662253663%_
                                                       _%hd249295249333%_
                                                       _%hd249292249325%_
                                                       _%hd249200249696%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249191249301%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249191249301%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249191249301%_))))))
                          (let () (declare (not safe)) (_%g249191249301%_)))))
                  (let () (declare (not safe)) (_%g249191249301%_))))))))))
