(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771025415)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp253895 (list gxc#::basic-xform::t))
            (__tmp253894 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp253895
         '()
         __tmp253894
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args253172%_
        (apply make-instance gxc#::optimize-call::t _%$args253172%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp253896
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
        (__make-atomic-promise __tmp253896)))
    (define gxc#apply-optimize-call
      (lambda (_%stx253164%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self253167%_
                (let ((__obj253886
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj253886))
               (__tmp253897
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253167%_ _%stx253164%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp253897
           gxc#current-compile-method
           _%self253167%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp253899 (list gxc#::void::t))
            (__tmp253898 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp253899
         '()
         __tmp253898
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args253161%_
        (apply make-instance gxc#::check-return-type::t _%$args253161%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp253900
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
        (__make-atomic-promise __tmp253900)))
    (define gxc#apply-check-return-type
      (lambda (_%stx253153%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self253156%_
                (let ((__obj253888
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj253888))
               (__tmp253901
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self253156%_ _%stx253153%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp253901
           gxc#current-compile-method
           _%self253156%_))))
    (define gxc#optimize-call%
      (lambda (_%self252760%_ _%stx252761%_)
        (let* ((_%__stx253241253242%_ _%stx252761%_)
               (_%g252764252810%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253241253242%_)))))
          (let ((_%__kont253243253244%_
                 (lambda (_%g252766252949%_ _%g252767252950%_)
                   (let* ((_%rator-id252970%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g252767252950%_)))
                          (_%rator-type252972%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id252970%_))))
                     (if (or (not _%rator-type252972%_)
                             (eq? (##structure-ref
                                   _%rator-type252972%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self252760%_ _%stx252761%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type252972%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp253902
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type252972%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id252970%_
                                  '" => "
                                  _%rator-type252972%_
                                  '" "
                                  __tmp253902))
                               (let* ((_%optimized252987%_
                                       (let ((__method253889
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type252972%_
                                                 'optimize-call))))
                                         (if __method253889
                                             (let ((__tmp253903
                                                    (let ((__tmp253904
                                                           (lambda (_%g252979252982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g252980252984%_)
                     (cons _%g252979252982%_ _%g252980252984%_))))
              (declare (not safe))
              (foldr__0 __tmp253904 '() _%g252766252949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method253889
                                                _%rator-type252972%_
                                                _%self252760%_
                                                _%stx252761%_
                                                __tmp253903))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type252972%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx253189253190%_
                                       _%optimized252987%_)
                                      (_%g252990253019%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx253189253190%_)))))
                                 (let ((_%__kont253191253192%_
                                        (lambda (_%g252992253085%_
                                                 _%g252993253086%_)
                                          (let* ((_%optimized-rator-id253113%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g252993253086%_)))
                                                 (_%rator-type253118%_
                                                  (let ((_%$e253115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id253113%_))))
                                                    (if _%$e253115%_
                                                        _%$e253115%_
                                                        _%rator-type252972%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type253118%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id253113%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type253118%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type253118%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized252987%_
                                                (let ((__tmp253905
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g252993253086%_ '()))
                           (let ((__tmp253906
                                  (lambda (_%g253126253129%_ _%g253127253131%_)
                                    (cons _%g253126253129%_
                                          _%g253127253131%_))))
                             (declare (not safe))
                             (foldr__0 __tmp253906 '() _%g252992253085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp253905
                                                   _%stx252761%_))))))
                                       (_%__kont253195253196%_
                                        (lambda () _%optimized252987%_)))
                                   (let ((_%__match253238253239%_
                                          (lambda (_%e252994253031%_
                                                   _%hd252995253034%_
                                                   _%tl252996253036%_
                                                   _%e252997253039%_
                                                   _%hd252998253042%_
                                                   _%tl252999253044%_
                                                   _%e253000253047%_
                                                   _%hd253001253050%_
                                                   _%tl253002253052%_
                                                   _%e253003253055%_
                                                   _%hd253004253058%_
                                                   _%tl253005253060%_
                                                   _%__splice253193253194%_
                                                   _%target253006253063%_
                                                   _%tl253008253065%_)
                                            (letrec ((_%loop253009253068%_
                                                      (lambda (_%hd253007253071%_
                                                               _%arg253013253073%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd253007253071%_))
                                                            (let ((_%e253010253075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd253007253071%_))))
                      (let ((_%lp-tl253012253080%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253010253075%_)))
                            (_%lp-hd253011253078%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253010253075%_))))
                        (_%loop253009253068%_
                         _%lp-tl253012253080%_
                         (cons _%lp-hd253011253078%_ _%arg253013253073%_))))
                    (let ((_%arg253014253083%_ (reverse _%arg253013253073%_)))
                      (_%__kont253191253192%_
                       _%arg253014253083%_
                       _%hd253004253058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop253009253068%_
                                               _%target253006253063%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx253189253190%_))
                                         (let ((_%e252994253031%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx253189253190%_))))
                                           (let ((_%tl252996253036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e252994253031%_)))
                                                 (_%hd252995253034%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e252994253031%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd252995253034%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd252995253034%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl252996253036%_))
                                                         (let ((_%e252997253039%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl252996253036%_))))
                   (let ((_%tl252999253044%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e252997253039%_)))
                         (_%hd252998253042%_
                          (let ()
                            (declare (not safe))
                            (##car _%e252997253039%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd252998253042%_))
                         (let ((_%e253000253047%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd252998253042%_))))
                           (let ((_%tl253002253052%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e253000253047%_)))
                                 (_%hd253001253050%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e253000253047%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd253001253050%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd253001253050%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl253002253052%_))
                                         (let ((_%e253003253055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl253002253052%_))))
                                           (let ((_%tl253005253060%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e253003253055%_)))
                                                 (_%hd253004253058%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e253003253055%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl253005253060%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl252999253044%_))
                                                     (let ((_%__splice253193253194%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl252999253044%_
                                                               '0))))
                                                       (let ((_%tl253008253065%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice253193253194%_ '1)))
                     (_%target253006253063%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice253193253194%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl253008253065%_))
                     (_%__match253238253239%_
                      _%e252994253031%_
                      _%hd252995253034%_
                      _%tl252996253036%_
                      _%e252997253039%_
                      _%hd252998253042%_
                      _%tl252999253044%_
                      _%e253000253047%_
                      _%hd253001253050%_
                      _%tl253002253052%_
                      _%e253003253055%_
                      _%hd253004253058%_
                      _%tl253005253060%_
                      _%__splice253193253194%_
                      _%target253006253063%_
                      _%tl253008253065%_)
                     (_%__kont253195253196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253195253196%_))
                                                 (_%__kont253195253196%_))))
                                         (_%__kont253195253196%_))
                                     (_%__kont253195253196%_))
                                 (_%__kont253195253196%_))))
                         (_%__kont253195253196%_))))
                 (_%__kont253195253196%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont253195253196%_))
                                                 (_%__kont253195253196%_))))
                                         (_%__kont253195253196%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type252972%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type252972%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp253907
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g252767252950%_
                                                                '()))
                                                    (map (lambda (_%g253137253139%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self252760%_
                                                              _%g253137253139%_)))
                                                         (let ((__tmp253908
                                                                (lambda (_%g253141253144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g253142253146%_)
                          (cons _%g253141253144%_ _%g253142253146%_))))
                   (declare (not safe))
                   (foldr__0 __tmp253908 '() _%g252766252949%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp253907
                                    _%stx252761%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx252761%_
                                    _%rator-type252972%_))))))))
                (_%__kont253247253248%_
                 (lambda (_%g252789252853%_ _%g252790252854%_)
                   (let ((_%rator-type252871%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g252790252854%_))))
                     (if (and _%rator-type252871%_
                              (eq? (##structure-ref
                                    _%rator-type252871%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type252871%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type252871%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type252871%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp253909
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self252760%_
                                               _%g252790252854%_))
                                            (map (lambda (_%g252873252875%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self252760%_
                                                      _%g252873252875%_)))
                                                 (let ((__tmp253910
                                                        (lambda (_%g252877252880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g252878252882%_)
                  (cons _%g252877252880%_ _%g252878252882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp253910
                                                    '()
                                                    _%g252789252853%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp253909 _%stx252761%_))
                         (if (or (not _%rator-type252871%_)
                                 (let ((__tmp253911
                                        (##structure-ref
                                         _%rator-type252871%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp253911 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self252760%_ _%stx252761%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx252761%_
                                _%rator-type252871%_))))))))
            (let* ((_%__match253308253309%_
                    (lambda (_%e252791252815%_
                             _%hd252792252818%_
                             _%tl252793252820%_
                             _%e252794252823%_
                             _%hd252795252826%_
                             _%tl252796252828%_
                             _%__splice253249253250%_
                             _%target252797252831%_
                             _%tl252799252833%_)
                      (letrec ((_%loop252800252836%_
                                (lambda (_%hd252798252839%_
                                         _%rand252804252841%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252798252839%_))
                                      (let ((_%e252801252843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd252798252839%_))))
                                        (let ((_%lp-tl252803252848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252801252843%_)))
                                              (_%lp-hd252802252846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252801252843%_))))
                                          (_%loop252800252836%_
                                           _%lp-tl252803252848%_
                                           (cons _%lp-hd252802252846%_
                                                 _%rand252804252841%_))))
                                      (let ((_%rand252805252851%_
                                             (reverse _%rand252804252841%_)))
                                        (_%__kont253247253248%_
                                         _%rand252805252851%_
                                         _%hd252795252826%_))))))
                        (_%loop252800252836%_ _%target252797252831%_ '()))))
                   (_%__match253288253289%_
                    (lambda (_%e252768252895%_
                             _%hd252769252898%_
                             _%tl252770252900%_
                             _%e252771252903%_
                             _%hd252772252906%_
                             _%tl252773252908%_
                             _%e252774252911%_
                             _%hd252775252914%_
                             _%tl252776252916%_
                             _%e252777252919%_
                             _%hd252778252922%_
                             _%tl252779252924%_
                             _%__splice253245253246%_
                             _%target252780252927%_
                             _%tl252782252929%_)
                      (letrec ((_%loop252783252932%_
                                (lambda (_%hd252781252935%_
                                         _%rand252787252937%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd252781252935%_))
                                      (let ((_%e252784252939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd252781252935%_))))
                                        (let ((_%lp-tl252786252944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252784252939%_)))
                                              (_%lp-hd252785252942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252784252939%_))))
                                          (_%loop252783252932%_
                                           _%lp-tl252786252944%_
                                           (cons _%lp-hd252785252942%_
                                                 _%rand252787252937%_))))
                                      (let ((_%rand252788252947%_
                                             (reverse _%rand252787252937%_)))
                                        (_%__kont253243253244%_
                                         _%rand252788252947%_
                                         _%hd252778252922%_))))))
                        (_%loop252783252932%_ _%target252780252927%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253241253242%_))
                  (let ((_%e252768252895%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253241253242%_))))
                    (let ((_%tl252770252900%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252768252895%_)))
                          (_%hd252769252898%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252768252895%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252770252900%_))
                          (let ((_%e252771252903%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252770252900%_))))
                            (let ((_%tl252773252908%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252771252903%_)))
                                  (_%hd252772252906%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252771252903%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd252772252906%_))
                                  (let ((_%e252774252911%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd252772252906%_))))
                                    (let ((_%tl252776252916%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252774252911%_)))
                                          (_%hd252775252914%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252774252911%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd252775252914%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd252775252914%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl252776252916%_))
                                                  (let ((_%e252777252919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl252776252916%_))))
                                                    (let ((_%tl252779252924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252777252919%_)))
                                                          (_%hd252778252922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252777252919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252779252924%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl252773252908%_))
                      (let ((_%__splice253245253246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl252773252908%_
                                '0))))
                        (let ((_%tl252782252929%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253245253246%_ '1)))
                              (_%target252780252927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253245253246%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252782252929%_))
                              (_%__match253288253289%_
                               _%e252768252895%_
                               _%hd252769252898%_
                               _%tl252770252900%_
                               _%e252771252903%_
                               _%hd252772252906%_
                               _%tl252773252908%_
                               _%e252774252911%_
                               _%hd252775252914%_
                               _%tl252776252916%_
                               _%e252777252919%_
                               _%hd252778252922%_
                               _%tl252779252924%_
                               _%__splice253245253246%_
                               _%target252780252927%_
                               _%tl252782252929%_)
                              (let ()
                                (declare (not safe))
                                (_%g252764252810%_)))))
                      (let () (declare (not safe)) (_%g252764252810%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl252773252908%_))
                      (let ((_%__splice253249253250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl252773252908%_
                                '0))))
                        (let ((_%tl252799252833%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253249253250%_ '1)))
                              (_%target252797252831%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice253249253250%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252799252833%_))
                              (_%__match253308253309%_
                               _%e252768252895%_
                               _%hd252769252898%_
                               _%tl252770252900%_
                               _%e252771252903%_
                               _%hd252772252906%_
                               _%tl252773252908%_
                               _%__splice253249253250%_
                               _%target252797252831%_
                               _%tl252799252833%_)
                              (let ()
                                (declare (not safe))
                                (_%g252764252810%_)))))
                      (let () (declare (not safe)) (_%g252764252810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl252773252908%_))
                                                      (let ((_%__splice253249253250%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl252773252908%_
                        '0))))
                (let ((_%tl252799252833%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253249253250%_ '1)))
                      (_%target252797252831%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice253249253250%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl252799252833%_))
                      (_%__match253308253309%_
                       _%e252768252895%_
                       _%hd252769252898%_
                       _%tl252770252900%_
                       _%e252771252903%_
                       _%hd252772252906%_
                       _%tl252773252908%_
                       _%__splice253249253250%_
                       _%target252797252831%_
                       _%tl252799252833%_)
                      (let () (declare (not safe)) (_%g252764252810%_)))))
              (let () (declare (not safe)) (_%g252764252810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl252773252908%_))
                                                  (let ((_%__splice253249253250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl252773252908%_
                                                            '0))))
                                                    (let ((_%tl252799252833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253249253250%_
                                                              '1)))
                                                          (_%target252797252831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253249253250%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl252799252833%_))
                                                          (_%__match253308253309%_
                                                           _%e252768252895%_
                                                           _%hd252769252898%_
                                                           _%tl252770252900%_
                                                           _%e252771252903%_
                                                           _%hd252772252906%_
                                                           _%tl252773252908%_
                                                           _%__splice253249253250%_
                                                           _%target252797252831%_
                                                           _%tl252799252833%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g252764252810%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g252764252810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl252773252908%_))
                                              (let ((_%__splice253249253250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl252773252908%_
                                                        '0))))
                                                (let ((_%tl252799252833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253249253250%_
                                                          '1)))
                                                      (_%target252797252831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice253249253250%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl252799252833%_))
                                                      (_%__match253308253309%_
                                                       _%e252768252895%_
                                                       _%hd252769252898%_
                                                       _%tl252770252900%_
                                                       _%e252771252903%_
                                                       _%hd252772252906%_
                                                       _%tl252773252908%_
                                                       _%__splice253249253250%_
                                                       _%target252797252831%_
                                                       _%tl252799252833%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g252764252810%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g252764252810%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252773252908%_))
                                      (let ((_%__splice253249253250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252773252908%_
                                                '0))))
                                        (let ((_%tl252799252833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253249253250%_
                                                  '1)))
                                              (_%target252797252831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253249253250%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252799252833%_))
                                              (_%__match253308253309%_
                                               _%e252768252895%_
                                               _%hd252769252898%_
                                               _%tl252770252900%_
                                               _%e252771252903%_
                                               _%hd252772252906%_
                                               _%tl252773252908%_
                                               _%__splice253249253250%_
                                               _%target252797252831%_
                                               _%tl252799252833%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g252764252810%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252764252810%_))))))
                          (let () (declare (not safe)) (_%g252764252810%_)))))
                  (let () (declare (not safe)) (_%g252764252810%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self252722%_ _%ctx252723%_ _%stx252724%_ _%args252725%_)
        (let ((_%self252728%_ _%self252722%_))
          (if (let ((__method253890
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self252728%_ 'check-arguments))))
                (if __method253890
                    (let ()
                      (declare (not safe))
                      (__method253890
                       _%self252728%_
                       _%ctx252723%_
                       _%stx252724%_
                       _%args252725%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self252728%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature252738%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252728%_ '2 '#f '#f)))
                     (_%signature252740%_ _%signature252738%_)
                     (_%$e252750%_
                      (if _%signature252740%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature252740%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e252750%_
                    ((lambda (_%unchecked252753%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked252753%_))
                           (let ((__tmp253912
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked252753%_
                                                          '()))
                                              (map (lambda (_%g252754252756%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252723%_
                                                        _%g252754252756%_)))
                                                   _%args252725%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp253912
                              _%stx252724%_
                              _%ctx252723%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx252723%_ _%stx252724%_))))
                     _%$e252750%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx252723%_ _%stx252724%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx252723%_ _%stx252724%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass253174 __method-table253175)
        (let ((__check-arguments253176
               (let ((__tmp253913
                      (lambda ()
                        (let ((__method253177
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253175
                                  'check-arguments
                                  '#f))))
                          (if __method253177
                              __method253177
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp253913))))
          (lambda (_%self252722%_ _%ctx252723%_ _%stx252724%_ _%args252725%_)
            (let ((_%self252728%_ _%self252722%_))
              (if ((force __check-arguments253176)
                   _%self252728%_
                   _%ctx252723%_
                   _%stx252724%_
                   _%args252725%_)
                  (let* ((_%signature252738%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self252728%_
                             '2
                             '#f
                             '#f)))
                         (_%signature252740%_ _%signature252738%_)
                         (_%$e252750%_
                          (if _%signature252740%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature252740%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e252750%_
                        ((lambda (_%unchecked252753%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked252753%_))
                               (let ((__tmp253914
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked252753%_
                                                              '()))
                                                  (map (lambda (_%g252754252756%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx252723%_
                                                            _%g252754252756%_)))
                                                       _%args252725%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp253914
                                  _%stx252724%_
                                  _%ctx252723%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx252723%_
                                  _%stx252724%_))))
                         _%$e252750%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx252723%_ _%stx252724%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx252723%_ _%stx252724%_))))))))
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
      (lambda (_%self252475%_ _%ctx252476%_ _%stx252477%_ _%args252478%_)
        (let* ((_%self252481%_ _%self252475%_)
               (_%signature252490252492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252481%_ '2 '#f '#f))))
          (if _%signature252490252492%_
              (let* ((_%signature252494%_ _%signature252490252492%_)
                     (_%argument-types252495252497%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature252494%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types252495252497%_
                    (let* ((_%argument-types252499%_
                            _%argument-types252495252497%_)
                           (_%argument-types252504%_
                            (let ((__tmp253915
                                   (lambda (_%t252502%_)
                                     (if _%t252502%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252477%_
                                            _%t252502%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp253915
                               _%argument-types252499%_))))
                      (let _%loop252506%_ ((_%rest-args252508%_ _%args252478%_)
                                           (_%rest-types252509%_
                                            _%argument-types252504%_)
                                           (_%result252510%_ '#t))
                        (let* ((_%rest-args252511252519%_ _%rest-args252508%_)
                               (_%else252513252527%_
                                (lambda () _%result252510%_))
                               (_%K252515252588%_
                                (lambda (_%rest-args252530%_ _%arg252531%_)
                                  (let* ((_%rest-types252532252543%_
                                          _%rest-types252509%_)
                                         (_%E252536252547%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types252532252543%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K252539252576%_
                                           (lambda (_%rest-types252573%_
                                                    _%type252574%_)
                                             (_%loop252506%_
                                              _%rest-args252530%_
                                              _%rest-types252573%_
                                              (if (gxc#check-expression-type!
                                                   _%stx252477%_
                                                   _%arg252531%_
                                                   _%type252574%_)
                                                  _%result252510%_
                                                  '#f))))
                                          (_%K252538252567%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx252477%_
                                                _%argument-types252504%_))))
                                          (_%K252537252557%_
                                           (lambda (_%tail-type252551%_)
                                             (if (let ((__tmp253916
                                                        (lambda (_%g252552252554%_)
                                                          (gxc#check-expression-type!
                                                           _%stx252477%_
                                                           _%g252552252554%_
                                                           _%tail-type252551%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp253916
                                                    _%rest-args252530%_))
                                                 _%result252510%_
                                                 '#f))))
                                      (let ((_%try-match252534252570%_
                                             (lambda ()
                                               (if (null? _%rest-types252532252543%_)
                                                   (_%K252538252567%_)
                                                   (let ((_%tail-type252560%_
                                                          _%rest-types252532252543%_))
                                                     (_%K252537252557%_
                                                      _%tail-type252560%_))))))
                                        (if (pair? _%rest-types252532252543%_)
                                            (let ((_%tl252541252581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types252532252543%_)))
                                                  (_%hd252540252579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types252532252543%_))))
                                              (let ((_%type252584%_
                                                     _%hd252540252579%_)
                                                    (_%rest-types252586%_
                                                     _%tl252541252581%_))
                                                (_%K252539252576%_
                                                 _%rest-types252586%_
                                                 _%type252584%_)))
                                            (_%try-match252534252570%_))))))))
                          (if (pair? _%rest-args252511252519%_)
                              (let ((_%hd252516252591%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args252511252519%_)))
                                    (_%tl252517252593%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args252511252519%_))))
                                (let* ((_%arg252596%_ _%hd252516252591%_)
                                       (_%rest-args252598%_
                                        _%tl252517252593%_))
                                  (_%K252515252588%_
                                   _%rest-args252598%_
                                   _%arg252596%_)))
                              (_%else252513252527%_)))))
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
      (lambda (_%self252286%_ _%ctx252287%_ _%stx252288%_ _%args252289%_)
        (let* ((_%self252292%_ _%self252286%_)
               (_%g252302252312%_
                (lambda (_%g252303252309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252303252309%_))))
               (_%g252301252350%_
                (lambda (_%g252303252315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252303252315%_))
                      (let ((_%e252305252317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252303252315%_))))
                        (let ((_%hd252306252320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252305252317%_)))
                              (_%tl252307252322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252305252317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252307252322%_))
                              ((lambda (_%g252304252325%_)
                                 (let* ((_%klass252337%_
                                         (let ((__tmp253917
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252292%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252288%_
                                            __tmp253917)))
                                        (_%object252339%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252287%_
                                            _%g252304252325%_)))
                                        (_%instance?252344%_
                                         (let ((_%$e252341%_
                                                (gxc#expression-type?
                                                 _%object252339%_
                                                 _%klass252337%_)))
                                           (if _%$e252341%_
                                               _%$e252341%_
                                               (gxc#expression-type?
                                                _%g252304252325%_
                                                _%klass252337%_)))))
                                   (if _%instance?252344%_
                                       (let ((__tmp253918
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252339%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252304252325%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252339%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253918
                                          _%stx252288%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx252287%_
                                          _%stx252288%_)))))
                               _%hd252306252320%_)
                              (_%g252302252312%_ _%g252303252315%_))))
                      (_%g252302252312%_ _%g252303252315%_)))))
          (_%g252301252350%_ _%args252289%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self252082%_ _%ctx252083%_ _%stx252084%_ _%args252085%_)
        (let* ((_%self252088%_ _%self252082%_)
               (_%g252098252108%_
                (lambda (_%g252099252105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252099252105%_))))
               (_%g252097252161%_
                (lambda (_%g252099252111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252099252111%_))
                      (let ((_%e252101252113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252099252111%_))))
                        (let ((_%hd252102252116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252101252113%_)))
                              (_%tl252103252118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252101252113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252103252118%_))
                              ((lambda (_%g252100252121%_)
                                 (let* ((_%klass252133%_
                                         (let ((__tmp253919
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252088%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252084%_
                                            __tmp253919)))
                                        (_%object252135%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252083%_
                                            _%g252100252121%_)))
                                        (_%instance?252140%_
                                         (let ((_%$e252137%_
                                                (gxc#expression-type?
                                                 _%object252135%_
                                                 _%klass252133%_)))
                                           (if _%$e252137%_
                                               _%$e252137%_
                                               (gxc#expression-type?
                                                _%g252100252121%_
                                                _%klass252133%_))))
                                        (_%klass252143%_ _%klass252133%_))
                                   (if _%instance?252140%_
                                       (let ((__tmp253920
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object252135%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g252100252121%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object252135%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253920
                                          _%stx252084%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252143%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp253921
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass252143%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object252135%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253921
                                              _%stx252084%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252143%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253922
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass252143%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object252135%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253922
                                                  _%stx252084%_))
                                               (let ((__tmp253923
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self252088%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object252135%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253923
                                                  _%stx252084%_)))))))
                               _%hd252102252116%_)
                              (_%g252098252108%_ _%g252099252111%_))))
                      (_%g252098252108%_ _%g252099252111%_)))))
          (_%g252097252161%_ _%args252085%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx251750%_)
        (let* ((_%__stx253318253319%_ _%stx251750%_)
               (_%g251755251796%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253318253319%_)))))
          (let ((_%__kont253320253321%_ (lambda () '#t))
                (_%__kont253322253323%_ (lambda () '#t))
                (_%__kont253324253325%_
                 (lambda (_%g251769251862%_ _%g251770251863%_)
                   (let ((_%rator-type251884251886%_
                          (let ((__tmp253924
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g251770251863%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp253924))))
                     (if _%rator-type251884251886%_
                         (let* ((_%rator-type251888%_
                                 _%rator-type251884251886%_)
                                (_%rator-signature251889251891%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type251888%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type251888%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature251889251891%_
                               (let* ((_%rator-signature251893%_
                                       _%rator-signature251889251891%_)
                                      (_%rator-effect251894251896%_
                                       (if _%rator-signature251893%_
                                           (##direct-structure-ref
                                            _%rator-signature251893%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect251894251896%_
                                     (let ((_%rator-effect251898%_
                                            _%rator-effect251894251896%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect251898%_)
                                               (equal? '(alloc)
                                                       _%rator-effect251898%_))
                                           (let ((__tmp253925
                                                  (let ((__tmp253926
                                                         (lambda (_%g251903251906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g251904251908%_)
                   (cons _%g251903251906%_ _%g251904251908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp253926
                                                     '()
                                                     _%g251769251862%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp253925))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont253328253329%_ (lambda () '#f)))
            (let ((_%__match253407253408%_
                   (lambda (_%e251771251808%_
                            _%hd251772251811%_
                            _%tl251773251813%_
                            _%e251774251816%_
                            _%hd251775251819%_
                            _%tl251776251821%_
                            _%e251777251824%_
                            _%hd251778251827%_
                            _%tl251779251829%_
                            _%e251780251832%_
                            _%hd251781251835%_
                            _%tl251782251837%_
                            _%__splice253326253327%_
                            _%target251783251840%_
                            _%tl251785251842%_)
                     (letrec ((_%loop251786251845%_
                               (lambda (_%hd251784251848%_
                                        _%rand251790251850%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd251784251848%_))
                                     (let ((_%e251787251852%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd251784251848%_))))
                                       (let ((_%lp-tl251789251857%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e251787251852%_)))
                                             (_%lp-hd251788251855%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e251787251852%_))))
                                         (_%loop251786251845%_
                                          _%lp-tl251789251857%_
                                          (cons _%lp-hd251788251855%_
                                                _%rand251790251850%_))))
                                     (let ((_%rand251791251860%_
                                            (reverse _%rand251790251850%_)))
                                       (_%__kont253324253325%_
                                        _%rand251791251860%_
                                        _%hd251781251835%_))))))
                       (_%loop251786251845%_ _%target251783251840%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253318253319%_))
                  (let ((_%e251757251939%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253318253319%_))))
                    (let ((_%tl251759251944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e251757251939%_)))
                          (_%hd251758251942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e251757251939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd251758251942%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd251758251942%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251759251944%_))
                                  (let ((_%e251760251947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251759251944%_))))
                                    (let ((_%tl251762251952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251760251947%_)))
                                          (_%hd251761251950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251760251947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251762251952%_))
                                          (_%__kont253320253321%_)
                                          (_%__kont253328253329%_))))
                                  (_%__kont253328253329%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd251758251942%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl251759251944%_))
                                      (let ((_%e251766251924%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl251759251944%_))))
                                        (let ((_%tl251768251929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251766251924%_)))
                                              (_%hd251767251927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251766251924%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251768251929%_))
                                              (_%__kont253322253323%_)
                                              (_%__kont253328253329%_))))
                                      (_%__kont253328253329%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd251758251942%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl251759251944%_))
                                          (let ((_%e251774251816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl251759251944%_))))
                                            (let ((_%tl251776251821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e251774251816%_)))
                                                  (_%hd251775251819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e251774251816%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd251775251819%_))
                                                  (let ((_%e251777251824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd251775251819%_))))
                                                    (let ((_%tl251779251829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e251777251824%_)))
                                                          (_%hd251778251827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e251777251824%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd251778251827%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd251778251827%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251779251829%_))
                          (let ((_%e251780251832%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251779251829%_))))
                            (let ((_%tl251782251837%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251780251832%_)))
                                  (_%hd251781251835%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251780251832%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251782251837%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl251776251821%_))
                                      (let ((_%__splice253326253327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl251776251821%_
                                                '0))))
                                        (let ((_%tl251785251842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253326253327%_
                                                  '1)))
                                              (_%target251783251840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice253326253327%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl251785251842%_))
                                              (_%__match253407253408%_
                                               _%e251757251939%_
                                               _%hd251758251942%_
                                               _%tl251759251944%_
                                               _%e251774251816%_
                                               _%hd251775251819%_
                                               _%tl251776251821%_
                                               _%e251777251824%_
                                               _%hd251778251827%_
                                               _%tl251779251829%_
                                               _%e251780251832%_
                                               _%hd251781251835%_
                                               _%tl251782251837%_
                                               _%__splice253326253327%_
                                               _%target251783251840%_
                                               _%tl251785251842%_)
                                              (_%__kont253328253329%_))))
                                      (_%__kont253328253329%_))
                                  (_%__kont253328253329%_))))
                          (_%__kont253328253329%_))
                      (_%__kont253328253329%_))
                  (_%__kont253328253329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont253328253329%_))))
                                          (_%__kont253328253329%_))
                                      (_%__kont253328253329%_))))
                          (_%__kont253328253329%_))))
                  (_%__kont253328253329%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx251745%_ _%klass251746%_)
        (let ((_%expr-type251748%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx251745%_))))
          (if _%expr-type251748%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type251748%_ _%klass251746%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx251723%_ _%expr251724%_ _%type251725%_)
        (if (not _%type251725%_)
            '#f
            (let ((_%$e251728%_
                   (eq? (##structure-ref _%type251725%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e251728%_
                  _%$e251728%_
                  (let ((_%expr-type251732%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr251724%_))))
                    (if (not _%expr-type251732%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type251732%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e251736%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type251732%_
                                      'gxc#!abort::t))))
                              (if _%$e251736%_
                                  _%$e251736%_
                                  (let ((_%$e251739%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type251732%_
                                            _%type251725%_))))
                                    (if _%$e251739%_
                                        _%$e251739%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type251725%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type251725%_
                                                   _%expr-type251732%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx251723%_
                                                   _%expr251724%_
                                                   _%expr-type251732%_
                                                   _%type251725%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self251537%_ _%ctx251538%_ _%stx251539%_ _%args251540%_)
        (let* ((_%self251543%_ _%self251537%_)
               (_%klass251553%_
                (let ((__tmp253927
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251543%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx251539%_ __tmp253927)))
               (_%fields251555%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass251553%_
                           '5
                           '#f
                           '#f))))
               (_%args251561%_
                (map (lambda (_%g251556251558%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx251538%_ _%g251556251558%_)))
                     _%args251540%_))
               (_%inline-make-object251563%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self251543%_
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
                           _%self251543%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields251555%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass251566%_ _%klass251553%_)
               (_%$e251580%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass251566%_ '6 '#f '#f))))
          (if _%$e251580%_
              ((lambda (_%ctor251583%_)
                 (let ((_%$obj251585%_
                        (let ((__tmp253928
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp253928)))
                       (_%ctor-impl251586%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass251566%_
                           _%ctor251583%_))))
                   (let ((__tmp253929
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj251585%_ '())
                                                  (cons _%inline-make-object251563%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl251586%_
                                                            (let ((__tmp253930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl251586%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj251585%_ '()))
                                             _%args251561%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp253930
                       _%stx251539%_
                       _%ctx251538%_))
                    (let ((_%$ctor251588%_
                           (let ((__tmp253931
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp253931))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor251588%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251543%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj251585%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor251583%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor251588%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor251588%_ '()))
                              (cons (cons '%#ref (cons _%$obj251585%_ '()))
                                    _%args251561%_)))
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
                             _%self251543%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor251583%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj251585%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp253929 _%stx251539%_))))
               _%$e251580%_)
              (let ((_%$e251590%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass251566%_
                        '10
                        '#f
                        '#f))))
                (if _%$e251590%_
                    ((lambda (_%metaclass251593%_)
                       (let* ((_%$obj251595%_
                               (let ((__tmp253932
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253932)))
                              (_%metakons251597%_
                               (let ((__tmp253933
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx251539%_
                                         _%metaclass251593%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp253933
                                  'instance-init!)))
                              (__tmp253934
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj251595%_
                                                             '())
                                                       (cons _%inline-make-object251563%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons251597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp253935
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons251597%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self251543%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj251595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args251561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp253935
                            _%stx251539%_
                            _%ctx251538%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251543%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj251595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args251561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj251595%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253934 _%stx251539%_)))
                     _%$e251590%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass251566%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp253936
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args251561%_))))
                              (declare (not safe))
                              (##fx= __tmp253936 _%fields251555%_))
                            (let ((__tmp253937
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self251543%_
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
                                              _%self251543%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args251561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp253937
                               _%stx251539%_))
                            (let ((__tmp253939
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self251543%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp253938
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass251566%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx251539%_
                               __tmp253939
                               __tmp253938)))
                        (let ((_%$obj251602%_
                               (let ((__tmp253940
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253940))))
                          (let _%lp251604%_ ((_%rest251606%_ _%args251561%_)
                                             (_%initializers251607%_ '()))
                            (let* ((_%__stx253410253411%_ _%rest251606%_)
                                   (_%g251611251632%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx253410253411%_)))))
                              (let ((_%__kont253412253413%_
                                     (lambda (_%g251613251686%_
                                              _%g251614251687%_
                                              _%g251615251688%_)
                                       (let* ((_%slot251715%_
                                               (let ((__tmp253941
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g251615251688%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp253941)))
                                              (_%off251717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass251566%_
                                                  _%slot251715%_))))
                                         (if _%off251717%_
                                             (_%lp251604%_
                                              _%g251613251686%_
                                              (cons (cons _%off251717%_
                                                          _%g251614251687%_)
                                                    _%initializers251607%_))
                                             (let ((__tmp253942
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251543%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx251539%_
                                                __tmp253942
                                                _%slot251715%_))))))
                                    (_%__kont253414253415%_
                                     (lambda ()
                                       (let ((__tmp253943
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj251602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object251563%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp253946
                                     (cons (cons '%#ref
                                                 (cons _%$obj251602%_ '()))
                                           '()))
                                    (__tmp253944
                                     (let ((__tmp253945
                                            (lambda (_%i251646%_ _%r251647%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251543%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i251646%_) '()))
                              (cons (cons '%#ref (cons _%$obj251602%_ '()))
                                    (cons (cdr _%i251646%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r251647%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp253945
                                        '()
                                        _%initializers251607%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp253946 __tmp253944)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253943
                                          _%stx251539%_))))
                                    (_%__kont253416253417%_
                                     (lambda ()
                                       (let ((__tmp253947
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj251602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object251563%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args251561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj251602%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253947
                                          _%stx251539%_)))))
                                (let* ((_%g251609251649%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx253410253411%_))
                                              (_%__kont253414253415%_)
                                              (_%__kont253416253417%_))))
                                       (_%__match253447253448%_
                                        (lambda (_%e251616251654%_
                                                 _%hd251617251657%_
                                                 _%tl251618251659%_
                                                 _%e251619251662%_
                                                 _%hd251620251665%_
                                                 _%tl251621251667%_
                                                 _%e251622251670%_
                                                 _%hd251623251673%_
                                                 _%tl251624251675%_
                                                 _%e251625251678%_
                                                 _%hd251626251681%_
                                                 _%tl251627251683%_)
                                          (let ((_%g251613251686%_
                                                 _%tl251627251683%_)
                                                (_%g251614251687%_
                                                 _%hd251626251681%_)
                                                (_%g251615251688%_
                                                 _%hd251623251673%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g251615251688%_))
                                                (_%__kont253412253413%_
                                                 _%g251613251686%_
                                                 _%g251614251687%_
                                                 _%g251615251688%_)
                                                (_%__kont253416253417%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx253410253411%_))
                                      (let ((_%e251616251654%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx253410253411%_))))
                                        (let ((_%tl251618251659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e251616251654%_)))
                                              (_%hd251617251657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e251616251654%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd251617251657%_))
                                              (let ((_%e251619251662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd251617251657%_))))
                                                (let ((_%tl251621251667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e251619251662%_)))
                                                      (_%hd251620251665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e251619251662%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd251620251665%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd251620251665%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl251621251667%_))
                      (let ((_%e251622251670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl251621251667%_))))
                        (let ((_%tl251624251675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251622251670%_)))
                              (_%hd251623251673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251622251670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251624251675%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251618251659%_))
                                  (let ((_%e251625251678%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251618251659%_))))
                                    (let ((_%tl251627251683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251625251678%_)))
                                          (_%hd251626251681%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251625251678%_))))
                                      (_%__match253447253448%_
                                       _%e251616251654%_
                                       _%hd251617251657%_
                                       _%tl251618251659%_
                                       _%e251619251662%_
                                       _%hd251620251665%_
                                       _%tl251621251667%_
                                       _%e251622251670%_
                                       _%hd251623251673%_
                                       _%tl251624251675%_
                                       _%e251625251678%_
                                       _%hd251626251681%_
                                       _%tl251627251683%_)))
                                  (_%__kont253416253417%_))
                              (_%__kont253416253417%_))))
                      (_%__kont253416253417%_))
                  (_%__kont253416253417%_))
              (_%__kont253416253417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont253416253417%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g251609251649%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self251320%_ _%ctx251321%_ _%stx251322%_ _%args251323%_)
        (let* ((_%self251326%_ _%self251320%_)
               (_%arguments-ok?251336%_
                (let ((__method253891
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251326%_ 'check-arguments))))
                  (if __method253891
                      (let ()
                        (declare (not safe))
                        (__method253891
                         _%self251326%_
                         _%ctx251321%_
                         _%stx251322%_
                         _%args251323%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251326%_
                                 'check-arguments))
                        '#!void))))
               (_%g251338251348%_
                (lambda (_%g251339251345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251339251345%_))))
               (_%g251337251412%_
                (lambda (_%g251339251351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251339251351%_))
                      (let ((_%e251341251353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251339251351%_))))
                        (let ((_%hd251342251356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251341251353%_)))
                              (_%tl251343251358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251341251353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl251343251358%_))
                              ((lambda (_%g251340251361%_)
                                 (let* ((_%klass251374%_
                                         (let ((__tmp253948
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251326%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx251322%_
                                            __tmp253948)))
                                        (_%field251376%_
                                         (let ((__tmp253949
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self251326%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass251374%_
                                            __tmp253949)))
                                        (_%object251378%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx251321%_
                                            _%g251340251361%_)))
                                        (_%klass251381%_ _%klass251374%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass251381%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp253950
                                              (cons (if (or _%arguments-ok?251336%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251326%_
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
                                 _%self251326%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field251376%_ '()))
                        (cons _%object251378%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp253950
                                          _%stx251322%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251381%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp253951
                                                  (cons (if (or _%arguments-ok?251336%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251326%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251326%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251376%_ '()))
                            (cons _%object251378%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253951
                                              _%stx251322%_))
                                           (let ((_%$e251400%_
                                                  (let ((__tmp253952
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251326%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass251381%_
                                                     __tmp253952))))
                                             (if _%$e251400%_
                                                 ((lambda (_%klass251403%_)
                                                    (let ((__tmp253953
                                                           (cons (if (or _%arguments-ok?251336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251326%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self251326%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field251376%_ '()))
                                     (cons _%object251378%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp253953 _%stx251322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e251400%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self251326%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp253954
                                                            (let ((_%$obj251409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp253955
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp253955))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj251409%_ '())
                                              (cons _%object251378%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass251381%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj251409%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251326%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251376%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251409%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?251336%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj251409%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251326%_
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
                                                             _%self251326%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj251409%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self251326%_
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
               (gxc#xform-wrap-source __tmp253954 _%stx251322%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp253956
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object251378%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251326%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp253956 _%stx251322%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd251342251356%_)
                              (_%g251338251348%_ _%g251339251351%_))))
                      (_%g251338251348%_ _%g251339251351%_)))))
          (_%g251337251412%_ _%args251323%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass253178 __method-table253179)
        (let ((__check-arguments253180
               (let ((__tmp253957
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
                 (__make-promise __tmp253957)))
              (__slot253182
               (let ((__slot253183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass253178 'slot))))
                 (if __slot253183
                     __slot253183
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self251320%_ _%ctx251321%_ _%stx251322%_ _%args251323%_)
            (let* ((_%self251326%_ _%self251320%_)
                   (_%arguments-ok?251336%_
                    ((force __check-arguments253180)
                     _%self251326%_
                     _%ctx251321%_
                     _%stx251322%_
                     _%args251323%_))
                   (_%g251338251348%_
                    (lambda (_%g251339251345%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251339251345%_))))
                   (_%g251337251412%_
                    (lambda (_%g251339251351%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251339251351%_))
                          (let ((_%e251341251353%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251339251351%_))))
                            (let ((_%hd251342251356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251341251353%_)))
                                  (_%tl251343251358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251341251353%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl251343251358%_))
                                  ((lambda (_%g251340251361%_)
                                     (let* ((_%klass251374%_
                                             (let ((__tmp253958
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251326%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx251322%_
                                                __tmp253958)))
                                            (_%field251376%_
                                             (let ((__tmp253959
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self251326%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass251374%_
                                                __tmp253959)))
                                            (_%object251378%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx251321%_
                                                _%g251340251361%_)))
                                            (_%klass251381%_ _%klass251374%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass251381%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp253960
                                                  (cons (if (or _%arguments-ok?251336%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251326%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251326%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field251376%_ '()))
                            (cons _%object251378%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp253960
                                              _%stx251322%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251381%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253961
                                                      (cons (if (or _%arguments-ok?251336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251326%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251326%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251376%_ '()))
                                (cons _%object251378%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253961
                                                  _%stx251322%_))
                                               (let ((_%$e251400%_
                                                      (let ((__tmp253962
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self251326%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass251381%_ __tmp253962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e251400%_
                                                     ((lambda (_%klass251403%_)
                                                        (let ((__tmp253963
                                                               (cons (if (or _%arguments-ok?251336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251326%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self251326%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field251376%_ '()))
                                         (cons _%object251378%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253963 _%stx251322%_)))
              _%$e251400%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self251326%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp253964
                                                                (let ((_%$obj251409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253965
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp253965))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj251409%_ '())
                                                  (cons _%object251378%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass251381%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj251409%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251326%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251376%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj251409%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?251336%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251409%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251326%_
                               __slot253182
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
                        (##unchecked-structure-ref _%self251326%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj251409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self251326%_
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
                   (gxc#xform-wrap-source __tmp253964 _%stx251322%_))
                 (let ((__tmp253966
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object251378%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251326%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp253966 _%stx251322%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd251342251356%_)
                                  (_%g251338251348%_ _%g251339251351%_))))
                          (_%g251338251348%_ _%g251339251351%_)))))
              (_%g251337251412%_ _%args251323%_))))))
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
      (lambda (_%self251084%_ _%ctx251085%_ _%stx251086%_ _%args251087%_)
        (let* ((_%self251090%_ _%self251084%_)
               (_%arguments-ok?251100%_
                (let ((__method253892
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self251090%_ 'check-arguments))))
                  (if __method253892
                      (let ()
                        (declare (not safe))
                        (__method253892
                         _%self251090%_
                         _%ctx251085%_
                         _%stx251086%_
                         _%args251087%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self251090%_
                                 'check-arguments))
                        '#!void))))
               (_%g251102251116%_
                (lambda (_%g251103251113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g251103251113%_))))
               (_%g251101251195%_
                (lambda (_%g251103251119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g251103251119%_))
                      (let ((_%e251106251121%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g251103251119%_))))
                        (let ((_%hd251107251124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e251106251121%_)))
                              (_%tl251108251126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e251106251121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251108251126%_))
                              (let ((_%e251109251129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251108251126%_))))
                                (let ((_%hd251110251132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251109251129%_)))
                                      (_%tl251111251134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251109251129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl251111251134%_))
                                      ((lambda (_%g251104251137%_
                                                _%g251105251138%_)
                                         (let* ((_%klass251154%_
                                                 (let ((__tmp253967
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251090%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx251086%_
                                                    __tmp253967)))
                                                (_%field251156%_
                                                 (let ((__tmp253968
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self251090%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass251154%_
                                                    __tmp253968)))
                                                (_%object251158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251085%_
                                                    _%g251105251138%_)))
                                                (_%value251160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx251085%_
                                                    _%g251104251137%_)))
                                                (_%klass251163%_
                                                 _%klass251154%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass251163%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp253969
                                                      (cons (if (or _%arguments-ok?251100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self251090%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251090%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field251156%_ '()))
                                (cons _%object251158%_
                                      (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp253969
                                                  _%stx251086%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251163%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp253970
                                                          (cons (if (or _%arguments-ok?251100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251090%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251090%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251156%_ '()))
                                    (cons _%object251158%_
                                          (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp253970
                                                      _%stx251086%_))
                                                   (let ((_%$e251183%_
                                                          (let ((__tmp253971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251090%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass251163%_
                     __tmp253971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e251183%_
                                                         ((lambda (_%klass251186%_)
                                                            (let ((__tmp253972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?251100%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251090%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self251090%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field251156%_ '()))
                                             (cons _%object251158%_
                                                   (cons _%value251160%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253972 _%stx251086%_)))
                  _%$e251183%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self251090%_ '4 '#f '#f))
                     (let ((__tmp253973
                            (let ((_%$obj251192%_
                                   (let ((__tmp253974
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp253974))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj251192%_ '())
                                                      (cons _%object251158%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass251163%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj251192%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251090%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field251156%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj251192%_
                                                              '()))
                                                  (cons _%value251160%_
                                                        '())))))
                          (cons (if _%arguments-ok?251100%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self251090%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value251160%_ '())))))
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
                             _%self251090%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj251192%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self251090%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253973 _%stx251086%_))
                     (let ((__tmp253975
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object251158%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self251090%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value251160%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp253975
                        _%stx251086%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd251110251132%_
                                       _%hd251107251124%_)
                                      (_%g251102251116%_ _%g251103251119%_))))
                              (_%g251102251116%_ _%g251103251119%_))))
                      (_%g251102251116%_ _%g251103251119%_)))))
          (_%g251101251195%_ _%args251087%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass253184 __method-table253185)
        (let ((__check-arguments253186
               (let ((__tmp253976
                      (lambda ()
                        (let ((__method253187
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table253185
                                  'check-arguments
                                  '#f))))
                          (if __method253187
                              __method253187
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp253976))))
          (lambda (_%self251084%_ _%ctx251085%_ _%stx251086%_ _%args251087%_)
            (let* ((_%self251090%_ _%self251084%_)
                   (_%arguments-ok?251100%_
                    ((force __check-arguments253186)
                     _%self251090%_
                     _%ctx251085%_
                     _%stx251086%_
                     _%args251087%_))
                   (_%g251102251116%_
                    (lambda (_%g251103251113%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g251103251113%_))))
                   (_%g251101251195%_
                    (lambda (_%g251103251119%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g251103251119%_))
                          (let ((_%e251106251121%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g251103251119%_))))
                            (let ((_%hd251107251124%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251106251121%_)))
                                  (_%tl251108251126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251106251121%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl251108251126%_))
                                  (let ((_%e251109251129%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl251108251126%_))))
                                    (let ((_%hd251110251132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e251109251129%_)))
                                          (_%tl251111251134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e251109251129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl251111251134%_))
                                          ((lambda (_%g251104251137%_
                                                    _%g251105251138%_)
                                             (let* ((_%klass251154%_
                                                     (let ((__tmp253977
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251090%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx251086%_
                                                        __tmp253977)))
                                                    (_%field251156%_
                                                     (let ((__tmp253978
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self251090%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass251154%_
                                                        __tmp253978)))
                                                    (_%object251158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251085%_
                                                        _%g251105251138%_)))
                                                    (_%value251160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx251085%_
                                                        _%g251104251137%_)))
                                                    (_%klass251163%_
                                                     _%klass251154%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass251163%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp253979
                                                          (cons (if (or _%arguments-ok?251100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self251090%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251090%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field251156%_ '()))
                                    (cons _%object251158%_
                                          (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp253979
                                                      _%stx251086%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass251163%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp253980
                                                              (cons (if (or _%arguments-ok?251100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self251090%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self251090%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field251156%_ '()))
                                        (cons _%object251158%_
                                              (cons _%value251160%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp253980 _%stx251086%_))
               (let ((_%$e251183%_
                      (let ((__tmp253981
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self251090%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass251163%_
                         __tmp253981))))
                 (if _%$e251183%_
                     ((lambda (_%klass251186%_)
                        (let ((__tmp253982
                               (cons (if (or _%arguments-ok?251100%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self251090%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self251090%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field251156%_
                                                             '()))
                                                 (cons _%object251158%_
                                                       (cons _%value251160%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp253982 _%stx251086%_)))
                      _%$e251183%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self251090%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp253983
                                (let ((_%$obj251192%_
                                       (let ((__tmp253984
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp253984))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj251192%_
                                                                '())
                                                          (cons _%object251158%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass251163%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj251192%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self251090%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field251156%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj251192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value251160%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?251100%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj251192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self251090%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value251160%_ '())))))
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
                                 _%self251090%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj251192%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self251090%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp253983 _%stx251086%_))
                         (let ((__tmp253985
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object251158%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251090%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value251160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp253985
                            _%stx251086%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd251110251132%_
                                           _%hd251107251124%_)
                                          (_%g251102251116%_
                                           _%g251103251119%_))))
                                  (_%g251102251116%_ _%g251103251119%_))))
                          (_%g251102251116%_ _%g251103251119%_)))))
              (_%g251101251195%_ _%args251087%_))))))
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
      (lambda (_%self250900%_ _%ctx250901%_ _%stx250902%_ _%args250903%_)
        (let* ((_%self250906%_ _%self250900%_)
               (_%self250915250925%_ _%self250906%_)
               (_%E250917250928%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self250915250925%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K250918250938%_
                (lambda (_%inline250931%_ _%dispatch250932%_ _%arity250933%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self250906%_
                         _%args250903%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx250902%_
                         _%arity250933%_)))
                  (if _%inline250931%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp253986 (_%inline250931%_ _%stx250902%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp253986
                           _%stx250902%_
                           _%ctx250901%_)))
                      (if (and _%dispatch250932%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch250932%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch250932%_))
                            (let ((__tmp253987
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch250932%_
                                                           '()))
                                               _%args250903%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp253987
                               _%stx250902%_
                               _%ctx250901%_)))
                          (gxc#!procedure::optimize-call
                           _%self250906%_
                           _%ctx250901%_
                           _%stx250902%_
                           _%args250903%_)))))
               (_%e250919250941%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250915250925%_ '1 '#f '#f)))
               (_%e250920250944%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250915250925%_ '2 '#f '#f)))
               (_%e250921250947%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250915250925%_ '3 '#f '#f)))
               (_%arity250950%_ _%e250921250947%_)
               (_%e250922250952%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250915250925%_ '4 '#f '#f)))
               (_%dispatch250955%_ _%e250922250952%_)
               (_%e250923250957%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250915250925%_ '5 '#f '#f)))
               (_%inline250960%_ _%e250923250957%_))
          (_%K250918250938%_
           _%inline250960%_
           _%dispatch250955%_
           _%arity250950%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self250752%_ _%ctx250753%_ _%stx250754%_ _%args250755%_)
        (let* ((_%self250758%_ _%self250752%_)
               (_%$e250772%_
                (let ((__tmp253989
                       (lambda (_%g250767250769%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g250767250769%_
                            _%args250755%_))))
                      (__tmp253988
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self250758%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp253989 __tmp253988))))
          (if _%$e250772%_
              ((lambda (_%clause250775%_)
                 (let ((__method253893
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause250775%_ 'optimize-call))))
                   (if __method253893
                       (let ()
                         (declare (not safe))
                         (__method253893
                          _%clause250775%_
                          _%ctx250753%_
                          _%stx250754%_
                          _%args250755%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause250775%_
                                  'optimize-call))
                         '#!void))))
               _%$e250772%_)
              (let ((__tmp253990
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self250758%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx250754%_
                 __tmp253990))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self250493%_ _%ctx250494%_ _%stx250495%_ _%args250496%_)
        (let* ((_%self250499%_ _%self250493%_)
               (_%self250508250517%_ _%self250499%_)
               (_%E250510250520%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self250508250517%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K250511250611%_
                (lambda (_%dispatch250523%_ _%table250524%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch250523%_))
                      (let* ((_%g250525250535%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch250523%_)))
                             (_%else250527250543%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch250523%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx250494%_
                                   _%stx250495%_))))
                             (_%K250529250592%_
                              (lambda (_%main250546%_ _%keys250547%_)
                                (let ((_g253991_
                                       (gxc#!kw-lambda-split-args
                                        _%stx250495%_
                                        _%args250496%_)))
                                  (begin
                                    (let ((_g253992_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g253991_)
                                                 (##values-length _g253991_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g253992_ 2)))
                                          (error "Context expects 2 values"
                                                 _g253992_)))
                                    (let ((_%pargs250549%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g253991_ 0)))
                                          (_%kwargs250550%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g253991_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main250546%_))
                                        (if _%table250524%_
                                            (let ((_%xargs250558%_
                                                   (map (lambda (_%key250552%_)
                                                          (let ((_%$e250554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key250552%_ _%kwargs250550%_))))
                    (if _%$e250554%_ _%$e250554%_ '(%#ref absent-value))))
                _%keys250547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw250560%_)
                                                 (if (memq (car _%kw250560%_)
                                                           _%keys250547%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx250495%_
                                                        _%keys250547%_
                                                        _%kw250560%_))))
                                               _%kwargs250550%_)
                                              (let ((__tmp253993
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main250546%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs250549%_
                                  _%xargs250558%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp253993
                                                 _%stx250495%_
                                                 _%ctx250494%_)))
                                            (let* ((_%kwt250562%_
                                                    (let ((__tmp253994
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253994)))
                                                   (_%kwvars250566%_
                                                    (map (lambda (_%_250564%_)
                                                           (let ((__tmp253995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp253995)))
                 _%kwargs250550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind250571%_
                                                    (map (lambda (_%kw250568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250569%_)
                   (cons (cons _%kwvar250569%_ '())
                         (cons (cdr _%kw250568%_) '())))
                 _%kwargs250550%_
                 _%kwvars250566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset250576%_
                                                    (map (lambda (_%kw250573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250574%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt250562%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw250573%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar250574%_
                                                             '()))
                                                 '()))))))
                 _%kwargs250550%_
                 _%kwvars250566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs250581%_
                                                    (map (lambda (_%kw250578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar250579%_)
                   (cons (car _%kw250578%_)
                         (cons '%#ref (cons _%kwvar250579%_ '()))))
                 _%kwargs250550%_
                 _%kwvars250566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs250589%_
                                                    (map (lambda (_%key250583%_)
                                                           (let ((_%$e250585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key250583%_ _%xkwargs250581%_))))
                     (if _%$e250585%_ _%$e250585%_ '(%#ref absent-value))))
                 _%keys250547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp253996
                                                    (cons '%#let-values
                                                          (cons _%kwbind250571%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt250562%_ '())
                                                      (cons (let ((__tmp253997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs250550%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253997 _%stx250495%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp253998
                                                             (cons (let ((__tmp253999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main250546%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt250562%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs250549%_
                                                       _%xargs250589%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp253999 _%stx250495%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp253998 _%kwset250576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp253996
                                               _%stx250495%_
                                               _%ctx250494%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g250525250535%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e250530250595%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250525250535%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e250531250598%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250525250535%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e250532250601%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250525250535%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys250604%_ _%e250532250601%_)
                                   (_%e250533250606%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g250525250535%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main250609%_ _%e250533250606%_))
                              (_%K250529250592%_
                               _%main250609%_
                               _%keys250604%_))
                            (_%else250527250543%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx250494%_ _%stx250495%_)))))
               (_%e250512250614%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250508250517%_ '1 '#f '#f)))
               (_%e250513250617%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250508250517%_ '2 '#f '#f)))
               (_%e250514250620%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250508250517%_ '3 '#f '#f)))
               (_%table250623%_ _%e250514250620%_)
               (_%e250515250625%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self250508250517%_ '4 '#f '#f)))
               (_%dispatch250628%_ _%e250515250625%_))
          (_%K250511250611%_ _%dispatch250628%_ _%table250623%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx250106%_ _%args250107%_)
        (let _%lp250109%_ ((_%rest250111%_ _%args250107%_)
                           (_%pargs250112%_ '())
                           (_%kwargs250113%_ '()))
          (let* ((_%__stx253452253453%_ _%rest250111%_)
                 (_%g250119250171%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx253452253453%_)))))
            (let ((_%__kont253454253455%_
                   (lambda (_%g250121250350%_ _%g250122250351%_)
                     (_%lp250109%_
                      _%g250121250350%_
                      (cons _%g250122250351%_ _%pargs250112%_)
                      _%kwargs250113%_)))
                  (_%__kont253456253457%_
                   (lambda (_%g250136250296%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g250136250296%_
                                _%pargs250112%_))
                             (reverse _%kwargs250113%_))))
                  (_%__kont253458253459%_
                   (lambda (_%g250147250243%_
                            _%g250148250244%_
                            _%g250149250245%_)
                     (let ((_%kw250262%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g250149250245%_))))
                       (if (assq _%kw250262%_ _%kwargs250113%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx250106%_
                              _%kw250262%_))
                           (_%lp250109%_
                            _%g250147250243%_
                            _%pargs250112%_
                            (cons (cons _%kw250262%_ _%g250148250244%_)
                                  _%kwargs250113%_))))))
                  (_%__kont253460253461%_
                   (lambda (_%g250162250191%_ _%g250163250192%_)
                     (_%lp250109%_
                      _%g250162250191%_
                      (cons _%g250163250192%_ _%pargs250112%_)
                      _%kwargs250113%_)))
                  (_%__kont253462253463%_
                   (lambda ()
                     (values (reverse _%pargs250112%_)
                             (reverse _%kwargs250113%_)))))
              (let ((_%__match253559253560%_
                     (lambda (_%e250150250211%_
                              _%hd250151250214%_
                              _%tl250152250216%_
                              _%e250153250219%_
                              _%hd250154250222%_
                              _%tl250155250224%_
                              _%e250156250227%_
                              _%hd250157250230%_
                              _%tl250158250232%_
                              _%e250159250235%_
                              _%hd250160250238%_
                              _%tl250161250240%_)
                       (let ((_%g250147250243%_ _%tl250161250240%_)
                             (_%g250148250244%_ _%hd250160250238%_)
                             (_%g250149250245%_ _%hd250157250230%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g250149250245%_))
                             (_%__kont253458253459%_
                              _%g250147250243%_
                              _%g250148250244%_
                              _%g250149250245%_)
                             (_%__kont253460253461%_
                              _%tl250152250216%_
                              _%hd250151250214%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx253452253453%_))
                    (let ((_%e250123250315%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx253452253453%_))))
                      (let ((_%tl250125250320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250123250315%_)))
                            (_%hd250124250318%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250123250315%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd250124250318%_))
                            (let ((_%e250126250323%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd250124250318%_))))
                              (let ((_%tl250128250328%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e250126250323%_)))
                                    (_%hd250127250326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e250126250323%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd250127250326%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd250127250326%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl250128250328%_))
                                            (let ((_%e250129250331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl250128250328%_))))
                                              (let ((_%tl250131250336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e250129250331%_)))
                                                    (_%hd250130250334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e250129250331%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd250130250334%_))
                                                    (let ((_%e250132250339%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd250130250334%_))))
                                                      (if (equal? _%e250132250339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250131250336%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250125250320%_))
                          (let ((_%e250133250342%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250125250320%_))))
                            (let ((_%tl250135250347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250133250342%_)))
                                  (_%hd250134250345%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250133250342%_))))
                              (_%__kont253454253455%_
                               _%tl250135250347%_
                               _%hd250134250345%_)))
                          (_%__kont253460253461%_
                           _%tl250125250320%_
                           _%hd250124250318%_))
                      (_%__kont253460253461%_
                       _%tl250125250320%_
                       _%hd250124250318%_))
                  (if (equal? _%e250132250339%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250131250336%_))
                          (_%__kont253456253457%_ _%tl250125250320%_)
                          (_%__kont253460253461%_
                           _%tl250125250320%_
                           _%hd250124250318%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250131250336%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250125250320%_))
                              (let ((_%e250159250235%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250125250320%_))))
                                (let ((_%tl250161250240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250159250235%_)))
                                      (_%hd250160250238%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250159250235%_))))
                                  (_%__match253559253560%_
                                   _%e250123250315%_
                                   _%hd250124250318%_
                                   _%tl250125250320%_
                                   _%e250126250323%_
                                   _%hd250127250326%_
                                   _%tl250128250328%_
                                   _%e250129250331%_
                                   _%hd250130250334%_
                                   _%tl250131250336%_
                                   _%e250159250235%_
                                   _%hd250160250238%_
                                   _%tl250161250240%_)))
                              (_%__kont253460253461%_
                               _%tl250125250320%_
                               _%hd250124250318%_))
                          (_%__kont253460253461%_
                           _%tl250125250320%_
                           _%hd250124250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250131250336%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl250125250320%_))
                                                            (let ((_%e250159250235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl250125250320%_))))
                      (let ((_%tl250161250240%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e250159250235%_)))
                            (_%hd250160250238%_
                             (let ()
                               (declare (not safe))
                               (##car _%e250159250235%_))))
                        (_%__match253559253560%_
                         _%e250123250315%_
                         _%hd250124250318%_
                         _%tl250125250320%_
                         _%e250126250323%_
                         _%hd250127250326%_
                         _%tl250128250328%_
                         _%e250129250331%_
                         _%hd250130250334%_
                         _%tl250131250336%_
                         _%e250159250235%_
                         _%hd250160250238%_
                         _%tl250161250240%_)))
                    (_%__kont253460253461%_
                     _%tl250125250320%_
                     _%hd250124250318%_))
                (_%__kont253460253461%_
                 _%tl250125250320%_
                 _%hd250124250318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont253460253461%_
                                             _%tl250125250320%_
                                             _%hd250124250318%_))
                                        (_%__kont253460253461%_
                                         _%tl250125250320%_
                                         _%hd250124250318%_))
                                    (_%__kont253460253461%_
                                     _%tl250125250320%_
                                     _%hd250124250318%_))))
                            (_%__kont253460253461%_
                             _%tl250125250320%_
                             _%hd250124250318%_))))
                    (_%__kont253462253463%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self250090%_ _%ctx250091%_ _%stx250092%_ _%args250093%_)
        (let ((_%self250096%_ _%self250090%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx250091%_ _%stx250092%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self249780%_ _%stx249781%_)
        (let* ((_%__stx253568253569%_ _%stx249781%_)
               (_%g249784249824%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253568253569%_)))))
          (let ((_%__kont253570253571%_
                 (lambda (_%g249786249928%_ _%g249787249929%_)
                   (let ((_%$e249956%_
                          (member 'return:
                                  (let ((__tmp254000
                                         (lambda (_%g249948249951%_
                                                  _%g249949249953%_)
                                           (cons _%g249948249951%_
                                                 _%g249949249953%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp254000
                                     '()
                                     _%g249787249929%_))
                                  gx#stx-eq?)))
                     (if _%$e249956%_
                         ((lambda (_%tail249959%_)
                            (let ((_%type249961%_
                                   (let ((__tmp254001
                                          (let ((__tmp254002
                                                 (cadr _%tail249959%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp254002))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx249781%_
                                      __tmp254001))))
                              (gxc#check-return-type!
                               _%stx249781%_
                               _%g249786249928%_
                               _%type249961%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self249780%_
                                 _%g249786249928%_))))
                          _%$e249956%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self249780%_
                            _%g249786249928%_))))))
                (_%__kont253574253575%_
                 (lambda (_%g249809249853%_ _%g249810249854%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self249780%_ _%g249809249853%_)))))
            (let ((_%__match253605253606%_
                   (lambda (_%e249788249874%_
                            _%hd249789249877%_
                            _%tl249790249879%_
                            _%e249791249882%_
                            _%hd249792249885%_
                            _%tl249793249887%_
                            _%e249794249890%_
                            _%hd249795249893%_
                            _%tl249796249895%_
                            _%__splice253572253573%_
                            _%target249797249898%_
                            _%tl249799249900%_)
                     (letrec ((_%loop249800249903%_
                               (lambda (_%hd249798249906%_
                                        _%signature249804249908%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd249798249906%_))
                                     (let ((_%e249801249910%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd249798249906%_))))
                                       (let ((_%lp-tl249803249915%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e249801249910%_)))
                                             (_%lp-hd249802249913%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e249801249910%_))))
                                         (_%loop249800249903%_
                                          _%lp-tl249803249915%_
                                          (cons _%lp-hd249802249913%_
                                                _%signature249804249908%_))))
                                     (let ((_%signature249805249918%_
                                            (reverse _%signature249804249908%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl249793249887%_))
                                           (let ((_%e249806249920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl249793249887%_))))
                                             (let ((_%tl249808249925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e249806249920%_)))
                                                   (_%hd249807249923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e249806249920%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl249808249925%_))
                                                   (_%__kont253570253571%_
                                                    _%hd249807249923%_
                                                    _%signature249805249918%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g249784249824%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g249784249824%_))))))))
                       (_%loop249800249903%_ _%target249797249898%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253568253569%_))
                  (let ((_%e249788249874%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253568253569%_))))
                    (let ((_%tl249790249879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249788249874%_)))
                          (_%hd249789249877%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249788249874%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249790249879%_))
                          (let ((_%e249791249882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249790249879%_))))
                            (let ((_%tl249793249887%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249791249882%_)))
                                  (_%hd249792249885%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249791249882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249792249885%_))
                                  (let ((_%e249794249890%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249792249885%_))))
                                    (let ((_%tl249796249895%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249794249890%_)))
                                          (_%hd249795249893%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249794249890%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249795249893%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd249795249893%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl249796249895%_))
                                                  (let ((_%__splice253572253573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl249796249895%_
                                                            '0))))
                                                    (let ((_%tl249799249900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253572253573%_
                                                              '1)))
                                                          (_%target249797249898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice253572253573%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249799249900%_))
                                                          (_%__match253605253606%_
                                                           _%e249788249874%_
                                                           _%hd249789249877%_
                                                           _%tl249790249879%_
                                                           _%e249791249882%_
                                                           _%hd249792249885%_
                                                           _%tl249793249887%_
                                                           _%e249794249890%_
                                                           _%hd249795249893%_
                                                           _%tl249796249895%_
                                                           _%__splice253572253573%_
                                                           _%target249797249898%_
                                                           _%tl249799249900%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249793249887%_))
                      (let ((_%e249817249845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249793249887%_))))
                        (let ((_%tl249819249850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249817249845%_)))
                              (_%hd249818249848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249817249845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249819249850%_))
                              (_%__kont253574253575%_
                               _%hd249818249848%_
                               _%hd249792249885%_)
                              (let ()
                                (declare (not safe))
                                (_%g249784249824%_)))))
                      (let () (declare (not safe)) (_%g249784249824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249793249887%_))
                                                      (let ((_%e249817249845%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249793249887%_))))
                (let ((_%tl249819249850%_
                       (let () (declare (not safe)) (##cdr _%e249817249845%_)))
                      (_%hd249818249848%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249817249845%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249819249850%_))
                      (_%__kont253574253575%_
                       _%hd249818249848%_
                       _%hd249792249885%_)
                      (let () (declare (not safe)) (_%g249784249824%_)))))
              (let () (declare (not safe)) (_%g249784249824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249793249887%_))
                                                  (let ((_%e249817249845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249793249887%_))))
                                                    (let ((_%tl249819249850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249817249845%_)))
                                                          (_%hd249818249848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249817249845%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249819249850%_))
                                                          (_%__kont253574253575%_
                                                           _%hd249818249848%_
                                                           _%hd249792249885%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249784249824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249784249824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249793249887%_))
                                              (let ((_%e249817249845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249793249887%_))))
                                                (let ((_%tl249819249850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249817249845%_)))
                                                      (_%hd249818249848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249817249845%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249819249850%_))
                                                      (_%__kont253574253575%_
                                                       _%hd249818249848%_
                                                       _%hd249792249885%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249784249824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249784249824%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249793249887%_))
                                      (let ((_%e249817249845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249793249887%_))))
                                        (let ((_%tl249819249850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249817249845%_)))
                                              (_%hd249818249848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249817249845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249819249850%_))
                                              (_%__kont253574253575%_
                                               _%hd249818249848%_
                                               _%hd249792249885%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g249784249824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249784249824%_))))))
                          (let () (declare (not safe)) (_%g249784249824%_)))))
                  (let () (declare (not safe)) (_%g249784249824%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx249755%_ _%expr249756%_ _%type249757%_)
        (let ((_%$e249759%_ (not _%type249757%_)))
          (if _%$e249759%_
              _%$e249759%_
              (let ((_%$e249762%_
                     (eq? (##structure-ref _%type249757%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e249762%_
                    _%$e249762%_
                    (let ((_%$e249765%_
                           (eq? (##structure-ref
                                 _%type249757%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e249765%_
                          _%$e249765%_
                          (let ((_%expr-type249769%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr249756%_))))
                            (if (not _%expr-type249769%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx249755%_
                                   _%type249757%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type249769%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx249755%_
                                       _%type249757%_
                                       _%expr-type249769%_))
                                    (let ((_%$e249773%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type249769%_
                                              'gxc#!abort::t))))
                                      (if _%$e249773%_
                                          _%$e249773%_
                                          (let ((_%$e249776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type249769%_
                                                    _%type249757%_))))
                                            (if _%$e249776%_
                                                _%$e249776%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx249755%_
                                                   _%type249757%_
                                                   _%expr-type249769%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self249181%_ _%stx249182%_)
        (let* ((_%__stx253650253651%_ _%stx249182%_)
               (_%g249187249297%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx253650253651%_)))))
          (let ((_%__kont253652253653%_
                 (lambda (_%g249189249729%_
                          _%g249190249730%_
                          _%g249191249731%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g249191249731%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self249181%_ _%g249190249730%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self249181%_
                          _%g249189249729%_)))))
                (_%__kont253654253655%_
                 (lambda (_%g249210249555%_
                          _%g249211249556%_
                          _%g249212249557%_
                          _%g249213249558%_)
                   (let ((_%$e249590%_
                          (let ((__tmp254003
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g249213249558%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp254003))))
                     (if _%$e249590%_
                         ((lambda (_%pred-type249593%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type249593%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type249593%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test249598%_
                                        (let ((__tmp254004
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g249213249558%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g249212249557%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp254004
                                           _%stx249182%_
                                           _%self249181%_)))
                                       (_%K249602%_
                                        (let ((__tmp254005
                                               (lambda ()
                                                 (let ((__tmp254008
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self249181%_
                                                             _%g249211249556%_))))
                                                       (__tmp254006
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g249212249557%_))
                            (let ((__tmp254007
                                   (##structure-ref
                                    _%pred-type249593%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx249182%_
                               __tmp254007)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp254008
                                                    gxc#current-compile-path-type
                                                    __tmp254006)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254005)))
                                       (_%E249605%_
                                        (let ((__tmp254009
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self249181%_
                                                    _%g249210249555%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp254009)))
                                       (_%__stx253628253629%_ _%test249598%_)
                                       (_%g249609249623%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx253628253629%_)))))
                                  (let ((_%__kont253630253631%_
                                         (lambda (_%g249611249651%_
                                                  _%g249612249652%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g249611249651%_))
                                               (force _%K249602%_)
                                               (force _%E249605%_))))
                                        (_%__kont253632253633%_
                                         (lambda ()
                                           (let ((__tmp254010
                                                  (cons '%#if
                                                        (cons _%test249598%_
                                                              (cons (force _%K249602%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E249605%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254010
                                              _%stx249182%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx253628253629%_))
                                        (let ((_%e249613249635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx253628253629%_))))
                                          (let ((_%tl249615249640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e249613249635%_)))
                                                (_%hd249614249638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e249613249635%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl249615249640%_))
                                                (let ((_%e249616249643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl249615249640%_))))
                                                  (let ((_%tl249618249648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e249616249643%_)))
                                                        (_%hd249617249646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e249616249643%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl249618249648%_))
                                                        (_%__kont253630253631%_
                                                         _%hd249617249646%_
                                                         _%hd249614249638%_)
                                                        (_%__kont253632253633%_))))
                                                (_%__kont253632253633%_))))
                                        (_%__kont253632253633%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self249181%_
                                   _%stx249182%_))))
                          _%$e249590%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self249181%_
                            _%stx249182%_))))))
                (_%__kont253656253657%_
                 (lambda (_%g249247249431%_
                          _%g249248249432%_
                          _%g249249249433%_
                          _%g249250249434%_)
                   (gxc#optimize-if%
                    _%self249181%_
                    (let ((__tmp254011
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g249249249433%_
                                       (cons _%g249247249431%_
                                             (cons _%g249248249432%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp254011 _%stx249182%_)))))
                (_%__kont253658253659%_
                 (lambda (_%g249278249334%_
                          _%g249279249335%_
                          _%g249280249336%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self249181%_ _%stx249182%_)))))
            (let ((_%__match253857253858%_
                   (lambda (_%e249251249359%_
                            _%hd249252249362%_
                            _%tl249253249364%_
                            _%e249254249367%_
                            _%hd249255249370%_
                            _%tl249256249372%_
                            _%e249257249375%_
                            _%hd249258249378%_
                            _%tl249259249380%_
                            _%e249260249383%_
                            _%hd249261249386%_
                            _%tl249262249388%_
                            _%e249263249391%_
                            _%hd249264249394%_
                            _%tl249265249396%_
                            _%e249266249399%_
                            _%hd249267249402%_
                            _%tl249268249404%_
                            _%e249269249407%_
                            _%hd249270249410%_
                            _%tl249271249412%_
                            _%e249272249415%_
                            _%hd249273249418%_
                            _%tl249274249420%_
                            _%e249275249423%_
                            _%hd249276249426%_
                            _%tl249277249428%_)
                     (let ((_%g249247249431%_ _%hd249276249426%_)
                           (_%g249248249432%_ _%hd249273249418%_)
                           (_%g249249249433%_ _%hd249270249410%_)
                           (_%g249250249434%_ _%hd249267249402%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g249250249434%_ 'not))
                           (_%__kont253656253657%_
                            _%g249247249431%_
                            _%g249248249432%_
                            _%g249249249433%_
                            _%g249250249434%_)
                           (_%__kont253658253659%_
                            _%hd249276249426%_
                            _%hd249273249418%_
                            _%hd249255249370%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx253650253651%_))
                  (let ((_%e249192249681%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx253650253651%_))))
                    (let ((_%tl249194249686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249192249681%_)))
                          (_%hd249193249684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249192249681%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249194249686%_))
                          (let ((_%e249195249689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249194249686%_))))
                            (let ((_%tl249197249694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249195249689%_)))
                                  (_%hd249196249692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249195249689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd249196249692%_))
                                  (let ((_%e249198249697%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd249196249692%_))))
                                    (let ((_%tl249200249702%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249198249697%_)))
                                          (_%hd249199249700%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249198249697%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd249199249700%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd249199249700%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249200249702%_))
                                                  (let ((_%e249201249705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249200249702%_))))
                                                    (let ((_%tl249203249710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249201249705%_)))
                                                          (_%hd249202249708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249201249705%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249203249710%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl249197249694%_))
                      (let ((_%e249204249713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249197249694%_))))
                        (let ((_%tl249206249718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249204249713%_)))
                              (_%hd249205249716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249204249713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249206249718%_))
                              (let ((_%e249207249721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249206249718%_))))
                                (let ((_%tl249209249726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249207249721%_)))
                                      (_%hd249208249724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249207249721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249209249726%_))
                                      (_%__kont253652253653%_
                                       _%hd249208249724%_
                                       _%hd249205249716%_
                                       _%hd249202249708%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249187249297%_)))))
                      (let () (declare (not safe)) (_%g249187249297%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249197249694%_))
                      (let ((_%e249287249318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249197249694%_))))
                        (let ((_%tl249289249323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249287249318%_)))
                              (_%hd249288249321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249287249318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl249289249323%_))
                              (let ((_%e249290249326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl249289249323%_))))
                                (let ((_%tl249292249331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e249290249326%_)))
                                      (_%hd249291249329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e249290249326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249292249331%_))
                                      (_%__kont253658253659%_
                                       _%hd249291249329%_
                                       _%hd249288249321%_
                                       _%hd249196249692%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g249187249297%_)))))
                      (let () (declare (not safe)) (_%g249187249297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249197249694%_))
                                                      (let ((_%e249287249318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249197249694%_))))
                (let ((_%tl249289249323%_
                       (let () (declare (not safe)) (##cdr _%e249287249318%_)))
                      (_%hd249288249321%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249287249318%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249289249323%_))
                      (let ((_%e249290249326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249289249323%_))))
                        (let ((_%tl249292249331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249290249326%_)))
                              (_%hd249291249329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249290249326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249292249331%_))
                              (_%__kont253658253659%_
                               _%hd249291249329%_
                               _%hd249288249321%_
                               _%hd249196249692%_)
                              (let ()
                                (declare (not safe))
                                (_%g249187249297%_)))))
                      (let () (declare (not safe)) (_%g249187249297%_)))))
              (let () (declare (not safe)) (_%g249187249297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd249199249700%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249200249702%_))
                                                      (let ((_%e249223249491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249200249702%_))))
                (let ((_%tl249225249496%_
                       (let () (declare (not safe)) (##cdr _%e249223249491%_)))
                      (_%hd249224249494%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249223249491%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd249224249494%_))
                      (let ((_%e249226249499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd249224249494%_))))
                        (let ((_%tl249228249504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249226249499%_)))
                              (_%hd249227249502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249226249499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd249227249502%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd249227249502%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249228249504%_))
                                      (let ((_%e249229249507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249228249504%_))))
                                        (let ((_%tl249231249512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249229249507%_)))
                                              (_%hd249230249510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249229249507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249231249512%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249225249496%_))
                                                  (let ((_%e249232249515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249225249496%_))))
                                                    (let ((_%tl249234249520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249232249515%_)))
                                                          (_%hd249233249518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249232249515%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd249233249518%_))
                                                          (let ((_%e249235249523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd249233249518%_))))
                    (let ((_%tl249237249528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249235249523%_)))
                          (_%hd249236249526%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249235249523%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd249236249526%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd249236249526%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249237249528%_))
                                  (let ((_%e249238249531%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249237249528%_))))
                                    (let ((_%tl249240249536%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249238249531%_)))
                                          (_%hd249239249534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249238249531%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249240249536%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249234249520%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249197249694%_))
                                                  (let ((_%e249241249539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249197249694%_))))
                                                    (let ((_%tl249243249544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249241249539%_)))
                                                          (_%hd249242249542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249241249539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249243249544%_))
                                                          (let ((_%e249244249547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249243249544%_))))
                    (let ((_%tl249246249552%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249244249547%_)))
                          (_%hd249245249550%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249244249547%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249246249552%_))
                          (_%__kont253654253655%_
                           _%hd249245249550%_
                           _%hd249242249542%_
                           _%hd249239249534%_
                           _%hd249230249510%_)
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249197249694%_))
                                                  (let ((_%e249287249318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249197249694%_))))
                                                    (let ((_%tl249289249323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249287249318%_)))
                                                          (_%hd249288249321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249287249318%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249289249323%_))
                                                          (let ((_%e249290249326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249289249323%_))))
                    (let ((_%tl249292249331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249290249326%_)))
                          (_%hd249291249329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249290249326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249292249331%_))
                          (_%__kont253658253659%_
                           _%hd249291249329%_
                           _%hd249288249321%_
                           _%hd249196249692%_)
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl249234249520%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249197249694%_))
                                                  (let ((_%e249272249415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249197249694%_))))
                                                    (let ((_%tl249274249420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249272249415%_)))
                                                          (_%hd249273249418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249272249415%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249274249420%_))
                                                          (let ((_%e249275249423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249274249420%_))))
                    (let ((_%tl249277249428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249275249423%_)))
                          (_%hd249276249426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249275249423%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249277249428%_))
                          (_%__match253857253858%_
                           _%e249192249681%_
                           _%hd249193249684%_
                           _%tl249194249686%_
                           _%e249195249689%_
                           _%hd249196249692%_
                           _%tl249197249694%_
                           _%e249198249697%_
                           _%hd249199249700%_
                           _%tl249200249702%_
                           _%e249223249491%_
                           _%hd249224249494%_
                           _%tl249225249496%_
                           _%e249226249499%_
                           _%hd249227249502%_
                           _%tl249228249504%_
                           _%e249229249507%_
                           _%hd249230249510%_
                           _%tl249231249512%_
                           _%e249232249515%_
                           _%hd249233249518%_
                           _%tl249234249520%_
                           _%e249272249415%_
                           _%hd249273249418%_
                           _%tl249274249420%_
                           _%e249275249423%_
                           _%hd249276249426%_
                           _%tl249277249428%_)
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249197249694%_))
                                                  (let ((_%e249287249318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249197249694%_))))
                                                    (let ((_%tl249289249323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249287249318%_)))
                                                          (_%hd249288249321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249287249318%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249289249323%_))
                                                          (let ((_%e249290249326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249289249323%_))))
                    (let ((_%tl249292249331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249290249326%_)))
                          (_%hd249291249329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249290249326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249292249331%_))
                          (_%__kont253658253659%_
                           _%hd249291249329%_
                           _%hd249288249321%_
                           _%hd249196249692%_)
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl249234249520%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249197249694%_))
                                          (let ((_%e249272249415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249197249694%_))))
                                            (let ((_%tl249274249420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249272249415%_)))
                                                  (_%hd249273249418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249272249415%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249274249420%_))
                                                  (let ((_%e249275249423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249274249420%_))))
                                                    (let ((_%tl249277249428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249275249423%_)))
                                                          (_%hd249276249426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249275249423%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249277249428%_))
                                                          (_%__match253857253858%_
                                                           _%e249192249681%_
                                                           _%hd249193249684%_
                                                           _%tl249194249686%_
                                                           _%e249195249689%_
                                                           _%hd249196249692%_
                                                           _%tl249197249694%_
                                                           _%e249198249697%_
                                                           _%hd249199249700%_
                                                           _%tl249200249702%_
                                                           _%e249223249491%_
                                                           _%hd249224249494%_
                                                           _%tl249225249496%_
                                                           _%e249226249499%_
                                                           _%hd249227249502%_
                                                           _%tl249228249504%_
                                                           _%e249229249507%_
                                                           _%hd249230249510%_
                                                           _%tl249231249512%_
                                                           _%e249232249515%_
                                                           _%hd249233249518%_
                                                           _%tl249234249520%_
                                                           _%e249272249415%_
                                                           _%hd249273249418%_
                                                           _%tl249274249420%_
                                                           _%e249275249423%_
                                                           _%hd249276249426%_
                                                           _%tl249277249428%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249187249297%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249197249694%_))
                                          (let ((_%e249287249318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249197249694%_))))
                                            (let ((_%tl249289249323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249287249318%_)))
                                                  (_%hd249288249321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249287249318%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249289249323%_))
                                                  (let ((_%e249290249326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249289249323%_))))
                                                    (let ((_%tl249292249331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249290249326%_)))
                                                          (_%hd249291249329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249290249326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249292249331%_))
                                                          (_%__kont253658253659%_
                                                           _%hd249291249329%_
                                                           _%hd249288249321%_
                                                           _%hd249196249692%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249187249297%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249234249520%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249197249694%_))
                                      (let ((_%e249272249415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249197249694%_))))
                                        (let ((_%tl249274249420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249272249415%_)))
                                              (_%hd249273249418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249272249415%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249274249420%_))
                                              (let ((_%e249275249423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249274249420%_))))
                                                (let ((_%tl249277249428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249275249423%_)))
                                                      (_%hd249276249426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249275249423%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249277249428%_))
                                                      (_%__match253857253858%_
                                                       _%e249192249681%_
                                                       _%hd249193249684%_
                                                       _%tl249194249686%_
                                                       _%e249195249689%_
                                                       _%hd249196249692%_
                                                       _%tl249197249694%_
                                                       _%e249198249697%_
                                                       _%hd249199249700%_
                                                       _%tl249200249702%_
                                                       _%e249223249491%_
                                                       _%hd249224249494%_
                                                       _%tl249225249496%_
                                                       _%e249226249499%_
                                                       _%hd249227249502%_
                                                       _%tl249228249504%_
                                                       _%e249229249507%_
                                                       _%hd249230249510%_
                                                       _%tl249231249512%_
                                                       _%e249232249515%_
                                                       _%hd249233249518%_
                                                       _%tl249234249520%_
                                                       _%e249272249415%_
                                                       _%hd249273249418%_
                                                       _%tl249274249420%_
                                                       _%e249275249423%_
                                                       _%hd249276249426%_
                                                       _%tl249277249428%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249187249297%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249187249297%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249197249694%_))
                                      (let ((_%e249287249318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249197249694%_))))
                                        (let ((_%tl249289249323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249287249318%_)))
                                              (_%hd249288249321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249287249318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249289249323%_))
                                              (let ((_%e249290249326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249289249323%_))))
                                                (let ((_%tl249292249331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249290249326%_)))
                                                      (_%hd249291249329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249290249326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249292249331%_))
                                                      (_%__kont253658253659%_
                                                       _%hd249291249329%_
                                                       _%hd249288249321%_
                                                       _%hd249196249692%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249187249297%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249187249297%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249234249520%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249197249694%_))
                                  (let ((_%e249272249415%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249197249694%_))))
                                    (let ((_%tl249274249420%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249272249415%_)))
                                          (_%hd249273249418%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249272249415%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249274249420%_))
                                          (let ((_%e249275249423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249274249420%_))))
                                            (let ((_%tl249277249428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249275249423%_)))
                                                  (_%hd249276249426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249275249423%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249277249428%_))
                                                  (_%__match253857253858%_
                                                   _%e249192249681%_
                                                   _%hd249193249684%_
                                                   _%tl249194249686%_
                                                   _%e249195249689%_
                                                   _%hd249196249692%_
                                                   _%tl249197249694%_
                                                   _%e249198249697%_
                                                   _%hd249199249700%_
                                                   _%tl249200249702%_
                                                   _%e249223249491%_
                                                   _%hd249224249494%_
                                                   _%tl249225249496%_
                                                   _%e249226249499%_
                                                   _%hd249227249502%_
                                                   _%tl249228249504%_
                                                   _%e249229249507%_
                                                   _%hd249230249510%_
                                                   _%tl249231249512%_
                                                   _%e249232249515%_
                                                   _%hd249233249518%_
                                                   _%tl249234249520%_
                                                   _%e249272249415%_
                                                   _%hd249273249418%_
                                                   _%tl249274249420%_
                                                   _%e249275249423%_
                                                   _%hd249276249426%_
                                                   _%tl249277249428%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249197249694%_))
                                  (let ((_%e249287249318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249197249694%_))))
                                    (let ((_%tl249289249323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249287249318%_)))
                                          (_%hd249288249321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249287249318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249289249323%_))
                                          (let ((_%e249290249326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249289249323%_))))
                                            (let ((_%tl249292249331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249290249326%_)))
                                                  (_%hd249291249329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249290249326%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249292249331%_))
                                                  (_%__kont253658253659%_
                                                   _%hd249291249329%_
                                                   _%hd249288249321%_
                                                   _%hd249196249692%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249234249520%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249197249694%_))
                          (let ((_%e249272249415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249197249694%_))))
                            (let ((_%tl249274249420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249272249415%_)))
                                  (_%hd249273249418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249272249415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249274249420%_))
                                  (let ((_%e249275249423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249274249420%_))))
                                    (let ((_%tl249277249428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249275249423%_)))
                                          (_%hd249276249426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249275249423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249277249428%_))
                                          (_%__match253857253858%_
                                           _%e249192249681%_
                                           _%hd249193249684%_
                                           _%tl249194249686%_
                                           _%e249195249689%_
                                           _%hd249196249692%_
                                           _%tl249197249694%_
                                           _%e249198249697%_
                                           _%hd249199249700%_
                                           _%tl249200249702%_
                                           _%e249223249491%_
                                           _%hd249224249494%_
                                           _%tl249225249496%_
                                           _%e249226249499%_
                                           _%hd249227249502%_
                                           _%tl249228249504%_
                                           _%e249229249507%_
                                           _%hd249230249510%_
                                           _%tl249231249512%_
                                           _%e249232249515%_
                                           _%hd249233249518%_
                                           _%tl249234249520%_
                                           _%e249272249415%_
                                           _%hd249273249418%_
                                           _%tl249274249420%_
                                           _%e249275249423%_
                                           _%hd249276249426%_
                                           _%tl249277249428%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))))
                          (let () (declare (not safe)) (_%g249187249297%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249197249694%_))
                          (let ((_%e249287249318%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249197249694%_))))
                            (let ((_%tl249289249323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249287249318%_)))
                                  (_%hd249288249321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249287249318%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249289249323%_))
                                  (let ((_%e249290249326%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249289249323%_))))
                                    (let ((_%tl249292249331%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249290249326%_)))
                                          (_%hd249291249329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249290249326%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249292249331%_))
                                          (_%__kont253658253659%_
                                           _%hd249291249329%_
                                           _%hd249288249321%_
                                           _%hd249196249692%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g249187249297%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249197249694%_))
                                                      (let ((_%e249287249318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249197249694%_))))
                (let ((_%tl249289249323%_
                       (let () (declare (not safe)) (##cdr _%e249287249318%_)))
                      (_%hd249288249321%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249287249318%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249289249323%_))
                      (let ((_%e249290249326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249289249323%_))))
                        (let ((_%tl249292249331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249290249326%_)))
                              (_%hd249291249329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249290249326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249292249331%_))
                              (_%__kont253658253659%_
                               _%hd249291249329%_
                               _%hd249288249321%_
                               _%hd249196249692%_)
                              (let ()
                                (declare (not safe))
                                (_%g249187249297%_)))))
                      (let () (declare (not safe)) (_%g249187249297%_)))))
              (let () (declare (not safe)) (_%g249187249297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249197249694%_))
                                                  (let ((_%e249287249318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249197249694%_))))
                                                    (let ((_%tl249289249323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249287249318%_)))
                                                          (_%hd249288249321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249287249318%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl249289249323%_))
                                                          (let ((_%e249290249326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249289249323%_))))
                    (let ((_%tl249292249331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249290249326%_)))
                          (_%hd249291249329%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249290249326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl249292249331%_))
                          (_%__kont253658253659%_
                           _%hd249291249329%_
                           _%hd249288249321%_
                           _%hd249196249692%_)
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249197249694%_))
                                          (let ((_%e249287249318%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249197249694%_))))
                                            (let ((_%tl249289249323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249287249318%_)))
                                                  (_%hd249288249321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249287249318%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl249289249323%_))
                                                  (let ((_%e249290249326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl249289249323%_))))
                                                    (let ((_%tl249292249331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e249290249326%_)))
                                                          (_%hd249291249329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e249290249326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl249292249331%_))
                                                          (_%__kont253658253659%_
                                                           _%hd249291249329%_
                                                           _%hd249288249321%_
                                                           _%hd249196249692%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g249187249297%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249197249694%_))
                                      (let ((_%e249287249318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249197249694%_))))
                                        (let ((_%tl249289249323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249287249318%_)))
                                              (_%hd249288249321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249287249318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249289249323%_))
                                              (let ((_%e249290249326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249289249323%_))))
                                                (let ((_%tl249292249331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249290249326%_)))
                                                      (_%hd249291249329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249290249326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249292249331%_))
                                                      (_%__kont253658253659%_
                                                       _%hd249291249329%_
                                                       _%hd249288249321%_
                                                       _%hd249196249692%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249187249297%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249187249297%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249197249694%_))
                                  (let ((_%e249287249318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249197249694%_))))
                                    (let ((_%tl249289249323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249287249318%_)))
                                          (_%hd249288249321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249287249318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl249289249323%_))
                                          (let ((_%e249290249326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl249289249323%_))))
                                            (let ((_%tl249292249331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e249290249326%_)))
                                                  (_%hd249291249329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e249290249326%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl249292249331%_))
                                                  (_%__kont253658253659%_
                                                   _%hd249291249329%_
                                                   _%hd249288249321%_
                                                   _%hd249196249692%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g249187249297%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249197249694%_))
                          (let ((_%e249287249318%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249197249694%_))))
                            (let ((_%tl249289249323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249287249318%_)))
                                  (_%hd249288249321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249287249318%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl249289249323%_))
                                  (let ((_%e249290249326%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl249289249323%_))))
                                    (let ((_%tl249292249331%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e249290249326%_)))
                                          (_%hd249291249329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e249290249326%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl249292249331%_))
                                          (_%__kont253658253659%_
                                           _%hd249291249329%_
                                           _%hd249288249321%_
                                           _%hd249196249692%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g249187249297%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))))
                          (let () (declare (not safe)) (_%g249187249297%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl249197249694%_))
                  (let ((_%e249287249318%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl249197249694%_))))
                    (let ((_%tl249289249323%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e249287249318%_)))
                          (_%hd249288249321%_
                           (let ()
                             (declare (not safe))
                             (##car _%e249287249318%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl249289249323%_))
                          (let ((_%e249290249326%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl249289249323%_))))
                            (let ((_%tl249292249331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e249290249326%_)))
                                  (_%hd249291249329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e249290249326%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl249292249331%_))
                                  (_%__kont253658253659%_
                                   _%hd249291249329%_
                                   _%hd249288249321%_
                                   _%hd249196249692%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g249187249297%_)))))
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249197249694%_))
                                                      (let ((_%e249287249318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249197249694%_))))
                (let ((_%tl249289249323%_
                       (let () (declare (not safe)) (##cdr _%e249287249318%_)))
                      (_%hd249288249321%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249287249318%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl249289249323%_))
                      (let ((_%e249290249326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl249289249323%_))))
                        (let ((_%tl249292249331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e249290249326%_)))
                              (_%hd249291249329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e249290249326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl249292249331%_))
                              (_%__kont253658253659%_
                               _%hd249291249329%_
                               _%hd249288249321%_
                               _%hd249196249692%_)
                              (let ()
                                (declare (not safe))
                                (_%g249187249297%_)))))
                      (let () (declare (not safe)) (_%g249187249297%_)))))
              (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249197249694%_))
                                              (let ((_%e249287249318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249197249694%_))))
                                                (let ((_%tl249289249323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249287249318%_)))
                                                      (_%hd249288249321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249287249318%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl249289249323%_))
                                                      (let ((_%e249290249326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl249289249323%_))))
                (let ((_%tl249292249331%_
                       (let () (declare (not safe)) (##cdr _%e249290249326%_)))
                      (_%hd249291249329%_
                       (let ()
                         (declare (not safe))
                         (##car _%e249290249326%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl249292249331%_))
                      (_%__kont253658253659%_
                       _%hd249291249329%_
                       _%hd249288249321%_
                       _%hd249196249692%_)
                      (let () (declare (not safe)) (_%g249187249297%_)))))
              (let () (declare (not safe)) (_%g249187249297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g249187249297%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl249197249694%_))
                                      (let ((_%e249287249318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl249197249694%_))))
                                        (let ((_%tl249289249323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e249287249318%_)))
                                              (_%hd249288249321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e249287249318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl249289249323%_))
                                              (let ((_%e249290249326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl249289249323%_))))
                                                (let ((_%tl249292249331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e249290249326%_)))
                                                      (_%hd249291249329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e249290249326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl249292249331%_))
                                                      (_%__kont253658253659%_
                                                       _%hd249291249329%_
                                                       _%hd249288249321%_
                                                       _%hd249196249692%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g249187249297%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g249187249297%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g249187249297%_))))))
                          (let () (declare (not safe)) (_%g249187249297%_)))))
                  (let () (declare (not safe)) (_%g249187249297%_))))))))))
