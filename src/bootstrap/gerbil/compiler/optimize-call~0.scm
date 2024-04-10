(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712773531)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191107 (list gxc#::basic-xform::t))
            (__tmp191106 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191107
         '()
         __tmp191106
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190642%_
        (apply make-instance gxc#::optimize-call::t _%$args190642%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191108
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
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp191108)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190634%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190637%_
                (let ((__obj191098
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191098))
               (__tmp191109
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190637%_ _%stx190634%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191109
           gxc#current-compile-method
           _%self190637%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191111 (list gxc#::void::t))
            (__tmp191110 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191111
         '()
         __tmp191110
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190631%_
        (apply make-instance gxc#::check-return-type::t _%$args190631%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191112
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
                  gxc#apply-operands))
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
        (__make-promise __tmp191112)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190623%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190626%_
                (let ((__obj191100
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191100))
               (__tmp191113
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190626%_ _%stx190623%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191113
           gxc#current-compile-method
           _%self190626%_))))
    (define gxc#optimize-call%
      (lambda (_%self190224%_ _%stx190225%_)
        (let* ((_%__stx190711190712%_ _%stx190225%_)
               (_%g190228190274%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190711190712%_)))))
          (let ((_%__kont190713190714%_
                 (lambda (_%L190417%_ _%L190418%_)
                   (let* ((_%rator-id190438%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190418%_)))
                          (_%rator-type190440%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190438%_))))
                     (if (or (not _%rator-type190440%_)
                             (eq? (##structure-ref
                                   _%rator-type190440%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190224%_ _%stx190225%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190440%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191114
                                      (##structure-ref
                                       _%rator-type190440%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190438%_
                                  '" => "
                                  _%rator-type190440%_
                                  '" "
                                  __tmp191114))
                               (let* ((_%optimized190455%_
                                       (let ((__method191101
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190440%_
                                                 'optimize-call))))
                                         (if __method191101
                                             (let ((__tmp191115
                                                    (let ((__tmp191116
                                                           (lambda (_%g190447190450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g190448190452%_)
                     (cons _%g190447190450%_ _%g190448190452%_))))
              (declare (not safe))
              (__foldr1 __tmp191116 '() _%L190417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method191101
                                                _%rator-type190440%_
                                                _%self190224%_
                                                _%stx190225%_
                                                __tmp191115))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type190440%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx190659190660%_
                                       _%optimized190455%_)
                                      (_%g190458190487%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190659190660%_)))))
                                 (let ((_%__kont190661190662%_
                                        (lambda (_%L190555%_ _%L190556%_)
                                          (let* ((_%optimized-rator-id190583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L190556%_)))
                                                 (_%rator-type190588%_
                                                  (let ((_%$e190585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id190583%_))))
                                                    (if _%$e190585%_
                                                        _%$e190585%_
                                                        _%rator-type190440%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type190588%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190583%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type190588%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type190588%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized190455%_
                                                (let ((__tmp191117
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L190556%_ '()))
                           (let ((__tmp191118
                                  (lambda (_%g190596190599%_ _%g190597190601%_)
                                    (cons _%g190596190599%_
                                          _%g190597190601%_))))
                             (declare (not safe))
                             (__foldr1 __tmp191118 '() _%L190555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191117
                                                   _%stx190225%_))))))
                                       (_%__kont190665190666%_
                                        (lambda () _%optimized190455%_)))
                                   (let ((_%__match190708190709%_
                                          (lambda (_%e190462190499%_
                                                   _%hd190463190502%_
                                                   _%tl190464190504%_
                                                   _%e190465190507%_
                                                   _%hd190466190510%_
                                                   _%tl190467190512%_
                                                   _%e190468190515%_
                                                   _%hd190469190518%_
                                                   _%tl190470190520%_
                                                   _%e190471190523%_
                                                   _%hd190472190526%_
                                                   _%tl190473190528%_
                                                   _%__splice190663190664%_
                                                   _%target190474190531%_
                                                   _%tl190476190533%_)
                                            (letrec ((_%loop190477190536%_
                                                      (lambda (_%hd190475190539%_
                                                               _%arg190481190541%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190475190539%_))
                                                            (let ((_%e190478190544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190475190539%_))))
                      (let ((_%lp-tl190480190549%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190478190544%_)))
                            (_%lp-hd190479190547%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190478190544%_))))
                        (_%loop190477190536%_
                         _%lp-tl190480190549%_
                         (cons _%lp-hd190479190547%_ _%arg190481190541%_))))
                    (let ((_%arg190482190552%_ (reverse _%arg190481190541%_)))
                      (_%__kont190661190662%_
                       _%arg190482190552%_
                       _%hd190472190526%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop190477190536%_
                                               _%target190474190531%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190659190660%_))
                                         (let ((_%e190462190499%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190659190660%_))))
                                           (let ((_%tl190464190504%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190462190499%_)))
                                                 (_%hd190463190502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190462190499%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190463190502%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190463190502%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190464190504%_))
                                                         (let ((_%e190465190507%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190464190504%_))))
                   (let ((_%tl190467190512%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190465190507%_)))
                         (_%hd190466190510%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190465190507%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190466190510%_))
                         (let ((_%e190468190515%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190466190510%_))))
                           (let ((_%tl190470190520%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190468190515%_)))
                                 (_%hd190469190518%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190468190515%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190469190518%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190469190518%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190470190520%_))
                                         (let ((_%e190471190523%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190470190520%_))))
                                           (let ((_%tl190473190528%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190471190523%_)))
                                                 (_%hd190472190526%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190471190523%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190473190528%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190467190512%_))
                                                     (let ((_%__splice190663190664%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190467190512%_
                                                               '0))))
                                                       (let ((_%tl190476190533%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190663190664%_ '1)))
                     (_%target190474190531%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190663190664%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190476190533%_))
                     (_%__match190708190709%_
                      _%e190462190499%_
                      _%hd190463190502%_
                      _%tl190464190504%_
                      _%e190465190507%_
                      _%hd190466190510%_
                      _%tl190467190512%_
                      _%e190468190515%_
                      _%hd190469190518%_
                      _%tl190470190520%_
                      _%e190471190523%_
                      _%hd190472190526%_
                      _%tl190473190528%_
                      _%__splice190663190664%_
                      _%target190474190531%_
                      _%tl190476190533%_)
                     (_%__kont190665190666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190665190666%_))
                                                 (_%__kont190665190666%_))))
                                         (_%__kont190665190666%_))
                                     (_%__kont190665190666%_))
                                 (_%__kont190665190666%_))))
                         (_%__kont190665190666%_))))
                 (_%__kont190665190666%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190665190666%_))
                                                 (_%__kont190665190666%_))))
                                         (_%__kont190665190666%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190440%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190440%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191119
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L190418%_
                                                                '()))
                                                    (map (lambda (_%g190607190609%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self190224%_
                                                              _%g190607190609%_)))
                                                         (let ((__tmp191120
                                                                (lambda (_%g190611190614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g190612190616%_)
                          (cons _%g190611190614%_ _%g190612190616%_))))
                   (declare (not safe))
                   (__foldr1 __tmp191120 '() _%L190417%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191119
                                    _%stx190225%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190225%_
                                    _%rator-type190440%_))))))))
                (_%__kont190717190718%_
                 (lambda (_%L190319%_ _%L190320%_)
                   (let ((_%rator-type190337%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190320%_))))
                     (if (and _%rator-type190337%_
                              (eq? (##structure-ref
                                    _%rator-type190337%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type190337%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type190337%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type190337%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp191121
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self190224%_
                                               _%L190320%_))
                                            (map (lambda (_%g190339190341%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self190224%_
                                                      _%g190339190341%_)))
                                                 (let ((__tmp191122
                                                        (lambda (_%g190343190346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g190344190348%_)
                  (cons _%g190343190346%_ _%g190344190348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp191122
                                                    '()
                                                    _%L190319%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191121 _%stx190225%_))
                         (if (or (not _%rator-type190337%_)
                                 (let ((__tmp191123
                                        (##structure-ref
                                         _%rator-type190337%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191123 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190224%_ _%stx190225%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190225%_
                                _%rator-type190337%_))))))))
            (let* ((_%__match190778190779%_
                    (lambda (_%e190255190279%_
                             _%hd190256190282%_
                             _%tl190257190284%_
                             _%e190258190287%_
                             _%hd190259190290%_
                             _%tl190260190292%_
                             _%__splice190719190720%_
                             _%target190261190295%_
                             _%tl190263190297%_)
                      (letrec ((_%loop190264190300%_
                                (lambda (_%hd190262190303%_
                                         _%rand190268190305%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190262190303%_))
                                      (let ((_%e190265190308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190262190303%_))))
                                        (let ((_%lp-tl190267190313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190265190308%_)))
                                              (_%lp-hd190266190311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190265190308%_))))
                                          (_%loop190264190300%_
                                           _%lp-tl190267190313%_
                                           (cons _%lp-hd190266190311%_
                                                 _%rand190268190305%_))))
                                      (let ((_%rand190269190316%_
                                             (reverse _%rand190268190305%_)))
                                        (_%__kont190717190718%_
                                         _%rand190269190316%_
                                         _%hd190259190290%_))))))
                        (_%loop190264190300%_ _%target190261190295%_ '()))))
                   (_%__match190758190759%_
                    (lambda (_%e190232190361%_
                             _%hd190233190364%_
                             _%tl190234190366%_
                             _%e190235190369%_
                             _%hd190236190372%_
                             _%tl190237190374%_
                             _%e190238190377%_
                             _%hd190239190380%_
                             _%tl190240190382%_
                             _%e190241190385%_
                             _%hd190242190388%_
                             _%tl190243190390%_
                             _%__splice190715190716%_
                             _%target190244190393%_
                             _%tl190246190395%_)
                      (letrec ((_%loop190247190398%_
                                (lambda (_%hd190245190401%_
                                         _%rand190251190403%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190245190401%_))
                                      (let ((_%e190248190406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190245190401%_))))
                                        (let ((_%lp-tl190250190411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190248190406%_)))
                                              (_%lp-hd190249190409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190248190406%_))))
                                          (_%loop190247190398%_
                                           _%lp-tl190250190411%_
                                           (cons _%lp-hd190249190409%_
                                                 _%rand190251190403%_))))
                                      (let ((_%rand190252190414%_
                                             (reverse _%rand190251190403%_)))
                                        (_%__kont190713190714%_
                                         _%rand190252190414%_
                                         _%hd190242190388%_))))))
                        (_%loop190247190398%_ _%target190244190393%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190711190712%_))
                  (let ((_%e190232190361%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190711190712%_))))
                    (let ((_%tl190234190366%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190232190361%_)))
                          (_%hd190233190364%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190232190361%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190234190366%_))
                          (let ((_%e190235190369%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190234190366%_))))
                            (let ((_%tl190237190374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190235190369%_)))
                                  (_%hd190236190372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190235190369%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190236190372%_))
                                  (let ((_%e190238190377%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190236190372%_))))
                                    (let ((_%tl190240190382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190238190377%_)))
                                          (_%hd190239190380%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190238190377%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190239190380%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190239190380%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190240190382%_))
                                                  (let ((_%e190241190385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190240190382%_))))
                                                    (let ((_%tl190243190390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190241190385%_)))
                                                          (_%hd190242190388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190241190385%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190243190390%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190237190374%_))
                      (let ((_%__splice190715190716%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190237190374%_
                                '0))))
                        (let ((_%tl190246190395%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190715190716%_ '1)))
                              (_%target190244190393%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190715190716%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190246190395%_))
                              (_%__match190758190759%_
                               _%e190232190361%_
                               _%hd190233190364%_
                               _%tl190234190366%_
                               _%e190235190369%_
                               _%hd190236190372%_
                               _%tl190237190374%_
                               _%e190238190377%_
                               _%hd190239190380%_
                               _%tl190240190382%_
                               _%e190241190385%_
                               _%hd190242190388%_
                               _%tl190243190390%_
                               _%__splice190715190716%_
                               _%target190244190393%_
                               _%tl190246190395%_)
                              (let ()
                                (declare (not safe))
                                (_%g190228190274%_)))))
                      (let () (declare (not safe)) (_%g190228190274%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190237190374%_))
                      (let ((_%__splice190719190720%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190237190374%_
                                '0))))
                        (let ((_%tl190263190297%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190719190720%_ '1)))
                              (_%target190261190295%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190719190720%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190263190297%_))
                              (_%__match190778190779%_
                               _%e190232190361%_
                               _%hd190233190364%_
                               _%tl190234190366%_
                               _%e190235190369%_
                               _%hd190236190372%_
                               _%tl190237190374%_
                               _%__splice190719190720%_
                               _%target190261190295%_
                               _%tl190263190297%_)
                              (let ()
                                (declare (not safe))
                                (_%g190228190274%_)))))
                      (let () (declare (not safe)) (_%g190228190274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190237190374%_))
                                                      (let ((_%__splice190719190720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190237190374%_ '0))))
                (let ((_%tl190263190297%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190719190720%_ '1)))
                      (_%target190261190295%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190719190720%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190263190297%_))
                      (_%__match190778190779%_
                       _%e190232190361%_
                       _%hd190233190364%_
                       _%tl190234190366%_
                       _%e190235190369%_
                       _%hd190236190372%_
                       _%tl190237190374%_
                       _%__splice190719190720%_
                       _%target190261190295%_
                       _%tl190263190297%_)
                      (let () (declare (not safe)) (_%g190228190274%_)))))
              (let () (declare (not safe)) (_%g190228190274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190237190374%_))
                                                  (let ((_%__splice190719190720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190237190374%_
                                                            '0))))
                                                    (let ((_%tl190263190297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190719190720%_
                                                              '1)))
                                                          (_%target190261190295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190719190720%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190263190297%_))
                                                          (_%__match190778190779%_
                                                           _%e190232190361%_
                                                           _%hd190233190364%_
                                                           _%tl190234190366%_
                                                           _%e190235190369%_
                                                           _%hd190236190372%_
                                                           _%tl190237190374%_
                                                           _%__splice190719190720%_
                                                           _%target190261190295%_
                                                           _%tl190263190297%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190228190274%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190228190274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190237190374%_))
                                              (let ((_%__splice190719190720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190237190374%_
                                                        '0))))
                                                (let ((_%tl190263190297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190719190720%_
                                                          '1)))
                                                      (_%target190261190295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190719190720%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190263190297%_))
                                                      (_%__match190778190779%_
                                                       _%e190232190361%_
                                                       _%hd190233190364%_
                                                       _%tl190234190366%_
                                                       _%e190235190369%_
                                                       _%hd190236190372%_
                                                       _%tl190237190374%_
                                                       _%__splice190719190720%_
                                                       _%target190261190295%_
                                                       _%tl190263190297%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190228190274%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190228190274%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190237190374%_))
                                      (let ((_%__splice190719190720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190237190374%_
                                                '0))))
                                        (let ((_%tl190263190297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190719190720%_
                                                  '1)))
                                              (_%target190261190295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190719190720%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190263190297%_))
                                              (_%__match190778190779%_
                                               _%e190232190361%_
                                               _%hd190233190364%_
                                               _%tl190234190366%_
                                               _%e190235190369%_
                                               _%hd190236190372%_
                                               _%tl190237190374%_
                                               _%__splice190719190720%_
                                               _%target190261190295%_
                                               _%tl190263190297%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190228190274%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190228190274%_))))))
                          (let () (declare (not safe)) (_%g190228190274%_)))))
                  (let () (declare (not safe)) (_%g190228190274%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self187177190184%_ _%ctx190186%_ _%stx190187%_ _%args190188%_)
        (let* ((_%self190190%_ _%self187177190184%_)
               (_%self190192%_ _%self190190%_))
          (if (let ((__method191102
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190192%_ 'check-arguments))))
                (if __method191102
                    (let ()
                      (declare (not safe))
                      (__method191102
                       _%self190192%_
                       _%ctx190186%_
                       _%stx190187%_
                       _%args190188%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self190192%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature190202%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190192%_ '2 '#f '#f)))
                     (_%signature190204%_ _%signature190202%_)
                     (_%$e190214%_
                      (if _%signature190204%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190204%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190214%_
                    ((lambda (_%unchecked190217%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190217%_))
                           (let ((__tmp191124
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked190217%_
                                                          '()))
                                              (map (lambda (_%g190218190220%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx190186%_
                                                        _%g190218190220%_)))
                                                   _%args190188%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191124 _%stx190187%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190186%_ _%stx190187%_))))
                     _%$e190214%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190186%_ _%stx190187%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190186%_ _%stx190187%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass190644 __method-table190645)
        (let ((__check-arguments190646
               (let ((__tmp191125
                      (lambda ()
                        (let ((__method190647
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table190645
                                  'check-arguments
                                  '#f))))
                          (if __method190647
                              __method190647
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191125))))
          (lambda (_%self187177190184%_
                   _%ctx190186%_
                   _%stx190187%_
                   _%args190188%_)
            (let* ((_%self190190%_ _%self187177190184%_)
                   (_%self190192%_ _%self190190%_))
              (if ((force __check-arguments190646)
                   _%self190192%_
                   _%ctx190186%_
                   _%stx190187%_
                   _%args190188%_)
                  (let* ((_%signature190202%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190192%_
                             '2
                             '#f
                             '#f)))
                         (_%signature190204%_ _%signature190202%_)
                         (_%$e190214%_
                          (if _%signature190204%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature190204%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e190214%_
                        ((lambda (_%unchecked190217%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked190217%_))
                               (let ((__tmp191126
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked190217%_
                                                              '()))
                                                  (map (lambda (_%g190218190220%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx190186%_
                                                            _%g190218190220%_)))
                                                       _%args190188%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp191126
                                  _%stx190187%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx190186%_
                                  _%stx190187%_))))
                         _%$e190214%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx190186%_ _%stx190187%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx190186%_ _%stx190187%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!procedure::optimize-call
       gxc#!procedure::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self187178189933%_ _%ctx189935%_ _%stx189936%_ _%args189937%_)
        (let* ((_%self189939%_ _%self187178189933%_)
               (_%self189941%_ _%self189939%_)
               (_%signature189950189952%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self189941%_ '2 '#f '#f))))
          (if _%signature189950189952%_
              (let* ((_%signature189955%_ _%signature189950189952%_)
                     (_%argument-types189956189958%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature189955%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types189956189958%_
                    (let* ((_%argument-types189961%_
                            _%argument-types189956189958%_)
                           (_%argument-types189966%_
                            (let ((__tmp191127
                                   (lambda (_%t189964%_)
                                     (if _%t189964%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189936%_
                                            _%t189964%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp191127
                               _%argument-types189961%_))))
                      (let _%loop189968%_ ((_%rest-args189970%_ _%args189937%_)
                                           (_%rest-types189971%_
                                            _%argument-types189966%_)
                                           (_%result189972%_ '#t))
                        (let* ((_%rest-args189973189981%_ _%rest-args189970%_)
                               (_%else189975189989%_
                                (lambda () _%result189972%_))
                               (_%K189977190050%_
                                (lambda (_%rest-args189992%_ _%arg189993%_)
                                  (let* ((_%rest-types189994190005%_
                                          _%rest-types189971%_)
                                         (_%E189998190009%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types189994190005%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K190001190038%_
                                           (lambda (_%rest-types190035%_
                                                    _%type190036%_)
                                             (_%loop189968%_
                                              _%rest-args189992%_
                                              _%rest-types190035%_
                                              (if (gxc#check-expression-type!
                                                   _%stx189936%_
                                                   _%arg189993%_
                                                   _%type190036%_)
                                                  _%result189972%_
                                                  '#f))))
                                          (_%K190000190029%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx189936%_
                                                _%argument-types189966%_))))
                                          (_%K189999190019%_
                                           (lambda (_%tail-type190013%_)
                                             (if (let ((__tmp191128
                                                        (lambda (_%g190014190016%_)
                                                          (gxc#check-expression-type!
                                                           _%stx189936%_
                                                           _%g190014190016%_
                                                           _%tail-type190013%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp191128
                                                    _%rest-args189992%_))
                                                 _%result189972%_
                                                 '#f))))
                                      (let ((_%try-match189996190032%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types189994190005%_))
                                                   (_%K190000190029%_)
                                                   (let ((_%tail-type190022%_
                                                          _%rest-types189994190005%_))
                                                     (_%K189999190019%_
                                                      _%tail-type190022%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types189994190005%_))
                                            (let ((_%tl190003190043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types189994190005%_)))
                                                  (_%hd190002190041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types189994190005%_))))
                                              (let ((_%type190046%_
                                                     _%hd190002190041%_)
                                                    (_%rest-types190048%_
                                                     _%tl190003190043%_))
                                                (_%K190001190038%_
                                                 _%rest-types190048%_
                                                 _%type190046%_)))
                                            (_%try-match189996190032%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args189973189981%_))
                              (let ((_%hd189978190053%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args189973189981%_)))
                                    (_%tl189979190055%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args189973189981%_))))
                                (let* ((_%arg190058%_ _%hd189978190053%_)
                                       (_%rest-args190060%_
                                        _%tl189979190055%_))
                                  (_%K189977190050%_
                                   _%rest-args190060%_
                                   _%arg190058%_)))
                              (_%else189975189989%_)))))
                    '#f))
              '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self187179189742%_ _%ctx189744%_ _%stx189745%_ _%args189746%_)
        (let* ((_%self189748%_ _%self187179189742%_)
               (_%self189750%_ _%self189748%_)
               (_%g189760189770%_
                (lambda (_%g189761189767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189761189767%_))))
               (_%g189759189808%_
                (lambda (_%g189761189773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189761189773%_))
                      (let ((_%e189763189775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189761189773%_))))
                        (let ((_%hd189764189778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189763189775%_)))
                              (_%tl189765189780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189763189775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189765189780%_))
                              ((lambda (_%L189783%_)
                                 (let* ((_%klass189795%_
                                         (let ((__tmp191129
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189750%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189745%_
                                            __tmp191129)))
                                        (_%object189797%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189744%_
                                            _%L189783%_)))
                                        (_%instance?189802%_
                                         (let ((_%$e189799%_
                                                (gxc#expression-type?
                                                 _%object189797%_
                                                 _%klass189795%_)))
                                           (if _%$e189799%_
                                               _%$e189799%_
                                               (gxc#expression-type?
                                                _%L189783%_
                                                _%klass189795%_)))))
                                   (if _%instance?189802%_
                                       (let ((__tmp191130
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object189797%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L189783%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object189797%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191130
                                          _%stx189745%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx189744%_
                                          _%stx189745%_)))))
                               _%hd189764189778%_)
                              (_%g189760189770%_ _%g189761189773%_))))
                      (_%g189760189770%_ _%g189761189773%_)))))
          (_%g189759189808%_ _%args189746%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self187180189536%_ _%ctx189538%_ _%stx189539%_ _%args189540%_)
        (let* ((_%self189542%_ _%self187180189536%_)
               (_%self189544%_ _%self189542%_)
               (_%g189554189564%_
                (lambda (_%g189555189561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189555189561%_))))
               (_%g189553189617%_
                (lambda (_%g189555189567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189555189567%_))
                      (let ((_%e189557189569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189555189567%_))))
                        (let ((_%hd189558189572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189557189569%_)))
                              (_%tl189559189574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189557189569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189559189574%_))
                              ((lambda (_%L189577%_)
                                 (let* ((_%klass189589%_
                                         (let ((__tmp191131
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189544%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189539%_
                                            __tmp191131)))
                                        (_%object189591%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189538%_
                                            _%L189577%_)))
                                        (_%instance?189596%_
                                         (let ((_%$e189593%_
                                                (gxc#expression-type?
                                                 _%object189591%_
                                                 _%klass189589%_)))
                                           (if _%$e189593%_
                                               _%$e189593%_
                                               (gxc#expression-type?
                                                _%L189577%_
                                                _%klass189589%_))))
                                        (_%klass189599%_ _%klass189589%_))
                                   (if _%instance?189596%_
                                       (let ((__tmp191132
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object189591%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L189577%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object189591%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191132
                                          _%stx189539%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass189599%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp191133
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass189599%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object189591%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191133
                                              _%stx189539%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189599%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191134
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass189599%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object189591%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191134
                                                  _%stx189539%_))
                                               (let ((__tmp191135
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self189544%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object189591%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191135
                                                  _%stx189539%_)))))))
                               _%hd189558189572%_)
                              (_%g189554189564%_ _%g189555189567%_))))
                      (_%g189554189564%_ _%g189555189567%_)))))
          (_%g189553189617%_ _%args189540%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189199%_)
        (let* ((_%__stx190788190789%_ _%stx189199%_)
               (_%g189204189245%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190788190789%_)))))
          (let ((_%__kont190790190791%_ (lambda () '#t))
                (_%__kont190792190793%_ (lambda () '#t))
                (_%__kont190794190795%_
                 (lambda (_%L189313%_ _%L189314%_)
                   (let ((_%rator-type189335189337%_
                          (let ((__tmp191136
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189314%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191136))))
                     (if _%rator-type189335189337%_
                         (let* ((_%rator-type189340%_
                                 _%rator-type189335189337%_)
                                (_%rator-signature189341189343%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189340%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189340%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189341189343%_
                               (let* ((_%rator-signature189346%_
                                       _%rator-signature189341189343%_)
                                      (_%rator-effect189347189349%_
                                       (if _%rator-signature189346%_
                                           (##direct-structure-ref
                                            _%rator-signature189346%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189347189349%_
                                     (let ((_%rator-effect189352%_
                                            _%rator-effect189347189349%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189352%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189352%_))
                                           (let ((__tmp191137
                                                  (let ((__tmp191138
                                                         (lambda (_%g189357189360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189358189362%_)
                   (cons _%g189357189360%_ _%g189358189362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191138
                                                     '()
                                                     _%L189313%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191137))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190798190799%_ (lambda () '#f)))
            (let ((_%__match190877190878%_
                   (lambda (_%e189220189257%_
                            _%hd189221189260%_
                            _%tl189222189262%_
                            _%e189223189265%_
                            _%hd189224189268%_
                            _%tl189225189270%_
                            _%e189226189273%_
                            _%hd189227189276%_
                            _%tl189228189278%_
                            _%e189229189281%_
                            _%hd189230189284%_
                            _%tl189231189286%_
                            _%__splice190796190797%_
                            _%target189232189289%_
                            _%tl189234189291%_)
                     (letrec ((_%loop189235189294%_
                               (lambda (_%hd189233189297%_
                                        _%rand189239189299%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189233189297%_))
                                     (let ((_%e189236189302%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189233189297%_))))
                                       (let ((_%lp-tl189238189307%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189236189302%_)))
                                             (_%lp-hd189237189305%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189236189302%_))))
                                         (_%loop189235189294%_
                                          _%lp-tl189238189307%_
                                          (cons _%lp-hd189237189305%_
                                                _%rand189239189299%_))))
                                     (let ((_%rand189240189310%_
                                            (reverse _%rand189239189299%_)))
                                       (_%__kont190794190795%_
                                        _%rand189240189310%_
                                        _%hd189230189284%_))))))
                       (_%loop189235189294%_ _%target189232189289%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190788190789%_))
                  (let ((_%e189206189393%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190788190789%_))))
                    (let ((_%tl189208189398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189206189393%_)))
                          (_%hd189207189396%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189206189393%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189207189396%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189207189396%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189208189398%_))
                                  (let ((_%e189209189401%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189208189398%_))))
                                    (let ((_%tl189211189406%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189209189401%_)))
                                          (_%hd189210189404%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189209189401%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189211189406%_))
                                          (_%__kont190790190791%_)
                                          (_%__kont190798190799%_))))
                                  (_%__kont190798190799%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189207189396%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189208189398%_))
                                      (let ((_%e189215189378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189208189398%_))))
                                        (let ((_%tl189217189383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189215189378%_)))
                                              (_%hd189216189381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189215189378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189217189383%_))
                                              (_%__kont190792190793%_)
                                              (_%__kont190798190799%_))))
                                      (_%__kont190798190799%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189207189396%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189208189398%_))
                                          (let ((_%e189223189265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189208189398%_))))
                                            (let ((_%tl189225189270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189223189265%_)))
                                                  (_%hd189224189268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189223189265%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189224189268%_))
                                                  (let ((_%e189226189273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189224189268%_))))
                                                    (let ((_%tl189228189278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189226189273%_)))
                                                          (_%hd189227189276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189226189273%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189227189276%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189227189276%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189228189278%_))
                          (let ((_%e189229189281%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189228189278%_))))
                            (let ((_%tl189231189286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189229189281%_)))
                                  (_%hd189230189284%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189229189281%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189231189286%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189225189270%_))
                                      (let ((_%__splice190796190797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189225189270%_
                                                '0))))
                                        (let ((_%tl189234189291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190796190797%_
                                                  '1)))
                                              (_%target189232189289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190796190797%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189234189291%_))
                                              (_%__match190877190878%_
                                               _%e189206189393%_
                                               _%hd189207189396%_
                                               _%tl189208189398%_
                                               _%e189223189265%_
                                               _%hd189224189268%_
                                               _%tl189225189270%_
                                               _%e189226189273%_
                                               _%hd189227189276%_
                                               _%tl189228189278%_
                                               _%e189229189281%_
                                               _%hd189230189284%_
                                               _%tl189231189286%_
                                               _%__splice190796190797%_
                                               _%target189232189289%_
                                               _%tl189234189291%_)
                                              (_%__kont190798190799%_))))
                                      (_%__kont190798190799%_))
                                  (_%__kont190798190799%_))))
                          (_%__kont190798190799%_))
                      (_%__kont190798190799%_))
                  (_%__kont190798190799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190798190799%_))))
                                          (_%__kont190798190799%_))
                                      (_%__kont190798190799%_))))
                          (_%__kont190798190799%_))))
                  (_%__kont190798190799%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189194%_ _%klass189195%_)
        (let ((_%expr-type189197%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189194%_))))
          (if _%expr-type189197%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189197%_ _%klass189195%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189172%_ _%expr189173%_ _%type189174%_)
        (if (not _%type189174%_)
            '#f
            (let ((_%$e189177%_
                   (eq? (##structure-ref _%type189174%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189177%_
                  _%$e189177%_
                  (let ((_%expr-type189181%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189173%_))))
                    (if (not _%expr-type189181%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189181%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e189185%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189181%_
                                      'gxc#!abort::t))))
                              (if _%$e189185%_
                                  _%$e189185%_
                                  (let ((_%$e189188%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189181%_
                                            _%type189174%_))))
                                    (if _%$e189188%_
                                        _%$e189188%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189174%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189174%_
                                                   _%expr-type189181%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189172%_
                                                   _%expr189173%_
                                                   _%expr-type189181%_
                                                   _%type189174%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187181188984%_ _%ctx188986%_ _%stx188987%_ _%args188988%_)
        (let* ((_%self188990%_ _%self187181188984%_)
               (_%self188992%_ _%self188990%_)
               (_%klass189002%_
                (let ((__tmp191139
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188992%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx188987%_ __tmp191139)))
               (_%fields189004%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass189002%_
                           '5
                           '#f
                           '#f))))
               (_%args189010%_
                (map (lambda (_%g189005189007%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx188986%_ _%g189005189007%_)))
                     _%args188988%_))
               (_%inline-make-object189012%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188992%_
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
                           _%self188992%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields189004%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass189015%_ _%klass189002%_)
               (_%$e189029%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass189015%_ '6 '#f '#f))))
          (if _%$e189029%_
              ((lambda (_%ctor189032%_)
                 (let ((_%$obj189034%_
                        (let ((__tmp191140
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp191140)))
                       (_%ctor-impl189035%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass189015%_
                           _%ctor189032%_))))
                   (let ((__tmp191141
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj189034%_ '())
                                                  (cons _%inline-make-object189012%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl189035%_
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%ctor-impl189035%_ '()))
                                (cons (cons '%#ref (cons _%$obj189034%_ '()))
                                      _%args189010%_)))
                    (let ((_%$ctor189037%_
                           (let ((__tmp191142
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp191142))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor189037%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188992%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj189034%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor189032%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor189037%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor189037%_ '()))
                              (cons (cons '%#ref (cons _%$obj189034%_ '()))
                                    _%args189010%_)))
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
                             _%self188992%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor189032%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj189034%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp191141 _%stx188987%_))))
               _%$e189029%_)
              (let ((_%$e189039%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass189015%_
                        '10
                        '#f
                        '#f))))
                (if _%$e189039%_
                    ((lambda (_%metaclass189042%_)
                       (let* ((_%$obj189044%_
                               (let ((__tmp191143
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191143)))
                              (_%metakons189046%_
                               (let ((__tmp191144
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx188987%_
                                         _%metaclass189042%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp191144
                                  'instance-init!)))
                              (__tmp191145
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj189044%_
                                                             '())
                                                       (cons _%inline-make-object189012%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons189046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons _%metakons189046%_ '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188992%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj189044%_
                                                             '()))
                                                 _%args189010%_))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188992%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj189044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args189010%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj189044%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191145 _%stx188987%_)))
                     _%$e189039%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass189015%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp191146
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args189010%_))))
                              (declare (not safe))
                              (##fx= __tmp191146 _%fields189004%_))
                            (let ((__tmp191147
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188992%_
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
                                              _%self188992%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args189010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp191147
                               _%stx188987%_))
                            (let ((__tmp191149
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self188992%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp191148
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass189015%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx188987%_
                               __tmp191149
                               __tmp191148)))
                        (let ((_%$obj189051%_
                               (let ((__tmp191150
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191150))))
                          (let _%lp189053%_ ((_%rest189055%_ _%args189010%_)
                                             (_%initializers189056%_ '()))
                            (let* ((_%__stx190880190881%_ _%rest189055%_)
                                   (_%g189060189081%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx190880190881%_)))))
                              (let ((_%__kont190882190883%_
                                     (lambda (_%L189135%_
                                              _%L189136%_
                                              _%L189137%_)
                                       (let* ((_%slot189164%_
                                               (let ((__tmp191151
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L189137%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp191151)))
                                              (_%off189166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass189015%_
                                                  _%slot189164%_))))
                                         (if _%off189166%_
                                             (_%lp189053%_
                                              _%L189135%_
                                              (cons (cons _%off189166%_
                                                          _%L189136%_)
                                                    _%initializers189056%_))
                                             (let ((__tmp191152
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188992%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx188987%_
                                                __tmp191152
                                                _%slot189164%_))))))
                                    (_%__kont190884190885%_
                                     (lambda ()
                                       (let ((__tmp191153
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj189051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object189012%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp191156
                                     (cons (cons '%#ref
                                                 (cons _%$obj189051%_ '()))
                                           '()))
                                    (__tmp191154
                                     (let ((__tmp191155
                                            (lambda (_%i189095%_ _%r189096%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188992%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i189095%_) '()))
                              (cons (cons '%#ref (cons _%$obj189051%_ '()))
                                    (cons (cdr _%i189095%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r189096%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp191155
                                        '()
                                        _%initializers189056%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp191156 __tmp191154)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191153
                                          _%stx188987%_))))
                                    (_%__kont190886190887%_
                                     (lambda ()
                                       (let ((__tmp191157
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj189051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object189012%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args189010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj189051%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191157
                                          _%stx188987%_)))))
                                (let* ((_%g189058189098%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx190880190881%_))
                                              (_%__kont190884190885%_)
                                              (_%__kont190886190887%_))))
                                       (_%__match190917190918%_
                                        (lambda (_%e189065189103%_
                                                 _%hd189066189106%_
                                                 _%tl189067189108%_
                                                 _%e189068189111%_
                                                 _%hd189069189114%_
                                                 _%tl189070189116%_
                                                 _%e189071189119%_
                                                 _%hd189072189122%_
                                                 _%tl189073189124%_
                                                 _%e189074189127%_
                                                 _%hd189075189130%_
                                                 _%tl189076189132%_)
                                          (let ((_%L189135%_
                                                 _%tl189076189132%_)
                                                (_%L189136%_
                                                 _%hd189075189130%_)
                                                (_%L189137%_
                                                 _%hd189072189122%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L189137%_))
                                                (_%__kont190882190883%_
                                                 _%L189135%_
                                                 _%L189136%_
                                                 _%L189137%_)
                                                (_%__kont190886190887%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx190880190881%_))
                                      (let ((_%e189065189103%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx190880190881%_))))
                                        (let ((_%tl189067189108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189065189103%_)))
                                              (_%hd189066189106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189065189103%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd189066189106%_))
                                              (let ((_%e189068189111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd189066189106%_))))
                                                (let ((_%tl189070189116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e189068189111%_)))
                                                      (_%hd189069189114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e189068189111%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd189069189114%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd189069189114%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl189070189116%_))
                      (let ((_%e189071189119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl189070189116%_))))
                        (let ((_%tl189073189124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189071189119%_)))
                              (_%hd189072189122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189071189119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189073189124%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189067189108%_))
                                  (let ((_%e189074189127%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189067189108%_))))
                                    (let ((_%tl189076189132%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189074189127%_)))
                                          (_%hd189075189130%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189074189127%_))))
                                      (_%__match190917190918%_
                                       _%e189065189103%_
                                       _%hd189066189106%_
                                       _%tl189067189108%_
                                       _%e189068189111%_
                                       _%hd189069189114%_
                                       _%tl189070189116%_
                                       _%e189071189119%_
                                       _%hd189072189122%_
                                       _%tl189073189124%_
                                       _%e189074189127%_
                                       _%hd189075189130%_
                                       _%tl189076189132%_)))
                                  (_%__kont190886190887%_))
                              (_%__kont190886190887%_))))
                      (_%__kont190886190887%_))
                  (_%__kont190886190887%_))
              (_%__kont190886190887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont190886190887%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189058189098%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187182188765%_ _%ctx188767%_ _%stx188768%_ _%args188769%_)
        (let* ((_%self188771%_ _%self187182188765%_)
               (_%self188773%_ _%self188771%_)
               (_%arguments-ok?188783%_
                (let ((__method191103
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self188773%_ 'check-arguments))))
                  (if __method191103
                      (let ()
                        (declare (not safe))
                        (__method191103
                         _%self188773%_
                         _%ctx188767%_
                         _%stx188768%_
                         _%args188769%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188773%_
                                 'check-arguments))
                        '#!void))))
               (_%g188785188795%_
                (lambda (_%g188786188792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188786188792%_))))
               (_%g188784188859%_
                (lambda (_%g188786188798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188786188798%_))
                      (let ((_%e188788188800%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188786188798%_))))
                        (let ((_%hd188789188803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188788188800%_)))
                              (_%tl188790188805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188788188800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188790188805%_))
                              ((lambda (_%L188808%_)
                                 (let* ((_%klass188821%_
                                         (let ((__tmp191158
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188773%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx188768%_
                                            __tmp191158)))
                                        (_%field188823%_
                                         (let ((__tmp191159
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self188773%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass188821%_
                                            __tmp191159)))
                                        (_%object188825%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx188767%_
                                            _%L188808%_)))
                                        (_%klass188828%_ _%klass188821%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass188828%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp191160
                                              (cons (if (or _%arguments-ok?188783%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188773%_
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
                                 _%self188773%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field188823%_ '()))
                        (cons _%object188825%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp191160
                                          _%stx188768%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188828%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp191161
                                                  (cons (if (or _%arguments-ok?188783%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188773%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188773%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field188823%_ '()))
                            (cons _%object188825%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191161
                                              _%stx188768%_))
                                           (let ((_%$e188847%_
                                                  (let ((__tmp191162
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self188773%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass188828%_
                                                     __tmp191162))))
                                             (if _%$e188847%_
                                                 ((lambda (_%klass188850%_)
                                                    (let ((__tmp191163
                                                           (cons (if (or _%arguments-ok?188783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188773%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self188773%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field188823%_ '()))
                                     (cons _%object188825%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp191163 _%stx188768%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e188847%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188773%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191164
                                                            (let ((_%$obj188856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp191165
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp191165))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj188856%_ '())
                                              (cons _%object188825%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass188828%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj188856%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188773%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field188823%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj188856%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?188783%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj188856%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188773%_
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
                                                             _%self188773%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188856%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self188773%_
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
               (gxc#xform-wrap-source __tmp191164 _%stx188768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp191166
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object188825%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188773%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191166 _%stx188768%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd188789188803%_)
                              (_%g188785188795%_ _%g188786188798%_))))
                      (_%g188785188795%_ _%g188786188798%_)))))
          (_%g188784188859%_ _%args188769%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass190648 __method-table190649)
        (let ((__check-arguments190650
               (let ((__tmp191167
                      (lambda ()
                        (let ((__method190651
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table190649
                                  'check-arguments
                                  '#f))))
                          (if __method190651
                              __method190651
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191167)))
              (__slot190652
               (let ((__slot190653
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass190648 'slot))))
                 (if __slot190653
                     __slot190653
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self187182188765%_
                   _%ctx188767%_
                   _%stx188768%_
                   _%args188769%_)
            (let* ((_%self188771%_ _%self187182188765%_)
                   (_%self188773%_ _%self188771%_)
                   (_%arguments-ok?188783%_
                    ((force __check-arguments190650)
                     _%self188773%_
                     _%ctx188767%_
                     _%stx188768%_
                     _%args188769%_))
                   (_%g188785188795%_
                    (lambda (_%g188786188792%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g188786188792%_))))
                   (_%g188784188859%_
                    (lambda (_%g188786188798%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g188786188798%_))
                          (let ((_%e188788188800%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g188786188798%_))))
                            (let ((_%hd188789188803%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188788188800%_)))
                                  (_%tl188790188805%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188788188800%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188790188805%_))
                                  ((lambda (_%L188808%_)
                                     (let* ((_%klass188821%_
                                             (let ((__tmp191168
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188773%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx188768%_
                                                __tmp191168)))
                                            (_%field188823%_
                                             (let ((__tmp191169
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188773%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass188821%_
                                                __tmp191169)))
                                            (_%object188825%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx188767%_
                                                _%L188808%_)))
                                            (_%klass188828%_ _%klass188821%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass188828%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp191170
                                                  (cons (if (or _%arguments-ok?188783%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188773%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188773%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field188823%_ '()))
                            (cons _%object188825%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191170
                                              _%stx188768%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188828%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191171
                                                      (cons (if (or _%arguments-ok?188783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188773%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188773%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field188823%_ '()))
                                (cons _%object188825%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191171
                                                  _%stx188768%_))
                                               (let ((_%$e188847%_
                                                      (let ((__tmp191172
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self188773%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass188828%_ __tmp191172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e188847%_
                                                     ((lambda (_%klass188850%_)
                                                        (let ((__tmp191173
                                                               (cons (if (or _%arguments-ok?188783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188773%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self188773%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field188823%_ '()))
                                         (cons _%object188825%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp191173 _%stx188768%_)))
              _%$e188847%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self188773%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp191174
                                                                (let ((_%$obj188856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp191175
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191175))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj188856%_ '())
                                                  (cons _%object188825%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass188828%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj188856%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188773%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field188823%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj188856%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?188783%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj188856%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188773%_
                               __slot190652
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
                        (##unchecked-structure-ref _%self188773%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188773%_
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
                   (gxc#xform-wrap-source __tmp191174 _%stx188768%_))
                 (let ((__tmp191176
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object188825%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188773%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp191176 _%stx188768%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd188789188803%_)
                                  (_%g188785188795%_ _%g188786188798%_))))
                          (_%g188785188795%_ _%g188786188798%_)))))
              (_%g188784188859%_ _%args188769%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187183188527%_ _%ctx188529%_ _%stx188530%_ _%args188531%_)
        (let* ((_%self188533%_ _%self187183188527%_)
               (_%self188535%_ _%self188533%_)
               (_%arguments-ok?188545%_
                (let ((__method191104
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self188535%_ 'check-arguments))))
                  (if __method191104
                      (let ()
                        (declare (not safe))
                        (__method191104
                         _%self188535%_
                         _%ctx188529%_
                         _%stx188530%_
                         _%args188531%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188535%_
                                 'check-arguments))
                        '#!void))))
               (_%g188547188561%_
                (lambda (_%g188548188558%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g188548188558%_))))
               (_%g188546188640%_
                (lambda (_%g188548188564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g188548188564%_))
                      (let ((_%e188551188566%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g188548188564%_))))
                        (let ((_%hd188552188569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188551188566%_)))
                              (_%tl188553188571%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188551188566%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188553188571%_))
                              (let ((_%e188554188574%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188553188571%_))))
                                (let ((_%hd188555188577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188554188574%_)))
                                      (_%tl188556188579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188554188574%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl188556188579%_))
                                      ((lambda (_%L188582%_ _%L188583%_)
                                         (let* ((_%klass188599%_
                                                 (let ((__tmp191177
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188535%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx188530%_
                                                    __tmp191177)))
                                                (_%field188601%_
                                                 (let ((__tmp191178
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self188535%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass188599%_
                                                    __tmp191178)))
                                                (_%object188603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx188529%_
                                                    _%L188583%_)))
                                                (_%value188605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx188529%_
                                                    _%L188582%_)))
                                                (_%klass188608%_
                                                 _%klass188599%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass188608%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp191179
                                                      (cons (if (or _%arguments-ok?188545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188535%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188535%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field188601%_ '()))
                                (cons _%object188603%_
                                      (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp191179
                                                  _%stx188530%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188608%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp191180
                                                          (cons (if (or _%arguments-ok?188545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188535%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188535%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field188601%_ '()))
                                    (cons _%object188603%_
                                          (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp191180
                                                      _%stx188530%_))
                                                   (let ((_%$e188628%_
                                                          (let ((__tmp191181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188535%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass188608%_
                     __tmp191181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e188628%_
                                                         ((lambda (_%klass188631%_)
                                                            (let ((__tmp191182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?188545%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188535%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self188535%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field188601%_ '()))
                                             (cons _%object188603%_
                                                   (cons _%value188605%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp191182 _%stx188530%_)))
                  _%$e188628%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188535%_ '4 '#f '#f))
                     (let ((__tmp191183
                            (let ((_%$obj188637%_
                                   (let ((__tmp191184
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191184))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj188637%_ '())
                                                      (cons _%object188603%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass188608%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj188637%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188535%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field188601%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj188637%_
                                                              '()))
                                                  (cons _%value188605%_
                                                        '())))))
                          (cons (if _%arguments-ok?188545%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188535%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value188605%_ '())))))
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
                             _%self188535%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj188637%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self188535%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp191183 _%stx188530%_))
                     (let ((__tmp191185
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object188603%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188535%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value188605%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp191185
                        _%stx188530%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd188555188577%_
                                       _%hd188552188569%_)
                                      (_%g188547188561%_ _%g188548188564%_))))
                              (_%g188547188561%_ _%g188548188564%_))))
                      (_%g188547188561%_ _%g188548188564%_)))))
          (_%g188546188640%_ _%args188531%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass190654 __method-table190655)
        (let ((__check-arguments190656
               (let ((__tmp191186
                      (lambda ()
                        (let ((__method190657
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table190655
                                  'check-arguments
                                  '#f))))
                          (if __method190657
                              __method190657
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp191186))))
          (lambda (_%self187183188527%_
                   _%ctx188529%_
                   _%stx188530%_
                   _%args188531%_)
            (let* ((_%self188533%_ _%self187183188527%_)
                   (_%self188535%_ _%self188533%_)
                   (_%arguments-ok?188545%_
                    ((force __check-arguments190656)
                     _%self188535%_
                     _%ctx188529%_
                     _%stx188530%_
                     _%args188531%_))
                   (_%g188547188561%_
                    (lambda (_%g188548188558%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g188548188558%_))))
                   (_%g188546188640%_
                    (lambda (_%g188548188564%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g188548188564%_))
                          (let ((_%e188551188566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g188548188564%_))))
                            (let ((_%hd188552188569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188551188566%_)))
                                  (_%tl188553188571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188551188566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188553188571%_))
                                  (let ((_%e188554188574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188553188571%_))))
                                    (let ((_%hd188555188577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188554188574%_)))
                                          (_%tl188556188579%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188554188574%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188556188579%_))
                                          ((lambda (_%L188582%_ _%L188583%_)
                                             (let* ((_%klass188599%_
                                                     (let ((__tmp191187
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188535%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx188530%_
                                                        __tmp191187)))
                                                    (_%field188601%_
                                                     (let ((__tmp191188
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188535%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass188599%_
                                                        __tmp191188)))
                                                    (_%object188603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx188529%_
                                                        _%L188583%_)))
                                                    (_%value188605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx188529%_
                                                        _%L188582%_)))
                                                    (_%klass188608%_
                                                     _%klass188599%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188608%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp191189
                                                          (cons (if (or _%arguments-ok?188545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188535%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188535%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field188601%_ '()))
                                    (cons _%object188603%_
                                          (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp191189
                                                      _%stx188530%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass188608%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191190
                                                              (cons (if (or _%arguments-ok?188545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188535%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188535%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field188601%_ '()))
                                        (cons _%object188603%_
                                              (cons _%value188605%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191190 _%stx188530%_))
               (let ((_%$e188628%_
                      (let ((__tmp191191
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188535%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass188608%_
                         __tmp191191))))
                 (if _%$e188628%_
                     ((lambda (_%klass188631%_)
                        (let ((__tmp191192
                               (cons (if (or _%arguments-ok?188545%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188535%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188535%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field188601%_
                                                             '()))
                                                 (cons _%object188603%_
                                                       (cons _%value188605%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp191192 _%stx188530%_)))
                      _%$e188628%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188535%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp191193
                                (let ((_%$obj188637%_
                                       (let ((__tmp191194
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp191194))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj188637%_
                                                                '())
                                                          (cons _%object188603%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass188608%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj188637%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188535%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field188601%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value188605%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?188545%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj188637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188535%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value188605%_ '())))))
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
                                 _%self188535%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj188637%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188535%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191193 _%stx188530%_))
                         (let ((__tmp191195
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object188603%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188535%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value188605%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp191195
                            _%stx188530%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd188555188577%_
                                           _%hd188552188569%_)
                                          (_%g188547188561%_
                                           _%g188548188564%_))))
                                  (_%g188547188561%_ _%g188548188564%_))))
                          (_%g188547188561%_ _%g188548188564%_)))))
              (_%g188546188640%_ _%args188531%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187184188340%_ _%ctx188342%_ _%stx188343%_ _%args188344%_)
        (let* ((_%self188346%_ _%self187184188340%_)
               (_%self188348%_ _%self188346%_)
               (_%self188357188367%_ _%self188348%_)
               (_%E188359188371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self188357188367%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K188360188381%_
                (lambda (_%inline188374%_ _%dispatch188375%_ _%arity188376%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self188348%_
                         _%args188344%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx188343%_
                         _%arity188376%_)))
                  (if _%inline188374%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp191196
                               (let ((__tmp191197
                                      (_%inline188374%_ _%stx188343%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp191197
                                  _%stx188343%_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _%ctx188342%_ __tmp191196)))
                      (if (and _%dispatch188375%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch188375%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch188375%_))
                            (let ((__tmp191198
                                   (let ((__tmp191199
                                          (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons _%dispatch188375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args188344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp191199
                                      _%stx188343%_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _%ctx188342%_ __tmp191198)))
                          (gxc#!procedure::optimize-call
                           _%self188348%_
                           _%ctx188342%_
                           _%stx188343%_
                           _%args188344%_))))))
          (if '#t
              (let* ((_%e188361188384%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188357188367%_
                         '1
                         '#f
                         '#f)))
                     (_%e188362188387%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188357188367%_
                         '2
                         '#f
                         '#f)))
                     (_%e188363188390%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188357188367%_
                         '3
                         '#f
                         '#f)))
                     (_%arity188393%_ _%e188363188390%_)
                     (_%e188364188395%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188357188367%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch188398%_ _%e188364188395%_)
                     (_%e188365188400%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self188357188367%_
                         '5
                         '#f
                         '#f)))
                     (_%inline188403%_ _%e188365188400%_))
                (_%K188360188381%_
                 _%inline188403%_
                 _%dispatch188398%_
                 _%arity188393%_))
              (_%E188359188371%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187185188190%_ _%ctx188192%_ _%stx188193%_ _%args188194%_)
        (let* ((_%self188196%_ _%self187185188190%_)
               (_%self188198%_ _%self188196%_)
               (_%$e188212%_
                (let ((__tmp191201
                       (lambda (_%g188207188209%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g188207188209%_
                            _%args188194%_))))
                      (__tmp191200
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self188198%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp191201 __tmp191200))))
          (if _%$e188212%_
              ((lambda (_%clause188215%_)
                 (let ((__method191105
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause188215%_ 'optimize-call))))
                   (if __method191105
                       (let ()
                         (declare (not safe))
                         (__method191105
                          _%clause188215%_
                          _%ctx188192%_
                          _%stx188193%_
                          _%args188194%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188215%_
                                  'optimize-call))
                         '#!void))))
               _%$e188212%_)
              (let ((__tmp191202
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188198%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx188193%_
                 __tmp191202))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187186187928%_ _%ctx187930%_ _%stx187931%_ _%args187932%_)
        (let* ((_%self187934%_ _%self187186187928%_)
               (_%self187936%_ _%self187934%_)
               (_%self187945187954%_ _%self187936%_)
               (_%E187947187958%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self187945187954%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K187948188049%_
                (lambda (_%dispatch187961%_ _%table187962%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch187961%_))
                      (let* ((_%g187963187973%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch187961%_)))
                             (_%else187965187981%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch187961%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx187930%_
                                   _%stx187931%_))))
                             (_%K187967188030%_
                              (lambda (_%main187984%_ _%keys187985%_)
                                (let ((_g191203_
                                       (gxc#!kw-lambda-split-args
                                        _%stx187931%_
                                        _%args187932%_)))
                                  (begin
                                    (let ((_g191204_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g191203_)
                                                 (##vector-length _g191203_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g191204_ 2)))
                                          (error "Context expects 2 values"
                                                 _g191204_)))
                                    (let ((_%pargs187987%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g191203_ 0)))
                                          (_%kwargs187988%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g191203_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main187984%_))
                                        (if _%table187962%_
                                            (let ((_%xargs187996%_
                                                   (map (lambda (_%key187990%_)
                                                          (let ((_%$e187992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key187990%_ _%kwargs187988%_))))
                    (if _%$e187992%_ _%$e187992%_ '(%#ref absent-value))))
                _%keys187985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw187998%_)
                                                 (if (memq (car _%kw187998%_)
                                                           _%keys187985%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx187931%_
                                                        _%keys187985%_
                                                        _%kw187998%_))))
                                               _%kwargs187988%_)
                                              (let ((__tmp191205
                                                     (let ((__tmp191206
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons _%main187984%_ '()))
                                (cons (cons '%#quote (cons '#f '()))
                                      (let ()
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         _%pargs187987%_
                                         _%xargs187996%_)))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191206 _%stx187931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187930%_
                                                 __tmp191205)))
                                            (let* ((_%kwt188000%_
                                                    (let ((__tmp191207
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp191207)))
                                                   (_%kwvars188004%_
                                                    (map (lambda (_%_188002%_)
                                                           (let ((__tmp191208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp191208)))
                 _%kwargs187988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind188009%_
                                                    (map (lambda (_%kw188006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188007%_)
                   (cons (cons _%kwvar188007%_ '())
                         (cons (cdr _%kw188006%_) '())))
                 _%kwargs187988%_
                 _%kwvars188004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset188014%_
                                                    (map (lambda (_%kw188011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188012%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt188000%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw188011%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar188012%_
                                                             '()))
                                                 '()))))))
                 _%kwargs187988%_
                 _%kwvars188004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs188019%_
                                                    (map (lambda (_%kw188016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar188017%_)
                   (cons (car _%kw188016%_)
                         (cons '%#ref (cons _%kwvar188017%_ '()))))
                 _%kwargs187988%_
                 _%kwvars188004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs188027%_
                                                    (map (lambda (_%key188021%_)
                                                           (let ((_%$e188023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key188021%_ _%xkwargs188019%_))))
                     (if _%$e188023%_ _%$e188023%_ '(%#ref absent-value))))
                 _%keys187985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp191209
                                                    (let ((__tmp191210
                                                           (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwbind188009%_
                               (cons (cons '%#let-values
                                           (cons (cons (cons (cons _%kwt188000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ((__tmp191211
                                  (cons '%#call
                                        (cons '(%#ref make-symbolic-table)
                                              (cons (cons '%#quote
                                                          (cons (length _%kwargs187988%_)
                                                                '()))
                                                    (cons '(%#quote (length kwvars))
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191211 _%stx187931%_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#begin
                                                             (let ((__tmp191212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ((__tmp191213
                                         (cons '%#call
                                               (cons (cons '%#ref
                                                           (cons _%main187984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%kwt188000%_ '()))
                   (let ()
                     (declare (not safe))
                     (__foldr1 cons _%pargs187987%_ _%xargs188027%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191213
                                     _%stx187931%_))
                                  '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp191212 _%kwset188014%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp191210 _%stx187931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%ctx187930%_
                                               __tmp191209))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g187963187973%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e187968188033%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187963187973%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e187969188036%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187963187973%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e187970188039%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187963187973%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys188042%_ _%e187970188039%_)
                                   (_%e187971188044%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g187963187973%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main188047%_ _%e187971188044%_))
                              (_%K187967188030%_
                               _%main188047%_
                               _%keys188042%_))
                            (_%else187965187981%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx187930%_ _%stx187931%_))))))
          (if '#t
              (let* ((_%e187949188052%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187945187954%_
                         '1
                         '#f
                         '#f)))
                     (_%e187950188055%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187945187954%_
                         '2
                         '#f
                         '#f)))
                     (_%e187951188058%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187945187954%_
                         '3
                         '#f
                         '#f)))
                     (_%table188061%_ _%e187951188058%_)
                     (_%e187952188063%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187945187954%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch188066%_ _%e187952188063%_))
                (_%K187948188049%_ _%dispatch188066%_ _%table188061%_))
              (_%E187947187958%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187541%_ _%args187542%_)
        (let _%lp187544%_ ((_%rest187546%_ _%args187542%_)
                           (_%pargs187547%_ '())
                           (_%kwargs187548%_ '()))
          (let* ((_%__stx190922190923%_ _%rest187546%_)
                 (_%g187554187606%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190922190923%_)))))
            (let ((_%__kont190924190925%_
                   (lambda (_%L187785%_ _%L187786%_)
                     (_%lp187544%_
                      _%L187785%_
                      (cons _%L187786%_ _%pargs187547%_)
                      _%kwargs187548%_)))
                  (_%__kont190926190927%_
                   (lambda (_%L187731%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187731%_ _%pargs187547%_))
                             (reverse _%kwargs187548%_))))
                  (_%__kont190928190929%_
                   (lambda (_%L187678%_ _%L187679%_ _%L187680%_)
                     (let ((_%kw187697%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187680%_))))
                       (if (assq _%kw187697%_ _%kwargs187548%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187541%_
                              _%kw187697%_))
                           (_%lp187544%_
                            _%L187678%_
                            _%pargs187547%_
                            (cons (cons _%kw187697%_ _%L187679%_)
                                  _%kwargs187548%_))))))
                  (_%__kont190930190931%_
                   (lambda (_%L187626%_ _%L187627%_)
                     (_%lp187544%_
                      _%L187626%_
                      (cons _%L187627%_ _%pargs187547%_)
                      _%kwargs187548%_)))
                  (_%__kont190932190933%_
                   (lambda ()
                     (values (reverse _%pargs187547%_)
                             (reverse _%kwargs187548%_)))))
              (let ((_%__match191029191030%_
                     (lambda (_%e187585187646%_
                              _%hd187586187649%_
                              _%tl187587187651%_
                              _%e187588187654%_
                              _%hd187589187657%_
                              _%tl187590187659%_
                              _%e187591187662%_
                              _%hd187592187665%_
                              _%tl187593187667%_
                              _%e187594187670%_
                              _%hd187595187673%_
                              _%tl187596187675%_)
                       (let ((_%L187678%_ _%tl187596187675%_)
                             (_%L187679%_ _%hd187595187673%_)
                             (_%L187680%_ _%hd187592187665%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187680%_))
                             (_%__kont190928190929%_
                              _%L187678%_
                              _%L187679%_
                              _%L187680%_)
                             (_%__kont190930190931%_
                              _%tl187587187651%_
                              _%hd187586187649%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190922190923%_))
                    (let ((_%e187558187750%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190922190923%_))))
                      (let ((_%tl187560187755%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187558187750%_)))
                            (_%hd187559187753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187558187750%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187559187753%_))
                            (let ((_%e187561187758%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187559187753%_))))
                              (let ((_%tl187563187763%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187561187758%_)))
                                    (_%hd187562187761%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187561187758%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187562187761%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187562187761%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187563187763%_))
                                            (let ((_%e187564187766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187563187763%_))))
                                              (let ((_%tl187566187771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187564187766%_)))
                                                    (_%hd187565187769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187564187766%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187565187769%_))
                                                    (let ((_%e187567187774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187565187769%_))))
                                                      (if (equal? _%e187567187774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187566187771%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187560187755%_))
                          (let ((_%e187568187777%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187560187755%_))))
                            (let ((_%tl187570187782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187568187777%_)))
                                  (_%hd187569187780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187568187777%_))))
                              (_%__kont190924190925%_
                               _%tl187570187782%_
                               _%hd187569187780%_)))
                          (_%__kont190930190931%_
                           _%tl187560187755%_
                           _%hd187559187753%_))
                      (_%__kont190930190931%_
                       _%tl187560187755%_
                       _%hd187559187753%_))
                  (if (equal? _%e187567187774%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187566187771%_))
                          (_%__kont190926190927%_ _%tl187560187755%_)
                          (_%__kont190930190931%_
                           _%tl187560187755%_
                           _%hd187559187753%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187566187771%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187560187755%_))
                              (let ((_%e187594187670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187560187755%_))))
                                (let ((_%tl187596187675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187594187670%_)))
                                      (_%hd187595187673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187594187670%_))))
                                  (_%__match191029191030%_
                                   _%e187558187750%_
                                   _%hd187559187753%_
                                   _%tl187560187755%_
                                   _%e187561187758%_
                                   _%hd187562187761%_
                                   _%tl187563187763%_
                                   _%e187564187766%_
                                   _%hd187565187769%_
                                   _%tl187566187771%_
                                   _%e187594187670%_
                                   _%hd187595187673%_
                                   _%tl187596187675%_)))
                              (_%__kont190930190931%_
                               _%tl187560187755%_
                               _%hd187559187753%_))
                          (_%__kont190930190931%_
                           _%tl187560187755%_
                           _%hd187559187753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187566187771%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187560187755%_))
                                                            (let ((_%e187594187670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187560187755%_))))
                      (let ((_%tl187596187675%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187594187670%_)))
                            (_%hd187595187673%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187594187670%_))))
                        (_%__match191029191030%_
                         _%e187558187750%_
                         _%hd187559187753%_
                         _%tl187560187755%_
                         _%e187561187758%_
                         _%hd187562187761%_
                         _%tl187563187763%_
                         _%e187564187766%_
                         _%hd187565187769%_
                         _%tl187566187771%_
                         _%e187594187670%_
                         _%hd187595187673%_
                         _%tl187596187675%_)))
                    (_%__kont190930190931%_
                     _%tl187560187755%_
                     _%hd187559187753%_))
                (_%__kont190930190931%_
                 _%tl187560187755%_
                 _%hd187559187753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190930190931%_
                                             _%tl187560187755%_
                                             _%hd187559187753%_))
                                        (_%__kont190930190931%_
                                         _%tl187560187755%_
                                         _%hd187559187753%_))
                                    (_%__kont190930190931%_
                                     _%tl187560187755%_
                                     _%hd187559187753%_))))
                            (_%__kont190930190931%_
                             _%tl187560187755%_
                             _%hd187559187753%_))))
                    (_%__kont190932190933%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187187187523%_ _%ctx187525%_ _%stx187526%_ _%args187527%_)
        (let* ((_%self187529%_ _%self187187187523%_)
               (_%self187531%_ _%self187529%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187525%_ _%stx187526%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187211%_ _%stx187212%_)
        (let* ((_%__stx191038191039%_ _%stx187212%_)
               (_%g187215187255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191038191039%_)))))
          (let ((_%__kont191040191041%_
                 (lambda (_%L187361%_ _%L187362%_)
                   (let ((_%$e187389%_
                          (member 'return:
                                  (let ((__tmp191214
                                         (lambda (_%g187381187384%_
                                                  _%g187382187386%_)
                                           (cons _%g187381187384%_
                                                 _%g187382187386%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191214 '() _%L187362%_))
                                  gx#stx-eq?)))
                     (if _%$e187389%_
                         ((lambda (_%tail187392%_)
                            (let ((_%type187394%_
                                   (let ((__tmp191215
                                          (let ((__tmp191216
                                                 (cadr _%tail187392%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191216))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187212%_
                                      __tmp191215))))
                              (gxc#check-return-type!
                               _%stx187212%_
                               _%L187361%_
                               _%type187394%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187211%_
                                 _%L187361%_))))
                          _%$e187389%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187211%_ _%L187361%_))))))
                (_%__kont191044191045%_
                 (lambda (_%L187284%_ _%L187285%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187211%_ _%L187284%_)))))
            (let ((_%__match191075191076%_
                   (lambda (_%e187219187305%_
                            _%hd187220187308%_
                            _%tl187221187310%_
                            _%e187222187313%_
                            _%hd187223187316%_
                            _%tl187224187318%_
                            _%e187225187321%_
                            _%hd187226187324%_
                            _%tl187227187326%_
                            _%__splice191042191043%_
                            _%target187228187329%_
                            _%tl187230187331%_)
                     (letrec ((_%loop187231187334%_
                               (lambda (_%hd187229187337%_
                                        _%signature187235187339%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187229187337%_))
                                     (let ((_%e187232187342%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187229187337%_))))
                                       (let ((_%lp-tl187234187347%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187232187342%_)))
                                             (_%lp-hd187233187345%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187232187342%_))))
                                         (_%loop187231187334%_
                                          _%lp-tl187234187347%_
                                          (cons _%lp-hd187233187345%_
                                                _%signature187235187339%_))))
                                     (let ((_%signature187236187350%_
                                            (reverse _%signature187235187339%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187224187318%_))
                                           (let ((_%e187237187353%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187224187318%_))))
                                             (let ((_%tl187239187358%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187237187353%_)))
                                                   (_%hd187238187356%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187237187353%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187239187358%_))
                                                   (_%__kont191040191041%_
                                                    _%hd187238187356%_
                                                    _%signature187236187350%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187215187255%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187215187255%_))))))))
                       (_%loop187231187334%_ _%target187228187329%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191038191039%_))
                  (let ((_%e187219187305%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191038191039%_))))
                    (let ((_%tl187221187310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187219187305%_)))
                          (_%hd187220187308%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187219187305%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187221187310%_))
                          (let ((_%e187222187313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187221187310%_))))
                            (let ((_%tl187224187318%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187222187313%_)))
                                  (_%hd187223187316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187222187313%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187223187316%_))
                                  (let ((_%e187225187321%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187223187316%_))))
                                    (let ((_%tl187227187326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187225187321%_)))
                                          (_%hd187226187324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187225187321%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187226187324%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187226187324%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187227187326%_))
                                                  (let ((_%__splice191042191043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187227187326%_
                                                            '0))))
                                                    (let ((_%tl187230187331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191042191043%_
                                                              '1)))
                                                          (_%target187228187329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191042191043%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187230187331%_))
                                                          (_%__match191075191076%_
                                                           _%e187219187305%_
                                                           _%hd187220187308%_
                                                           _%tl187221187310%_
                                                           _%e187222187313%_
                                                           _%hd187223187316%_
                                                           _%tl187224187318%_
                                                           _%e187225187321%_
                                                           _%hd187226187324%_
                                                           _%tl187227187326%_
                                                           _%__splice191042191043%_
                                                           _%target187228187329%_
                                                           _%tl187230187331%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187224187318%_))
                      (let ((_%e187248187276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187224187318%_))))
                        (let ((_%tl187250187281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187248187276%_)))
                              (_%hd187249187279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187248187276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187250187281%_))
                              (_%__kont191044191045%_
                               _%hd187249187279%_
                               _%hd187223187316%_)
                              (let ()
                                (declare (not safe))
                                (_%g187215187255%_)))))
                      (let () (declare (not safe)) (_%g187215187255%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187224187318%_))
                                                      (let ((_%e187248187276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187224187318%_))))
                (let ((_%tl187250187281%_
                       (let () (declare (not safe)) (##cdr _%e187248187276%_)))
                      (_%hd187249187279%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187248187276%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187250187281%_))
                      (_%__kont191044191045%_
                       _%hd187249187279%_
                       _%hd187223187316%_)
                      (let () (declare (not safe)) (_%g187215187255%_)))))
              (let () (declare (not safe)) (_%g187215187255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187224187318%_))
                                                  (let ((_%e187248187276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187224187318%_))))
                                                    (let ((_%tl187250187281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187248187276%_)))
                                                          (_%hd187249187279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187248187276%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187250187281%_))
                                                          (_%__kont191044191045%_
                                                           _%hd187249187279%_
                                                           _%hd187223187316%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187215187255%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187215187255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187224187318%_))
                                              (let ((_%e187248187276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187224187318%_))))
                                                (let ((_%tl187250187281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187248187276%_)))
                                                      (_%hd187249187279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187248187276%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187250187281%_))
                                                      (_%__kont191044191045%_
                                                       _%hd187249187279%_
                                                       _%hd187223187316%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187215187255%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187215187255%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187224187318%_))
                                      (let ((_%e187248187276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187224187318%_))))
                                        (let ((_%tl187250187281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187248187276%_)))
                                              (_%hd187249187279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187248187276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187250187281%_))
                                              (_%__kont191044191045%_
                                               _%hd187249187279%_
                                               _%hd187223187316%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187215187255%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187215187255%_))))))
                          (let () (declare (not safe)) (_%g187215187255%_)))))
                  (let () (declare (not safe)) (_%g187215187255%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187189%_ _%expr187190%_ _%type187191%_)
        (let ((_%$e187193%_ (not _%type187191%_)))
          (if _%$e187193%_
              _%$e187193%_
              (let ((_%$e187196%_
                     (eq? (##structure-ref _%type187191%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187196%_
                    _%$e187196%_
                    (let ((_%expr-type187200%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187190%_))))
                      (if (not _%expr-type187200%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187189%_
                             _%type187191%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187200%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187189%_
                                 _%type187191%_
                                 _%expr-type187200%_))
                              (let ((_%$e187204%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187200%_
                                        'gxc#!abort::t))))
                                (if _%$e187204%_
                                    _%$e187204%_
                                    (let ((_%$e187207%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187200%_
                                              _%type187191%_))))
                                      (if _%$e187207%_
                                          _%$e187207%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187189%_
                                             _%type187191%_
                                             _%expr-type187200%_)))))))))))))))))
