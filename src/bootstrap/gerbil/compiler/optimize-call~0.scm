(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712251118)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191157 (list gxc#::basic-xform::t))
            (__tmp191156 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191157
         '()
         __tmp191156
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190706%_
        (apply make-instance gxc#::optimize-call::t _%$args190706%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191158
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
        (__make-promise __tmp191158)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190698%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190701%_
                (let ((__obj191148
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191148))
               (__tmp191159
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190701%_ _%stx190698%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191159
           gxc#current-compile-method
           _%self190701%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191161 (list gxc#::void::t))
            (__tmp191160 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191161
         '()
         __tmp191160
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190695%_
        (apply make-instance gxc#::check-return-type::t _%$args190695%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191162
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
        (__make-promise __tmp191162)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190687%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190690%_
                (let ((__obj191150
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191150))
               (__tmp191163
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190690%_ _%stx190687%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191163
           gxc#current-compile-method
           _%self190690%_))))
    (define gxc#optimize-call%
      (lambda (_%self190297%_ _%stx190298%_)
        (let* ((_%__stx190761190762%_ _%stx190298%_)
               (_%g190301190347%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190761190762%_)))))
          (let ((_%__kont190763190764%_
                 (lambda (_%L190490%_ _%L190491%_)
                   (let* ((_%rator-id190511%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190491%_)))
                          (_%rator-type190513%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190511%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190513%_))
                             (eq? (##structure-ref
                                   _%rator-type190513%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190297%_ _%stx190298%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190513%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191164
                                      (##structure-ref
                                       _%rator-type190513%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190511%_
                                  '" => "
                                  _%rator-type190513%_
                                  '" "
                                  __tmp191164))
                               (let* ((_%optimized190528%_
                                       (let ((__method191151
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190513%_
                                                 'optimize-call))))
                                         (if __method191151
                                             (__method191151
                                              _%rator-type190513%_
                                              _%self190297%_
                                              _%stx190298%_
                                              (let ((__tmp191165
                                                     (lambda (_%g190520190523%_
                                                              _%g190521190525%_)
                                                       (cons _%g190520190523%_
                                                             _%g190521190525%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191165
                                                 '()
                                                 _%L190490%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190513%_
                                                      'optimize-call)))))
                                      (_%__stx190709190710%_
                                       _%optimized190528%_)
                                      (_%g190531190560%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190709190710%_)))))
                                 (let ((_%__kont190711190712%_
                                        (lambda (_%L190628%_ _%L190629%_)
                                          (let ((_%optimized-rator-id190656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L190629%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type190513%_))
                                                         (eq? _%optimized-rator-id190656%_
                                                              _%rator-id190511%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190656%_
                                                              gxc#checked-primitives)))
                                                _%optimized190528%_
                                                (let ((__tmp191166
                                                       (let ((__tmp191167
                                                              (let ((__tmp191170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190629%_ '())))
                            (__tmp191168
                             (let ((__tmp191169
                                    (lambda (_%g190660190663%_
                                             _%g190661190665%_)
                                      (cons _%g190660190663%_
                                            _%g190661190665%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191169 '() _%L190628%_))))
                        (declare (not safe))
                        (cons __tmp191170 __tmp191168))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191166
                                                   _%stx190298%_))))))
                                       (_%__kont190715190716%_
                                        (lambda () _%optimized190528%_)))
                                   (let ((_%__match190758190759%_
                                          (lambda (_%e190537190572%_
                                                   _%hd190536190575%_
                                                   _%tl190535190577%_
                                                   _%e190540190580%_
                                                   _%hd190539190583%_
                                                   _%tl190538190585%_
                                                   _%e190543190588%_
                                                   _%hd190542190591%_
                                                   _%tl190541190593%_
                                                   _%e190546190596%_
                                                   _%hd190545190599%_
                                                   _%tl190544190601%_
                                                   _%__splice190713190714%_
                                                   _%target190547190604%_
                                                   _%tl190549190606%_)
                                            (letrec ((_%loop190550190609%_
                                                      (lambda (_%hd190548190612%_
                                                               _%arg190554190614%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190548190612%_))
                                                            (let ((_%e190551190617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190548190612%_))))
                      (let ((_%lp-tl190553190622%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190551190617%_)))
                            (_%lp-hd190552190620%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190551190617%_))))
                        (let ((__tmp191171
                               (cons _%lp-hd190552190620%_
                                     _%arg190554190614%_)))
                          (declare (not safe))
                          (_%loop190550190609%_
                           _%lp-tl190553190622%_
                           __tmp191171))))
                    (let ((_%arg190555190625%_ (reverse _%arg190554190614%_)))
                      (_%__kont190711190712%_
                       _%arg190555190625%_
                       _%hd190545190599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190550190609%_
                                                 _%target190547190604%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190709190710%_))
                                         (let ((_%e190537190572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190709190710%_))))
                                           (let ((_%tl190535190577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190537190572%_)))
                                                 (_%hd190536190575%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190537190572%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190536190575%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190536190575%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190535190577%_))
                                                         (let ((_%e190540190580%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190535190577%_))))
                   (let ((_%tl190538190585%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190540190580%_)))
                         (_%hd190539190583%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190540190580%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190539190583%_))
                         (let ((_%e190543190588%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190539190583%_))))
                           (let ((_%tl190541190593%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190543190588%_)))
                                 (_%hd190542190591%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190543190588%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190542190591%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190542190591%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190541190593%_))
                                         (let ((_%e190546190596%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190541190593%_))))
                                           (let ((_%tl190544190601%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190546190596%_)))
                                                 (_%hd190545190599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190546190596%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190544190601%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190538190585%_))
                                                     (let ((_%__splice190713190714%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190538190585%_
                                                               '0))))
                                                       (let ((_%tl190549190606%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190713190714%_ '1)))
                     (_%target190547190604%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190713190714%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190549190606%_))
                     (_%__match190758190759%_
                      _%e190537190572%_
                      _%hd190536190575%_
                      _%tl190535190577%_
                      _%e190540190580%_
                      _%hd190539190583%_
                      _%tl190538190585%_
                      _%e190543190588%_
                      _%hd190542190591%_
                      _%tl190541190593%_
                      _%e190546190596%_
                      _%hd190545190599%_
                      _%tl190544190601%_
                      _%__splice190713190714%_
                      _%target190547190604%_
                      _%tl190549190606%_)
                     (_%__kont190715190716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190715190716%_))
                                                 (_%__kont190715190716%_))))
                                         (_%__kont190715190716%_))
                                     (_%__kont190715190716%_))
                                 (_%__kont190715190716%_))))
                         (_%__kont190715190716%_))))
                 (_%__kont190715190716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190715190716%_))
                                                 (_%__kont190715190716%_))))
                                         (_%__kont190715190716%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190513%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190513%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191172
                                        (let ((__tmp191173
                                               (let ((__tmp191176
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191174
                                                      (map (lambda (_%g190671190673%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190297%_ _%g190671190673%_)))
                   (let ((__tmp191175
                          (lambda (_%g190675190678%_ _%g190676190680%_)
                            (cons _%g190675190678%_ _%g190676190680%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191175 '() _%L190490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191176
                                                       __tmp191174))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191173))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191172
                                    _%stx190298%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190298%_
                                    _%rator-type190513%_))))))))
                (_%__kont190767190768%_
                 (lambda (_%L190392%_ _%L190393%_)
                   (let ((_%rator-type190410%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190393%_))))
                     (if (and _%rator-type190410%_
                              (eq? (##structure-ref
                                    _%rator-type190410%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191177
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190410%_))))
                                (declare (not safe))
                                (not __tmp191177)))
                         (let ((__tmp191178
                                (let ((__tmp191179
                                       (let ((__tmp191182
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190297%_
                                                 _%L190393%_)))
                                             (__tmp191180
                                              (map (lambda (_%g190412190414%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190297%_
                                                        _%g190412190414%_)))
                                                   (let ((__tmp191181
                                                          (lambda (_%g190416190419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190417190421%_)
                    (cons _%g190416190419%_ _%g190417190421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191181
                                                      '()
                                                      _%L190392%_)))))
                                         (declare (not safe))
                                         (cons __tmp191182 __tmp191180))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191179))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191178 _%stx190298%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190410%_))
                                 (let ((__tmp191183
                                        (##structure-ref
                                         _%rator-type190410%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191183 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190297%_ _%stx190298%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190298%_
                                _%rator-type190410%_))))))))
            (let* ((_%__match190828190829%_
                    (lambda (_%e190330190352%_
                             _%hd190329190355%_
                             _%tl190328190357%_
                             _%e190333190360%_
                             _%hd190332190363%_
                             _%tl190331190365%_
                             _%__splice190769190770%_
                             _%target190334190368%_
                             _%tl190336190370%_)
                      (letrec ((_%loop190337190373%_
                                (lambda (_%hd190335190376%_
                                         _%rand190341190378%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190335190376%_))
                                      (let ((_%e190338190381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190335190376%_))))
                                        (let ((_%lp-tl190340190386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190338190381%_)))
                                              (_%lp-hd190339190384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190338190381%_))))
                                          (let ((__tmp191184
                                                 (cons _%lp-hd190339190384%_
                                                       _%rand190341190378%_)))
                                            (declare (not safe))
                                            (_%loop190337190373%_
                                             _%lp-tl190340190386%_
                                             __tmp191184))))
                                      (let ((_%rand190342190389%_
                                             (reverse _%rand190341190378%_)))
                                        (_%__kont190767190768%_
                                         _%rand190342190389%_
                                         _%hd190332190363%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190337190373%_ _%target190334190368%_ '())))))
                   (_%__match190808190809%_
                    (lambda (_%e190307190434%_
                             _%hd190306190437%_
                             _%tl190305190439%_
                             _%e190310190442%_
                             _%hd190309190445%_
                             _%tl190308190447%_
                             _%e190313190450%_
                             _%hd190312190453%_
                             _%tl190311190455%_
                             _%e190316190458%_
                             _%hd190315190461%_
                             _%tl190314190463%_
                             _%__splice190765190766%_
                             _%target190317190466%_
                             _%tl190319190468%_)
                      (letrec ((_%loop190320190471%_
                                (lambda (_%hd190318190474%_
                                         _%rand190324190476%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190318190474%_))
                                      (let ((_%e190321190479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190318190474%_))))
                                        (let ((_%lp-tl190323190484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190321190479%_)))
                                              (_%lp-hd190322190482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190321190479%_))))
                                          (let ((__tmp191185
                                                 (cons _%lp-hd190322190482%_
                                                       _%rand190324190476%_)))
                                            (declare (not safe))
                                            (_%loop190320190471%_
                                             _%lp-tl190323190484%_
                                             __tmp191185))))
                                      (let ((_%rand190325190487%_
                                             (reverse _%rand190324190476%_)))
                                        (_%__kont190763190764%_
                                         _%rand190325190487%_
                                         _%hd190315190461%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190320190471%_
                           _%target190317190466%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190761190762%_))
                  (let ((_%e190307190434%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190761190762%_))))
                    (let ((_%tl190305190439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190307190434%_)))
                          (_%hd190306190437%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190307190434%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190305190439%_))
                          (let ((_%e190310190442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190305190439%_))))
                            (let ((_%tl190308190447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190310190442%_)))
                                  (_%hd190309190445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190310190442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190309190445%_))
                                  (let ((_%e190313190450%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190309190445%_))))
                                    (let ((_%tl190311190455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190313190450%_)))
                                          (_%hd190312190453%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190313190450%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190312190453%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190312190453%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190311190455%_))
                                                  (let ((_%e190316190458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190311190455%_))))
                                                    (let ((_%tl190314190463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190316190458%_)))
                                                          (_%hd190315190461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190316190458%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190314190463%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190308190447%_))
                      (let ((_%__splice190765190766%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190308190447%_
                                '0))))
                        (let ((_%tl190319190468%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190765190766%_ '1)))
                              (_%target190317190466%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190765190766%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190319190468%_))
                              (_%__match190808190809%_
                               _%e190307190434%_
                               _%hd190306190437%_
                               _%tl190305190439%_
                               _%e190310190442%_
                               _%hd190309190445%_
                               _%tl190308190447%_
                               _%e190313190450%_
                               _%hd190312190453%_
                               _%tl190311190455%_
                               _%e190316190458%_
                               _%hd190315190461%_
                               _%tl190314190463%_
                               _%__splice190765190766%_
                               _%target190317190466%_
                               _%tl190319190468%_)
                              (let ()
                                (declare (not safe))
                                (_%g190301190347%_)))))
                      (let () (declare (not safe)) (_%g190301190347%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190308190447%_))
                      (let ((_%__splice190769190770%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190308190447%_
                                '0))))
                        (let ((_%tl190336190370%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190769190770%_ '1)))
                              (_%target190334190368%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190769190770%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190336190370%_))
                              (_%__match190828190829%_
                               _%e190307190434%_
                               _%hd190306190437%_
                               _%tl190305190439%_
                               _%e190310190442%_
                               _%hd190309190445%_
                               _%tl190308190447%_
                               _%__splice190769190770%_
                               _%target190334190368%_
                               _%tl190336190370%_)
                              (let ()
                                (declare (not safe))
                                (_%g190301190347%_)))))
                      (let () (declare (not safe)) (_%g190301190347%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190308190447%_))
                                                      (let ((_%__splice190769190770%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190308190447%_ '0))))
                (let ((_%tl190336190370%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190769190770%_ '1)))
                      (_%target190334190368%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190769190770%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190336190370%_))
                      (_%__match190828190829%_
                       _%e190307190434%_
                       _%hd190306190437%_
                       _%tl190305190439%_
                       _%e190310190442%_
                       _%hd190309190445%_
                       _%tl190308190447%_
                       _%__splice190769190770%_
                       _%target190334190368%_
                       _%tl190336190370%_)
                      (let () (declare (not safe)) (_%g190301190347%_)))))
              (let () (declare (not safe)) (_%g190301190347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190308190447%_))
                                                  (let ((_%__splice190769190770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190308190447%_
                                                            '0))))
                                                    (let ((_%tl190336190370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190769190770%_
                                                              '1)))
                                                          (_%target190334190368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190769190770%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190336190370%_))
                                                          (_%__match190828190829%_
                                                           _%e190307190434%_
                                                           _%hd190306190437%_
                                                           _%tl190305190439%_
                                                           _%e190310190442%_
                                                           _%hd190309190445%_
                                                           _%tl190308190447%_
                                                           _%__splice190769190770%_
                                                           _%target190334190368%_
                                                           _%tl190336190370%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190301190347%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190301190347%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190308190447%_))
                                              (let ((_%__splice190769190770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190308190447%_
                                                        '0))))
                                                (let ((_%tl190336190370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190769190770%_
                                                          '1)))
                                                      (_%target190334190368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190769190770%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190336190370%_))
                                                      (_%__match190828190829%_
                                                       _%e190307190434%_
                                                       _%hd190306190437%_
                                                       _%tl190305190439%_
                                                       _%e190310190442%_
                                                       _%hd190309190445%_
                                                       _%tl190308190447%_
                                                       _%__splice190769190770%_
                                                       _%target190334190368%_
                                                       _%tl190336190370%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190301190347%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190301190347%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190308190447%_))
                                      (let ((_%__splice190769190770%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190308190447%_
                                                '0))))
                                        (let ((_%tl190336190370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190769190770%_
                                                  '1)))
                                              (_%target190334190368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190769190770%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190336190370%_))
                                              (_%__match190828190829%_
                                               _%e190307190434%_
                                               _%hd190306190437%_
                                               _%tl190305190439%_
                                               _%e190310190442%_
                                               _%hd190309190445%_
                                               _%tl190308190447%_
                                               _%__splice190769190770%_
                                               _%target190334190368%_
                                               _%tl190336190370%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190301190347%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190301190347%_))))))
                          (let () (declare (not safe)) (_%g190301190347%_)))))
                  (let () (declare (not safe)) (_%g190301190347%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190259%_ _%ctx190260%_ _%stx190261%_ _%args190262%_)
        (let ((_%self190265%_ _%self190259%_))
          (if (let ((__method191152
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190265%_ 'check-arguments))))
                (if __method191152
                    (__method191152
                     _%self190265%_
                     _%ctx190260%_
                     _%stx190261%_
                     _%args190262%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190265%_
                             'check-arguments))))
              (let* ((_%signature190275%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190265%_ '2 '#f '#f)))
                     (_%signature190277%_ _%signature190275%_)
                     (_%$e190287%_
                      (if _%signature190277%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190277%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190287%_
                    ((lambda (_%unchecked190290%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190290%_))
                           (let ((__tmp191186
                                  (let ((__tmp191187
                                         (let ((__tmp191189
                                                (cons '%#ref
                                                      (cons _%unchecked190290%_
                                                            '())))
                                               (__tmp191188
                                                (map (lambda (_%g190291190293%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190260%_
                                                          _%g190291190293%_)))
                                                     _%args190262%_)))
                                           (declare (not safe))
                                           (cons __tmp191189 __tmp191188))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191187))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191186 _%stx190261%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190260%_ _%stx190261%_))))
                     _%$e190287%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190260%_ _%stx190261%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190260%_ _%stx190261%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self190010%_ _%ctx190011%_ _%stx190012%_ _%args190013%_)
        (let ()
          (let* ((_%self190016%_ _%self190010%_)
                 (_%signature190025190027%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self190016%_ '2 '#f '#f))))
            (if _%signature190025190027%_
                (let* ((_%signature190030%_ _%signature190025190027%_)
                       (_%argument-types190031190033%_
                        (##direct-structure-ref
                         _%signature190030%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types190031190033%_
                      (let* ((_%argument-types190036%_
                              _%argument-types190031190033%_)
                             (_%argument-types190041%_
                              (let ((__tmp191190
                                     (lambda (_%t190039%_)
                                       (if _%t190039%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx190012%_
                                              _%t190039%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191190
                                 _%argument-types190036%_))))
                        (let _%loop190043%_ ((_%rest-args190045%_
                                              _%args190013%_)
                                             (_%rest-types190046%_
                                              _%argument-types190041%_)
                                             (_%result190047%_ '#t))
                          (let* ((_%rest-args190048190056%_
                                  _%rest-args190045%_)
                                 (_%else190050190064%_
                                  (lambda () _%result190047%_))
                                 (_%K190052190125%_
                                  (lambda (_%rest-args190067%_ _%arg190068%_)
                                    (let* ((_%rest-types190069190080%_
                                            _%rest-types190046%_)
                                           (_%E190073190084%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190069190080%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190076190113%_
                                             (lambda (_%rest-types190110%_
                                                      _%type190111%_)
                                               (let ((__tmp191191
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx190012%_
                                                             _%arg190068%_
                                                             _%type190111%_))
                                                          _%result190047%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop190043%_
                                                  _%rest-args190067%_
                                                  _%rest-types190110%_
                                                  __tmp191191))))
                                            (_%K190075190104%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx190012%_
                                                  _%argument-types190041%_))))
                                            (_%K190074190094%_
                                             (lambda (_%tail-type190088%_)
                                               (if (let ((__tmp191192
                                                          (lambda (_%g190089190091%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx190012%_
                                                               _%g190089190091%_
                                                               _%tail-type190088%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191192
                                                      _%rest-args190067%_))
                                                   _%result190047%_
                                                   '#f))))
                                        (let ((_%try-match190071190107%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190069190080%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190075190104%_))
                                                     (let ((_%tail-type190097%_
                                                            _%rest-types190069190080%_))
                                                       (declare (not safe))
                                                       (_%K190074190094%_
                                                        _%tail-type190097%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190069190080%_))
                                              (let ((_%tl190078190118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190069190080%_)))
                                                    (_%hd190077190116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190069190080%_))))
                                                (let ((_%type190121%_
                                                       _%hd190077190116%_)
                                                      (_%rest-types190123%_
                                                       _%tl190078190118%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190076190113%_
                                                     _%rest-types190123%_
                                                     _%type190121%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190071190107%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args190048190056%_))
                                (let ((_%hd190053190128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args190048190056%_)))
                                      (_%tl190054190130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args190048190056%_))))
                                  (let* ((_%arg190133%_ _%hd190053190128%_)
                                         (_%rest-args190135%_
                                          _%tl190054190130%_))
                                    (declare (not safe))
                                    (_%K190052190125%_
                                     _%rest-args190135%_
                                     _%arg190133%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else190050190064%_))))))
                      '#f))
                '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self189821%_ _%ctx189822%_ _%stx189823%_ _%args189824%_)
        (let ((_%self189827%_ _%self189821%_))
          (let* ((_%g189837189847%_
                  (lambda (_%g189838189844%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189838189844%_))))
                 (_%g189836189885%_
                  (lambda (_%g189838189850%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189838189850%_))
                        (let ((_%e189842189852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189838189850%_))))
                          (let ((_%hd189841189855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189842189852%_)))
                                (_%tl189840189857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189842189852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189840189857%_))
                                ((lambda (_%L189860%_)
                                   (let* ((_%klass189872%_
                                           (let ((__tmp191193
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189827%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189823%_
                                              __tmp191193)))
                                          (_%object189874%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189822%_
                                              _%L189860%_)))
                                          (_%instance?189879%_
                                           (let ((_%$e189876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189874%_
                                                     _%klass189872%_))))
                                             (if _%$e189876%_
                                                 _%$e189876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189860%_
                                                    _%klass189872%_))))))
                                     (if _%instance?189879%_
                                         (let ((__tmp191194
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189874%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189860%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189874%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191194
                                            _%stx189823%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189822%_
                                            _%stx189823%_)))))
                                 _%hd189841189855%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189837189847%_ _%g189838189850%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189837189847%_ _%g189838189850%_))))))
            (declare (not safe))
            (_%g189836189885%_ _%args189824%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189617%_ _%ctx189618%_ _%stx189619%_ _%args189620%_)
        (let ((_%self189623%_ _%self189617%_))
          (let* ((_%g189633189643%_
                  (lambda (_%g189634189640%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189634189640%_))))
                 (_%g189632189696%_
                  (lambda (_%g189634189646%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189634189646%_))
                        (let ((_%e189638189648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189634189646%_))))
                          (let ((_%hd189637189651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189638189648%_)))
                                (_%tl189636189653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189638189648%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189636189653%_))
                                ((lambda (_%L189656%_)
                                   (let* ((_%klass189668%_
                                           (let ((__tmp191195
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189623%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189619%_
                                              __tmp191195)))
                                          (_%object189670%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189618%_
                                              _%L189656%_)))
                                          (_%instance?189675%_
                                           (let ((_%$e189672%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189670%_
                                                     _%klass189668%_))))
                                             (if _%$e189672%_
                                                 _%$e189672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189656%_
                                                    _%klass189668%_)))))
                                          (_%klass189678%_ _%klass189668%_))
                                     (if _%instance?189675%_
                                         (let ((__tmp191196
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189670%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189656%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189670%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191196
                                            _%stx189619%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189678%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191197
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189678%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189670%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191197
                                                _%stx189619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189678%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191198
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189678%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189670%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191198
                                                    _%stx189619%_))
                                                 (let ((__tmp191199
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189623%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189670%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191199
                                                    _%stx189619%_)))))))
                                 _%hd189637189651%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189633189643%_ _%g189634189646%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189633189643%_ _%g189634189646%_))))))
            (declare (not safe))
            (_%g189632189696%_ _%args189620%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189280%_)
        (let* ((_%__stx190838190839%_ _%stx189280%_)
               (_%g189285189326%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190838190839%_)))))
          (let ((_%__kont190840190841%_ (lambda () '#t))
                (_%__kont190842190843%_ (lambda () '#t))
                (_%__kont190844190845%_
                 (lambda (_%L189394%_ _%L189395%_)
                   (let ((_%rator-type189416189418%_
                          (let ((__tmp191200
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189395%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191200))))
                     (if _%rator-type189416189418%_
                         (let* ((_%rator-type189421%_
                                 _%rator-type189416189418%_)
                                (_%rator-signature189422189424%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189421%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189421%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189422189424%_
                               (let* ((_%rator-signature189427%_
                                       _%rator-signature189422189424%_)
                                      (_%rator-effect189428189430%_
                                       (if _%rator-signature189427%_
                                           (##direct-structure-ref
                                            _%rator-signature189427%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189428189430%_
                                     (let ((_%rator-effect189433%_
                                            _%rator-effect189428189430%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189433%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189433%_))
                                           (let ((__tmp191201
                                                  (let ((__tmp191202
                                                         (lambda (_%g189438189441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189439189443%_)
                   (cons _%g189438189441%_ _%g189439189443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191202
                                                     '()
                                                     _%L189394%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191201))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190848190849%_ (lambda () '#f)))
            (let ((_%__match190927190928%_
                   (lambda (_%e189303189338%_
                            _%hd189302189341%_
                            _%tl189301189343%_
                            _%e189306189346%_
                            _%hd189305189349%_
                            _%tl189304189351%_
                            _%e189309189354%_
                            _%hd189308189357%_
                            _%tl189307189359%_
                            _%e189312189362%_
                            _%hd189311189365%_
                            _%tl189310189367%_
                            _%__splice190846190847%_
                            _%target189313189370%_
                            _%tl189315189372%_)
                     (letrec ((_%loop189316189375%_
                               (lambda (_%hd189314189378%_
                                        _%rand189320189380%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189314189378%_))
                                     (let ((_%e189317189383%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189314189378%_))))
                                       (let ((_%lp-tl189319189388%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189317189383%_)))
                                             (_%lp-hd189318189386%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189317189383%_))))
                                         (let ((__tmp191203
                                                (cons _%lp-hd189318189386%_
                                                      _%rand189320189380%_)))
                                           (declare (not safe))
                                           (_%loop189316189375%_
                                            _%lp-tl189319189388%_
                                            __tmp191203))))
                                     (let ((_%rand189321189391%_
                                            (reverse _%rand189320189380%_)))
                                       (_%__kont190844190845%_
                                        _%rand189321189391%_
                                        _%hd189311189365%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189316189375%_ _%target189313189370%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190838190839%_))
                  (let ((_%e189289189474%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190838190839%_))))
                    (let ((_%tl189287189479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189289189474%_)))
                          (_%hd189288189477%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189289189474%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189288189477%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189288189477%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189287189479%_))
                                  (let ((_%e189292189482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189287189479%_))))
                                    (let ((_%tl189290189487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189292189482%_)))
                                          (_%hd189291189485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189292189482%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189290189487%_))
                                          (_%__kont190840190841%_)
                                          (_%__kont190848190849%_))))
                                  (_%__kont190848190849%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189288189477%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189287189479%_))
                                      (let ((_%e189298189459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189287189479%_))))
                                        (let ((_%tl189296189464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189298189459%_)))
                                              (_%hd189297189462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189298189459%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189296189464%_))
                                              (_%__kont190842190843%_)
                                              (_%__kont190848190849%_))))
                                      (_%__kont190848190849%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189288189477%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189287189479%_))
                                          (let ((_%e189306189346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189287189479%_))))
                                            (let ((_%tl189304189351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189306189346%_)))
                                                  (_%hd189305189349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189306189346%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189305189349%_))
                                                  (let ((_%e189309189354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189305189349%_))))
                                                    (let ((_%tl189307189359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189309189354%_)))
                                                          (_%hd189308189357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189309189354%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189308189357%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189308189357%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189307189359%_))
                          (let ((_%e189312189362%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189307189359%_))))
                            (let ((_%tl189310189367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189312189362%_)))
                                  (_%hd189311189365%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189312189362%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189310189367%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189304189351%_))
                                      (let ((_%__splice190846190847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189304189351%_
                                                '0))))
                                        (let ((_%tl189315189372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190846190847%_
                                                  '1)))
                                              (_%target189313189370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190846190847%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189315189372%_))
                                              (_%__match190927190928%_
                                               _%e189289189474%_
                                               _%hd189288189477%_
                                               _%tl189287189479%_
                                               _%e189306189346%_
                                               _%hd189305189349%_
                                               _%tl189304189351%_
                                               _%e189309189354%_
                                               _%hd189308189357%_
                                               _%tl189307189359%_
                                               _%e189312189362%_
                                               _%hd189311189365%_
                                               _%tl189310189367%_
                                               _%__splice190846190847%_
                                               _%target189313189370%_
                                               _%tl189315189372%_)
                                              (_%__kont190848190849%_))))
                                      (_%__kont190848190849%_))
                                  (_%__kont190848190849%_))))
                          (_%__kont190848190849%_))
                      (_%__kont190848190849%_))
                  (_%__kont190848190849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190848190849%_))))
                                          (_%__kont190848190849%_))
                                      (_%__kont190848190849%_))))
                          (_%__kont190848190849%_))))
                  (_%__kont190848190849%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189275%_ _%klass189276%_)
        (let ((_%expr-type189278%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189275%_))))
          (if _%expr-type189278%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189278%_ _%klass189276%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189253%_ _%expr189254%_ _%type189255%_)
        (if (let () (declare (not safe)) (not _%type189255%_))
            (let () '#f)
            (let ((_%$e189258%_
                   (eq? (##structure-ref _%type189255%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189258%_
                  _%$e189258%_
                  (let ((_%expr-type189262%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189254%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189262%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189262%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189266%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189262%_
                                      'gxc#!abort::t))))
                              (if _%$e189266%_
                                  _%$e189266%_
                                  (let ((_%$e189269%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189262%_
                                            _%type189255%_))))
                                    (if _%$e189269%_
                                        _%$e189269%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189255%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189255%_
                                                   _%expr-type189262%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189253%_
                                                   _%expr189254%_
                                                   _%expr-type189262%_
                                                   _%type189255%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189067%_ _%ctx189068%_ _%stx189069%_ _%args189070%_)
        (let ((_%self189073%_ _%self189067%_))
          (let* ((_%klass189083%_
                  (let ((__tmp191204
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189073%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189069%_ __tmp191204)))
                 (_%fields189085%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189083%_
                             '5
                             '#f
                             '#f))))
                 (_%args189091%_
                  (map (lambda (_%g189086189088%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189068%_ _%g189086189088%_)))
                       _%args189070%_))
                 (_%inline-make-object189093%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189073%_
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
                             _%self189073%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189085%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189096%_ _%klass189083%_)
                   (_%$e189110%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189096%_ '6 '#f '#f))))
              (if _%$e189110%_
                  ((lambda (_%ctor189113%_)
                     (let ((_%$obj189115%_
                            (let ((__tmp191205
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191205)))
                           (_%ctor-impl189116%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189096%_
                               _%ctor189113%_))))
                       (let ((__tmp191206
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189115%_ '())
                                                      (cons _%inline-make-object189093%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189116%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189116%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189115%_ '()))
                                          _%args189091%_)))
                        (let ((_%$ctor189118%_
                               (let ((__tmp191207
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191207))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189118%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189073%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189115%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189113%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189118%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189115%_ '()))
                                        _%args189091%_)))
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
                                 _%self189073%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189113%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189115%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191206 _%stx189069%_))))
                   _%$e189110%_)
                  (let ((_%$e189120%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189096%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189120%_
                        ((lambda (_%metaclass189123%_)
                           (let* ((_%$obj189125%_
                                   (let ((__tmp191208
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191208)))
                                  (_%metakons189127%_
                                   (let ((__tmp191209
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189069%_
                                             _%metaclass189123%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191209
                                      'instance-init!)))
                                  (__tmp191210
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189093%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189127%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189073%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189091%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189073%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons 'instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj189125%_ '()))
                   _%args189091%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189125%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191210
                              _%stx189069%_)))
                         _%$e189120%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189096%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191211
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189091%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191211 _%fields189085%_))
                                  (let ((__tmp191212
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189073%_
                            '1
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '##structure '()))
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self189073%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189091%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191212
                                     _%stx189069%_))
                                  (let ((__tmp191214
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189073%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191213
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189096%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189069%_
                                     __tmp191214
                                     __tmp191213))))
                            (let ((_%$obj189132%_
                                   (let ((__tmp191215
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191215))))
                              (let _%lp189134%_ ((_%rest189136%_
                                                  _%args189091%_)
                                                 (_%initializers189137%_ '()))
                                (let* ((_%__stx190930190931%_ _%rest189136%_)
                                       (_%g189141189162%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190930190931%_)))))
                                  (let ((_%__kont190932190933%_
                                         (lambda (_%L189216%_
                                                  _%L189217%_
                                                  _%L189218%_)
                                           (let* ((_%slot189245%_
                                                   (let ((__tmp191216
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189218%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191216)))
                                                  (_%off189247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189096%_
                                                      _%slot189245%_))))
                                             (if _%off189247%_
                                                 (let ((__tmp191217
                                                        (cons (cons _%off189247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189217%_)
                      _%initializers189137%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189134%_
                                                    _%L189216%_
                                                    __tmp191217))
                                                 (let ((__tmp191218
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189073%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189069%_
                                                    __tmp191218
                                                    _%slot189245%_))))))
                                        (_%__kont190934190935%_
                                         (lambda ()
                                           (let ((__tmp191219
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189093%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191222
                                         (cons (cons '%#ref
                                                     (cons _%$obj189132%_ '()))
                                               '()))
                                        (__tmp191220
                                         (let ((__tmp191221
                                                (lambda (_%i189176%_
                                                         _%r189177%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189073%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189176%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189132%_ '()))
                                        (cons (cdr _%i189176%_) '())))))
                _%r189177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191221
                                            '()
                                            _%initializers189137%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191222 __tmp191220)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191219
                                              _%stx189069%_))))
                                        (_%__kont190936190937%_
                                         (lambda ()
                                           (let ((__tmp191223
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189093%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189132%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191223
                                              _%stx189069%_)))))
                                    (let* ((_%g189139189179%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190930190931%_))
                                                  (_%__kont190934190935%_)
                                                  (_%__kont190936190937%_))))
                                           (_%__match190967190968%_
                                            (lambda (_%e189148189184%_
                                                     _%hd189147189187%_
                                                     _%tl189146189189%_
                                                     _%e189151189192%_
                                                     _%hd189150189195%_
                                                     _%tl189149189197%_
                                                     _%e189154189200%_
                                                     _%hd189153189203%_
                                                     _%tl189152189205%_
                                                     _%e189157189208%_
                                                     _%hd189156189211%_
                                                     _%tl189155189213%_)
                                              (let ((_%L189216%_
                                                     _%tl189155189213%_)
                                                    (_%L189217%_
                                                     _%hd189156189211%_)
                                                    (_%L189218%_
                                                     _%hd189153189203%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189218%_))
                                                    (_%__kont190932190933%_
                                                     _%L189216%_
                                                     _%L189217%_
                                                     _%L189218%_)
                                                    (_%__kont190936190937%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190930190931%_))
                                          (let ((_%e189148189184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190930190931%_))))
                                            (let ((_%tl189146189189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189148189184%_)))
                                                  (_%hd189147189187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189148189184%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189147189187%_))
                                                  (let ((_%e189151189192%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189147189187%_))))
                                                    (let ((_%tl189149189197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189151189192%_)))
                                                          (_%hd189150189195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189151189192%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189150189195%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189150189195%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189149189197%_))
                          (let ((_%e189154189200%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189149189197%_))))
                            (let ((_%tl189152189205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189154189200%_)))
                                  (_%hd189153189203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189154189200%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189152189205%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189146189189%_))
                                      (let ((_%e189157189208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189146189189%_))))
                                        (let ((_%tl189155189213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189157189208%_)))
                                              (_%hd189156189211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189157189208%_))))
                                          (_%__match190967190968%_
                                           _%e189148189184%_
                                           _%hd189147189187%_
                                           _%tl189146189189%_
                                           _%e189151189192%_
                                           _%hd189150189195%_
                                           _%tl189149189197%_
                                           _%e189154189200%_
                                           _%hd189153189203%_
                                           _%tl189152189205%_
                                           _%e189157189208%_
                                           _%hd189156189211%_
                                           _%tl189155189213%_)))
                                      (_%__kont190936190937%_))
                                  (_%__kont190936190937%_))))
                          (_%__kont190936190937%_))
                      (_%__kont190936190937%_))
                  (_%__kont190936190937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190936190937%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189139189179%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188850%_ _%ctx188851%_ _%stx188852%_ _%args188853%_)
        (let ((_%self188856%_ _%self188850%_))
          (let* ((_%arguments-ok?188866%_
                  (let ((__method191153
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188856%_ 'check-arguments))))
                    (if __method191153
                        (__method191153
                         _%self188856%_
                         _%ctx188851%_
                         _%stx188852%_
                         _%args188853%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188856%_
                                 'check-arguments)))))
                 (_%g188868188878%_
                  (lambda (_%g188869188875%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188869188875%_))))
                 (_%g188867188942%_
                  (lambda (_%g188869188881%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188869188881%_))
                        (let ((_%e188873188883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188869188881%_))))
                          (let ((_%hd188872188886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188873188883%_)))
                                (_%tl188871188888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188873188883%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188871188888%_))
                                ((lambda (_%L188891%_)
                                   (let* ((_%klass188904%_
                                           (let ((__tmp191224
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188856%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188852%_
                                              __tmp191224)))
                                          (_%field188906%_
                                           (let ((__tmp191225
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188856%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188904%_
                                              __tmp191225)))
                                          (_%object188908%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188851%_
                                              _%L188891%_)))
                                          (_%klass188911%_ _%klass188904%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188911%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191226
                                                (cons (if (or _%arguments-ok?188866%_
                                                              (let ((__tmp191227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188856%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191227)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188856%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188906%_ '()))
                          (cons _%object188908%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191226
                                            _%stx188852%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188911%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191228
                                                    (cons (if (or _%arguments-ok?188866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191229
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188856%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191229)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188856%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188906%_ '()))
                              (cons _%object188908%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191228
                                                _%stx188852%_))
                                             (let ((_%$e188930%_
                                                    (let ((__tmp191230
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188856%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188911%_
                                                       __tmp191230))))
                                               (if _%$e188930%_
                                                   ((lambda (_%klass188933%_)
                                                      (let ((__tmp191231
                                                             (cons (if (or _%arguments-ok?188866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191232
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188856%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191232)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188856%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188906%_ '()))
                                       (cons _%object188908%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191231 _%stx188852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188930%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188856%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191233
                                                              (let ((_%$obj188939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191234
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191234))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188939%_ '())
                                                (cons _%object188908%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188911%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188939%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188856%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188906%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188939%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188866%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188939%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188856%_
                             '3
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
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188856%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188856%_
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
                 (gxc#xform-wrap-source __tmp191233 _%stx188852%_))
               (let ((__tmp191235
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188908%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188856%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191235 _%stx188852%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188872188886%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188868188878%_ _%g188869188881%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188868188878%_ _%g188869188881%_))))))
            (declare (not safe))
            (_%g188867188942%_ _%args188853%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188614%_ _%ctx188615%_ _%stx188616%_ _%args188617%_)
        (let ((_%self188620%_ _%self188614%_))
          (let* ((_%arguments-ok?188630%_
                  (let ((__method191154
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188620%_ 'check-arguments))))
                    (if __method191154
                        (__method191154
                         _%self188620%_
                         _%ctx188615%_
                         _%stx188616%_
                         _%args188617%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188620%_
                                 'check-arguments)))))
                 (_%g188632188646%_
                  (lambda (_%g188633188643%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188633188643%_))))
                 (_%g188631188725%_
                  (lambda (_%g188633188649%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188633188649%_))
                        (let ((_%e188638188651%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188633188649%_))))
                          (let ((_%hd188637188654%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188638188651%_)))
                                (_%tl188636188656%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188638188651%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188636188656%_))
                                (let ((_%e188641188659%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188636188656%_))))
                                  (let ((_%hd188640188662%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188641188659%_)))
                                        (_%tl188639188664%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188641188659%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188639188664%_))
                                        ((lambda (_%L188667%_ _%L188668%_)
                                           (let* ((_%klass188684%_
                                                   (let ((__tmp191236
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188620%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188616%_
                                                      __tmp191236)))
                                                  (_%field188686%_
                                                   (let ((__tmp191237
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188620%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188684%_
                                                      __tmp191237)))
                                                  (_%object188688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188615%_
                                                      _%L188668%_)))
                                                  (_%value188690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188615%_
                                                      _%L188667%_)))
                                                  (_%klass188693%_
                                                   _%klass188684%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188693%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191238
                                                        (cons (if (or _%arguments-ok?188630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191239
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188620%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191239)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188620%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188686%_ '()))
                                  (cons _%object188688%_
                                        (cons _%value188690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191238
                                                    _%stx188616%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188693%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191240
                                                            (cons (if (or _%arguments-ok?188630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191241
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188620%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191241)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188620%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188686%_ '()))
                                      (cons _%object188688%_
                                            (cons _%value188690%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191240 _%stx188616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188713%_
                                                            (let ((__tmp191242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188620%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188693%_
                       __tmp191242))))
               (if _%$e188713%_
                   ((lambda (_%klass188716%_)
                      (let ((__tmp191243
                             (cons (if (or _%arguments-ok?188630%_
                                           (let ((__tmp191244
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188620%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191244)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188620%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188686%_
                                                           '()))
                                               (cons _%object188688%_
                                                     (cons _%value188690%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191243 _%stx188616%_)))
                    _%$e188713%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188620%_ '4 '#f '#f))
                       (let ((__tmp191245
                              (let ((_%$obj188722%_
                                     (let ((__tmp191246
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191246))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188722%_
                                                              '())
                                                        (cons _%object188688%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188693%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188722%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188620%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188686%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188722%_
                                                                '()))
                                                    (cons _%value188690%_
                                                          '())))))
                            (cons (if _%arguments-ok?188630%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188620%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188690%_ '())))))
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
                               _%self188620%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188722%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188620%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191245 _%stx188616%_))
                       (let ((__tmp191247
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188688%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188620%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188690%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191247
                          _%stx188616%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188640188662%_
                                         _%hd188637188654%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188632188646%_
                                           _%g188633188649%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188632188646%_ _%g188633188649%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188632188646%_ _%g188633188649%_))))))
            (declare (not safe))
            (_%g188631188725%_ _%args188617%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188429%_ _%ctx188430%_ _%stx188431%_ _%args188432%_)
        (let ((_%self188435%_ _%self188429%_))
          (let* ((_%self188444188454%_ _%self188435%_)
                 (_%E188446188458%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188444188454%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188447188468%_
                  (lambda (_%inline188461%_ _%dispatch188462%_ _%arity188463%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188435%_
                           _%args188432%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188431%_
                           _%arity188463%_)))
                    (if _%inline188461%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191248
                                 (let ((__tmp191249
                                        (_%inline188461%_ _%stx188431%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191249
                                    _%stx188431%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188430%_ __tmp191248)))
                        (if (and _%dispatch188462%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188462%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188462%_))
                              (let ((__tmp191250
                                     (let ((__tmp191251
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191251
                                        _%stx188431%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188430%_ __tmp191250)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188435%_
                               _%ctx188430%_
                               _%stx188431%_
                               _%args188432%_)))))))
            (if '#t
                (let* ((_%e188448188471%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188444188454%_
                           '1
                           '#f
                           '#f)))
                       (_%e188449188474%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188444188454%_
                           '2
                           '#f
                           '#f)))
                       (_%e188450188477%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188444188454%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188480%_ _%e188450188477%_)
                       (_%e188451188482%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188444188454%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188485%_ _%e188451188482%_)
                       (_%e188452188487%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188444188454%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188490%_ _%e188452188487%_))
                  (declare (not safe))
                  (_%K188447188468%_
                   _%inline188490%_
                   _%dispatch188485%_
                   _%arity188480%_))
                (let () (declare (not safe)) (_%E188446188458%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188281%_ _%ctx188282%_ _%stx188283%_ _%args188284%_)
        (let ()
          (let* ((_%self188287%_ _%self188281%_)
                 (_%$e188301%_
                  (let ((__tmp191253
                         (lambda (_%g188296188298%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188296188298%_
                              _%args188284%_))))
                        (__tmp191252
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188287%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191253 __tmp191252))))
            (if _%$e188301%_
                ((lambda (_%clause188304%_)
                   (let ((__method191155
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188304%_ 'optimize-call))))
                     (if __method191155
                         (__method191155
                          _%clause188304%_
                          _%ctx188282%_
                          _%stx188283%_
                          _%args188284%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188304%_
                                  'optimize-call)))))
                 _%$e188301%_)
                (let ((__tmp191254
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188287%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188283%_
                   __tmp191254)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188021%_ _%ctx188022%_ _%stx188023%_ _%args188024%_)
        (let ((_%self188027%_ _%self188021%_))
          (let* ((_%self188036188045%_ _%self188027%_)
                 (_%E188038188049%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188036188045%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K188039188140%_
                  (lambda (_%dispatch188052%_ _%table188053%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch188052%_))
                        (let* ((_%g188054188064%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch188052%_)))
                               (_%else188056188072%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch188052%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx188022%_
                                     _%stx188023%_))))
                               (_%K188058188121%_
                                (lambda (_%main188075%_ _%keys188076%_)
                                  (let ((_g191255_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx188023%_
                                            _%args188024%_))))
                                    (begin
                                      (let ((_g191256_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191255_)
                                                   (##vector-length _g191255_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191256_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191256_)))
                                      (let ((_%pargs188078%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191255_ 0)))
                                            (_%kwargs188079%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191255_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188075%_))
                                          (if _%table188053%_
                                              (let ((_%xargs188087%_
                                                     (map (lambda (_%key188081%_)
                                                            (let ((_%$e188083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188081%_ _%kwargs188079%_))))
                      (if _%$e188083%_
                          _%$e188083%_
                          (let () '(%#ref absent-value)))))
                  _%keys188076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188089%_)
                                                   (if (memq (car _%kw188089%_)
                                                             _%keys188076%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx188023%_
                                                          _%keys188076%_
                                                          _%kw188089%_))))
                                                 _%kwargs188079%_)
                                                (let ((__tmp191257
                                                       (let ((__tmp191258
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188075%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188078%_
                                           _%xargs188087%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191258 _%stx188023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx188022%_
                                                   __tmp191257)))
                                              (let* ((_%kwt188091%_
                                                      (let ((__tmp191259
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191259)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188095%_
                                                      (map (lambda (_%_188093%_)
                                                             (let ((__tmp191260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191260)))
                   _%kwargs188079%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188100%_
                                                      (map (lambda (_%kw188097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188098%_)
                     (cons (cons _%kwvar188098%_ '())
                           (cons (cdr _%kw188097%_) '())))
                   _%kwargs188079%_
                   _%kwvars188095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188105%_
                                                      (map (lambda (_%kw188102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188103%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188091%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188102%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188103%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188079%_
                   _%kwvars188095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188110%_
                                                      (map (lambda (_%kw188107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188108%_)
                     (cons (car _%kw188107%_)
                           (cons '%#ref (cons _%kwvar188108%_ '()))))
                   _%kwargs188079%_
                   _%kwvars188095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188118%_
                                                      (map (lambda (_%key188112%_)
                                                             (let ((_%$e188114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188112%_ _%xkwargs188110%_))))
                       (if _%$e188114%_
                           _%$e188114%_
                           (let () '(%#ref absent-value)))))
                   _%keys188076%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191261
                                                      (let ((__tmp191262
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188100%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191263
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188079%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191263
                                _%stx188023%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191265
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188091%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188078%_ _%xargs188118%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191265
                                       _%stx188023%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191264 _%kwset188105%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191262 _%stx188023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx188022%_
                                                 __tmp191261))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g188054188064%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e188059188124%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188054188064%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e188060188127%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188054188064%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e188061188130%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188054188064%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188133%_ _%e188061188130%_)
                                     (_%e188062188135%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188054188064%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188138%_ _%e188062188135%_))
                                (declare (not safe))
                                (_%K188058188121%_
                                 _%main188138%_
                                 _%keys188133%_))
                              (let ()
                                (declare (not safe))
                                (_%else188056188072%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx188022%_ _%stx188023%_))))))
            (if '#t
                (let* ((_%e188040188143%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188036188045%_
                           '1
                           '#f
                           '#f)))
                       (_%e188041188146%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188036188045%_
                           '2
                           '#f
                           '#f)))
                       (_%e188042188149%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188036188045%_
                           '3
                           '#f
                           '#f)))
                       (_%table188152%_ _%e188042188149%_)
                       (_%e188043188154%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188036188045%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188157%_ _%e188043188154%_))
                  (declare (not safe))
                  (_%K188039188140%_ _%dispatch188157%_ _%table188152%_))
                (let () (declare (not safe)) (_%E188038188049%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187634%_ _%args187635%_)
        (let _%lp187637%_ ((_%rest187639%_ _%args187635%_)
                           (_%pargs187640%_ '())
                           (_%kwargs187641%_ '()))
          (let* ((_%__stx190972190973%_ _%rest187639%_)
                 (_%g187647187699%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190972190973%_)))))
            (let ((_%__kont190974190975%_
                   (lambda (_%L187878%_ _%L187879%_)
                     (let ((__tmp191266 (cons _%L187879%_ _%pargs187640%_)))
                       (declare (not safe))
                       (_%lp187637%_
                        _%L187878%_
                        __tmp191266
                        _%kwargs187641%_))))
                  (_%__kont190976190977%_
                   (lambda (_%L187824%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187824%_ _%pargs187640%_))
                             (reverse _%kwargs187641%_))))
                  (_%__kont190978190979%_
                   (lambda (_%L187771%_ _%L187772%_ _%L187773%_)
                     (let ((_%kw187790%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187773%_))))
                       (if (assq _%kw187790%_ _%kwargs187641%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187634%_
                              _%kw187790%_))
                           (let ((__tmp191267
                                  (cons (cons _%kw187790%_ _%L187772%_)
                                        _%kwargs187641%_)))
                             (declare (not safe))
                             (_%lp187637%_
                              _%L187771%_
                              _%pargs187640%_
                              __tmp191267))))))
                  (_%__kont190980190981%_
                   (lambda (_%L187719%_ _%L187720%_)
                     (let ((__tmp191268 (cons _%L187720%_ _%pargs187640%_)))
                       (declare (not safe))
                       (_%lp187637%_
                        _%L187719%_
                        __tmp191268
                        _%kwargs187641%_))))
                  (_%__kont190982190983%_
                   (lambda ()
                     (values (reverse _%pargs187640%_)
                             (reverse _%kwargs187641%_)))))
              (let ((_%__match191079191080%_
                     (lambda (_%e187680187739%_
                              _%hd187679187742%_
                              _%tl187678187744%_
                              _%e187683187747%_
                              _%hd187682187750%_
                              _%tl187681187752%_
                              _%e187686187755%_
                              _%hd187685187758%_
                              _%tl187684187760%_
                              _%e187689187763%_
                              _%hd187688187766%_
                              _%tl187687187768%_)
                       (let ((_%L187771%_ _%tl187687187768%_)
                             (_%L187772%_ _%hd187688187766%_)
                             (_%L187773%_ _%hd187685187758%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187773%_))
                             (_%__kont190978190979%_
                              _%L187771%_
                              _%L187772%_
                              _%L187773%_)
                             (_%__kont190980190981%_
                              _%tl187678187744%_
                              _%hd187679187742%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190972190973%_))
                    (let ((_%e187653187843%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190972190973%_))))
                      (let ((_%tl187651187848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187653187843%_)))
                            (_%hd187652187846%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187653187843%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187652187846%_))
                            (let ((_%e187656187851%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187652187846%_))))
                              (let ((_%tl187654187856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187656187851%_)))
                                    (_%hd187655187854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187656187851%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187655187854%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187655187854%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187654187856%_))
                                            (let ((_%e187659187859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187654187856%_))))
                                              (let ((_%tl187657187864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187659187859%_)))
                                                    (_%hd187658187862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187659187859%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187658187862%_))
                                                    (let ((_%e187660187867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187658187862%_))))
                                                      (if (equal? _%e187660187867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187657187864%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187651187848%_))
                          (let ((_%e187663187870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187651187848%_))))
                            (let ((_%tl187661187875%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187663187870%_)))
                                  (_%hd187662187873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187663187870%_))))
                              (_%__kont190974190975%_
                               _%tl187661187875%_
                               _%hd187662187873%_)))
                          (_%__kont190980190981%_
                           _%tl187651187848%_
                           _%hd187652187846%_))
                      (_%__kont190980190981%_
                       _%tl187651187848%_
                       _%hd187652187846%_))
                  (if (equal? _%e187660187867%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187657187864%_))
                          (_%__kont190976190977%_ _%tl187651187848%_)
                          (_%__kont190980190981%_
                           _%tl187651187848%_
                           _%hd187652187846%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187657187864%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187651187848%_))
                              (let ((_%e187689187763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187651187848%_))))
                                (let ((_%tl187687187768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187689187763%_)))
                                      (_%hd187688187766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187689187763%_))))
                                  (_%__match191079191080%_
                                   _%e187653187843%_
                                   _%hd187652187846%_
                                   _%tl187651187848%_
                                   _%e187656187851%_
                                   _%hd187655187854%_
                                   _%tl187654187856%_
                                   _%e187659187859%_
                                   _%hd187658187862%_
                                   _%tl187657187864%_
                                   _%e187689187763%_
                                   _%hd187688187766%_
                                   _%tl187687187768%_)))
                              (_%__kont190980190981%_
                               _%tl187651187848%_
                               _%hd187652187846%_))
                          (_%__kont190980190981%_
                           _%tl187651187848%_
                           _%hd187652187846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187657187864%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187651187848%_))
                                                            (let ((_%e187689187763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187651187848%_))))
                      (let ((_%tl187687187768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187689187763%_)))
                            (_%hd187688187766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187689187763%_))))
                        (_%__match191079191080%_
                         _%e187653187843%_
                         _%hd187652187846%_
                         _%tl187651187848%_
                         _%e187656187851%_
                         _%hd187655187854%_
                         _%tl187654187856%_
                         _%e187659187859%_
                         _%hd187658187862%_
                         _%tl187657187864%_
                         _%e187689187763%_
                         _%hd187688187766%_
                         _%tl187687187768%_)))
                    (_%__kont190980190981%_
                     _%tl187651187848%_
                     _%hd187652187846%_))
                (_%__kont190980190981%_
                 _%tl187651187848%_
                 _%hd187652187846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190980190981%_
                                             _%tl187651187848%_
                                             _%hd187652187846%_))
                                        (_%__kont190980190981%_
                                         _%tl187651187848%_
                                         _%hd187652187846%_))
                                    (_%__kont190980190981%_
                                     _%tl187651187848%_
                                     _%hd187652187846%_))))
                            (_%__kont190980190981%_
                             _%tl187651187848%_
                             _%hd187652187846%_))))
                    (_%__kont190982190983%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187618%_ _%ctx187619%_ _%stx187620%_ _%args187621%_)
        (let ((_%self187624%_ _%self187618%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187619%_ _%stx187620%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187306%_ _%stx187307%_)
        (let* ((_%__stx191088191089%_ _%stx187307%_)
               (_%g187310187350%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191088191089%_)))))
          (let ((_%__kont191090191091%_
                 (lambda (_%L187456%_ _%L187457%_)
                   (let ((_%$e187484%_
                          (member 'return:
                                  (let ((__tmp191269
                                         (lambda (_%g187476187479%_
                                                  _%g187477187481%_)
                                           (cons _%g187476187479%_
                                                 _%g187477187481%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191269 '() _%L187457%_))
                                  gx#stx-eq?)))
                     (if _%$e187484%_
                         ((lambda (_%tail187487%_)
                            (let ((_%type187489%_
                                   (let ((__tmp191270
                                          (let ((__tmp191271
                                                 (cadr _%tail187487%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191271))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187307%_
                                      __tmp191270))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187307%_
                                 _%L187456%_
                                 _%type187489%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187306%_
                                 _%L187456%_))))
                          _%$e187484%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187306%_ _%L187456%_))))))
                (_%__kont191094191095%_
                 (lambda (_%L187379%_ _%L187380%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187306%_ _%L187379%_)))))
            (let ((_%__match191125191126%_
                   (lambda (_%e187316187400%_
                            _%hd187315187403%_
                            _%tl187314187405%_
                            _%e187319187408%_
                            _%hd187318187411%_
                            _%tl187317187413%_
                            _%e187322187416%_
                            _%hd187321187419%_
                            _%tl187320187421%_
                            _%__splice191092191093%_
                            _%target187323187424%_
                            _%tl187325187426%_)
                     (letrec ((_%loop187326187429%_
                               (lambda (_%hd187324187432%_
                                        _%signature187330187434%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187324187432%_))
                                     (let ((_%e187327187437%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187324187432%_))))
                                       (let ((_%lp-tl187329187442%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187327187437%_)))
                                             (_%lp-hd187328187440%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187327187437%_))))
                                         (let ((__tmp191272
                                                (cons _%lp-hd187328187440%_
                                                      _%signature187330187434%_)))
                                           (declare (not safe))
                                           (_%loop187326187429%_
                                            _%lp-tl187329187442%_
                                            __tmp191272))))
                                     (let ((_%signature187331187445%_
                                            (reverse _%signature187330187434%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187317187413%_))
                                           (let ((_%e187334187448%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187317187413%_))))
                                             (let ((_%tl187332187453%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187334187448%_)))
                                                   (_%hd187333187451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187334187448%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187332187453%_))
                                                   (_%__kont191090191091%_
                                                    _%hd187333187451%_
                                                    _%signature187331187445%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187310187350%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187310187350%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187326187429%_ _%target187323187424%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191088191089%_))
                  (let ((_%e187316187400%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191088191089%_))))
                    (let ((_%tl187314187405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187316187400%_)))
                          (_%hd187315187403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187316187400%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187314187405%_))
                          (let ((_%e187319187408%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187314187405%_))))
                            (let ((_%tl187317187413%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187319187408%_)))
                                  (_%hd187318187411%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187319187408%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187318187411%_))
                                  (let ((_%e187322187416%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187318187411%_))))
                                    (let ((_%tl187320187421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187322187416%_)))
                                          (_%hd187321187419%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187322187416%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187321187419%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187321187419%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187320187421%_))
                                                  (let ((_%__splice191092191093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187320187421%_
                                                            '0))))
                                                    (let ((_%tl187325187426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191092191093%_
                                                              '1)))
                                                          (_%target187323187424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191092191093%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187325187426%_))
                                                          (_%__match191125191126%_
                                                           _%e187316187400%_
                                                           _%hd187315187403%_
                                                           _%tl187314187405%_
                                                           _%e187319187408%_
                                                           _%hd187318187411%_
                                                           _%tl187317187413%_
                                                           _%e187322187416%_
                                                           _%hd187321187419%_
                                                           _%tl187320187421%_
                                                           _%__splice191092191093%_
                                                           _%target187323187424%_
                                                           _%tl187325187426%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187317187413%_))
                      (let ((_%e187345187371%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187317187413%_))))
                        (let ((_%tl187343187376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187345187371%_)))
                              (_%hd187344187374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187345187371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187343187376%_))
                              (_%__kont191094191095%_
                               _%hd187344187374%_
                               _%hd187318187411%_)
                              (let ()
                                (declare (not safe))
                                (_%g187310187350%_)))))
                      (let () (declare (not safe)) (_%g187310187350%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187317187413%_))
                                                      (let ((_%e187345187371%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187317187413%_))))
                (let ((_%tl187343187376%_
                       (let () (declare (not safe)) (##cdr _%e187345187371%_)))
                      (_%hd187344187374%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187345187371%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187343187376%_))
                      (_%__kont191094191095%_
                       _%hd187344187374%_
                       _%hd187318187411%_)
                      (let () (declare (not safe)) (_%g187310187350%_)))))
              (let () (declare (not safe)) (_%g187310187350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187317187413%_))
                                                  (let ((_%e187345187371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187317187413%_))))
                                                    (let ((_%tl187343187376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187345187371%_)))
                                                          (_%hd187344187374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187345187371%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187343187376%_))
                                                          (_%__kont191094191095%_
                                                           _%hd187344187374%_
                                                           _%hd187318187411%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187310187350%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187310187350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187317187413%_))
                                              (let ((_%e187345187371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187317187413%_))))
                                                (let ((_%tl187343187376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187345187371%_)))
                                                      (_%hd187344187374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187345187371%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187343187376%_))
                                                      (_%__kont191094191095%_
                                                       _%hd187344187374%_
                                                       _%hd187318187411%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187310187350%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187310187350%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187317187413%_))
                                      (let ((_%e187345187371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187317187413%_))))
                                        (let ((_%tl187343187376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187345187371%_)))
                                              (_%hd187344187374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187345187371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187343187376%_))
                                              (_%__kont191094191095%_
                                               _%hd187344187374%_
                                               _%hd187318187411%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187310187350%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187310187350%_))))))
                          (let () (declare (not safe)) (_%g187310187350%_)))))
                  (let () (declare (not safe)) (_%g187310187350%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187284%_ _%expr187285%_ _%type187286%_)
        (let ((_%$e187288%_
               (let () (declare (not safe)) (not _%type187286%_))))
          (if _%$e187288%_
              _%$e187288%_
              (let ((_%$e187291%_
                     (eq? (##structure-ref _%type187286%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187291%_
                    _%$e187291%_
                    (let ((_%expr-type187295%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187285%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187295%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187284%_
                             _%type187286%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187295%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187284%_
                                 _%type187286%_
                                 _%expr-type187295%_))
                              (let ((_%$e187299%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187295%_
                                        'gxc#!abort::t))))
                                (if _%$e187299%_
                                    _%$e187299%_
                                    (let ((_%$e187302%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187295%_
                                              _%type187286%_))))
                                      (if _%$e187302%_
                                          _%$e187302%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187284%_
                                             _%type187286%_
                                             _%expr-type187295%_)))))))))))))))))
