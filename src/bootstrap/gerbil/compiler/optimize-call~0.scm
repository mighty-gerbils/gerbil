(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712256093)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191165 (list gxc#::basic-xform::t))
            (__tmp191164 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191165
         '()
         __tmp191164
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190714%_
        (apply make-instance gxc#::optimize-call::t _%$args190714%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191166
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
        (__make-promise __tmp191166)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190706%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190709%_
                (let ((__obj191156
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191156))
               (__tmp191167
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190709%_ _%stx190706%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191167
           gxc#current-compile-method
           _%self190709%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191169 (list gxc#::void::t))
            (__tmp191168 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191169
         '()
         __tmp191168
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190703%_
        (apply make-instance gxc#::check-return-type::t _%$args190703%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191170
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
        (__make-promise __tmp191170)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190695%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190698%_
                (let ((__obj191158
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191158))
               (__tmp191171
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190698%_ _%stx190695%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191171
           gxc#current-compile-method
           _%self190698%_))))
    (define gxc#optimize-call%
      (lambda (_%self190305%_ _%stx190306%_)
        (let* ((_%__stx190769190770%_ _%stx190306%_)
               (_%g190309190355%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190769190770%_)))))
          (let ((_%__kont190771190772%_
                 (lambda (_%L190498%_ _%L190499%_)
                   (let* ((_%rator-id190519%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190499%_)))
                          (_%rator-type190521%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190519%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190521%_))
                             (eq? (##structure-ref
                                   _%rator-type190521%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190305%_ _%stx190306%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190521%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191172
                                      (##structure-ref
                                       _%rator-type190521%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190519%_
                                  '" => "
                                  _%rator-type190521%_
                                  '" "
                                  __tmp191172))
                               (let* ((_%optimized190536%_
                                       (let ((__method191159
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190521%_
                                                 'optimize-call))))
                                         (if __method191159
                                             (__method191159
                                              _%rator-type190521%_
                                              _%self190305%_
                                              _%stx190306%_
                                              (let ((__tmp191173
                                                     (lambda (_%g190528190531%_
                                                              _%g190529190533%_)
                                                       (cons _%g190528190531%_
                                                             _%g190529190533%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191173
                                                 '()
                                                 _%L190498%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190521%_
                                                      'optimize-call)))))
                                      (_%__stx190717190718%_
                                       _%optimized190536%_)
                                      (_%g190539190568%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190717190718%_)))))
                                 (let ((_%__kont190719190720%_
                                        (lambda (_%L190636%_ _%L190637%_)
                                          (let ((_%optimized-rator-id190664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L190637%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type190521%_))
                                                         (eq? _%optimized-rator-id190664%_
                                                              _%rator-id190519%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190664%_
                                                              gxc#checked-primitives)))
                                                _%optimized190536%_
                                                (let ((__tmp191174
                                                       (let ((__tmp191175
                                                              (let ((__tmp191178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190637%_ '())))
                            (__tmp191176
                             (let ((__tmp191177
                                    (lambda (_%g190668190671%_
                                             _%g190669190673%_)
                                      (cons _%g190668190671%_
                                            _%g190669190673%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191177 '() _%L190636%_))))
                        (declare (not safe))
                        (cons __tmp191178 __tmp191176))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191174
                                                   _%stx190306%_))))))
                                       (_%__kont190723190724%_
                                        (lambda () _%optimized190536%_)))
                                   (let ((_%__match190766190767%_
                                          (lambda (_%e190545190580%_
                                                   _%hd190544190583%_
                                                   _%tl190543190585%_
                                                   _%e190548190588%_
                                                   _%hd190547190591%_
                                                   _%tl190546190593%_
                                                   _%e190551190596%_
                                                   _%hd190550190599%_
                                                   _%tl190549190601%_
                                                   _%e190554190604%_
                                                   _%hd190553190607%_
                                                   _%tl190552190609%_
                                                   _%__splice190721190722%_
                                                   _%target190555190612%_
                                                   _%tl190557190614%_)
                                            (letrec ((_%loop190558190617%_
                                                      (lambda (_%hd190556190620%_
                                                               _%arg190562190622%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190556190620%_))
                                                            (let ((_%e190559190625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190556190620%_))))
                      (let ((_%lp-tl190561190630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190559190625%_)))
                            (_%lp-hd190560190628%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190559190625%_))))
                        (let ((__tmp191179
                               (cons _%lp-hd190560190628%_
                                     _%arg190562190622%_)))
                          (declare (not safe))
                          (_%loop190558190617%_
                           _%lp-tl190561190630%_
                           __tmp191179))))
                    (let ((_%arg190563190633%_ (reverse _%arg190562190622%_)))
                      (_%__kont190719190720%_
                       _%arg190563190633%_
                       _%hd190553190607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190558190617%_
                                                 _%target190555190612%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190717190718%_))
                                         (let ((_%e190545190580%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190717190718%_))))
                                           (let ((_%tl190543190585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190545190580%_)))
                                                 (_%hd190544190583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190545190580%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190544190583%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190544190583%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190543190585%_))
                                                         (let ((_%e190548190588%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190543190585%_))))
                   (let ((_%tl190546190593%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190548190588%_)))
                         (_%hd190547190591%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190548190588%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190547190591%_))
                         (let ((_%e190551190596%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190547190591%_))))
                           (let ((_%tl190549190601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190551190596%_)))
                                 (_%hd190550190599%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190551190596%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190550190599%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190550190599%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190549190601%_))
                                         (let ((_%e190554190604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190549190601%_))))
                                           (let ((_%tl190552190609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190554190604%_)))
                                                 (_%hd190553190607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190554190604%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190552190609%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190546190593%_))
                                                     (let ((_%__splice190721190722%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190546190593%_
                                                               '0))))
                                                       (let ((_%tl190557190614%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190721190722%_ '1)))
                     (_%target190555190612%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190721190722%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190557190614%_))
                     (_%__match190766190767%_
                      _%e190545190580%_
                      _%hd190544190583%_
                      _%tl190543190585%_
                      _%e190548190588%_
                      _%hd190547190591%_
                      _%tl190546190593%_
                      _%e190551190596%_
                      _%hd190550190599%_
                      _%tl190549190601%_
                      _%e190554190604%_
                      _%hd190553190607%_
                      _%tl190552190609%_
                      _%__splice190721190722%_
                      _%target190555190612%_
                      _%tl190557190614%_)
                     (_%__kont190723190724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190723190724%_))
                                                 (_%__kont190723190724%_))))
                                         (_%__kont190723190724%_))
                                     (_%__kont190723190724%_))
                                 (_%__kont190723190724%_))))
                         (_%__kont190723190724%_))))
                 (_%__kont190723190724%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190723190724%_))
                                                 (_%__kont190723190724%_))))
                                         (_%__kont190723190724%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190521%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190521%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191180
                                        (let ((__tmp191181
                                               (let ((__tmp191184
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191182
                                                      (map (lambda (_%g190679190681%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190305%_ _%g190679190681%_)))
                   (let ((__tmp191183
                          (lambda (_%g190683190686%_ _%g190684190688%_)
                            (cons _%g190683190686%_ _%g190684190688%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191183 '() _%L190498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191184
                                                       __tmp191182))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191181))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191180
                                    _%stx190306%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190306%_
                                    _%rator-type190521%_))))))))
                (_%__kont190775190776%_
                 (lambda (_%L190400%_ _%L190401%_)
                   (let ((_%rator-type190418%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190401%_))))
                     (if (and _%rator-type190418%_
                              (eq? (##structure-ref
                                    _%rator-type190418%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191185
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190418%_))))
                                (declare (not safe))
                                (not __tmp191185)))
                         (let ((__tmp191186
                                (let ((__tmp191187
                                       (let ((__tmp191190
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190305%_
                                                 _%L190401%_)))
                                             (__tmp191188
                                              (map (lambda (_%g190420190422%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190305%_
                                                        _%g190420190422%_)))
                                                   (let ((__tmp191189
                                                          (lambda (_%g190424190427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190425190429%_)
                    (cons _%g190424190427%_ _%g190425190429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191189
                                                      '()
                                                      _%L190400%_)))))
                                         (declare (not safe))
                                         (cons __tmp191190 __tmp191188))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191187))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191186 _%stx190306%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190418%_))
                                 (let ((__tmp191191
                                        (##structure-ref
                                         _%rator-type190418%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191191 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190305%_ _%stx190306%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190306%_
                                _%rator-type190418%_))))))))
            (let* ((_%__match190836190837%_
                    (lambda (_%e190338190360%_
                             _%hd190337190363%_
                             _%tl190336190365%_
                             _%e190341190368%_
                             _%hd190340190371%_
                             _%tl190339190373%_
                             _%__splice190777190778%_
                             _%target190342190376%_
                             _%tl190344190378%_)
                      (letrec ((_%loop190345190381%_
                                (lambda (_%hd190343190384%_
                                         _%rand190349190386%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190343190384%_))
                                      (let ((_%e190346190389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190343190384%_))))
                                        (let ((_%lp-tl190348190394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190346190389%_)))
                                              (_%lp-hd190347190392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190346190389%_))))
                                          (let ((__tmp191192
                                                 (cons _%lp-hd190347190392%_
                                                       _%rand190349190386%_)))
                                            (declare (not safe))
                                            (_%loop190345190381%_
                                             _%lp-tl190348190394%_
                                             __tmp191192))))
                                      (let ((_%rand190350190397%_
                                             (reverse _%rand190349190386%_)))
                                        (_%__kont190775190776%_
                                         _%rand190350190397%_
                                         _%hd190340190371%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190345190381%_ _%target190342190376%_ '())))))
                   (_%__match190816190817%_
                    (lambda (_%e190315190442%_
                             _%hd190314190445%_
                             _%tl190313190447%_
                             _%e190318190450%_
                             _%hd190317190453%_
                             _%tl190316190455%_
                             _%e190321190458%_
                             _%hd190320190461%_
                             _%tl190319190463%_
                             _%e190324190466%_
                             _%hd190323190469%_
                             _%tl190322190471%_
                             _%__splice190773190774%_
                             _%target190325190474%_
                             _%tl190327190476%_)
                      (letrec ((_%loop190328190479%_
                                (lambda (_%hd190326190482%_
                                         _%rand190332190484%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190326190482%_))
                                      (let ((_%e190329190487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190326190482%_))))
                                        (let ((_%lp-tl190331190492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190329190487%_)))
                                              (_%lp-hd190330190490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190329190487%_))))
                                          (let ((__tmp191193
                                                 (cons _%lp-hd190330190490%_
                                                       _%rand190332190484%_)))
                                            (declare (not safe))
                                            (_%loop190328190479%_
                                             _%lp-tl190331190492%_
                                             __tmp191193))))
                                      (let ((_%rand190333190495%_
                                             (reverse _%rand190332190484%_)))
                                        (_%__kont190771190772%_
                                         _%rand190333190495%_
                                         _%hd190323190469%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190328190479%_
                           _%target190325190474%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190769190770%_))
                  (let ((_%e190315190442%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190769190770%_))))
                    (let ((_%tl190313190447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190315190442%_)))
                          (_%hd190314190445%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190315190442%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190313190447%_))
                          (let ((_%e190318190450%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190313190447%_))))
                            (let ((_%tl190316190455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190318190450%_)))
                                  (_%hd190317190453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190318190450%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190317190453%_))
                                  (let ((_%e190321190458%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190317190453%_))))
                                    (let ((_%tl190319190463%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190321190458%_)))
                                          (_%hd190320190461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190321190458%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190320190461%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190320190461%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190319190463%_))
                                                  (let ((_%e190324190466%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190319190463%_))))
                                                    (let ((_%tl190322190471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190324190466%_)))
                                                          (_%hd190323190469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190324190466%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190322190471%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190316190455%_))
                      (let ((_%__splice190773190774%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190316190455%_
                                '0))))
                        (let ((_%tl190327190476%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190773190774%_ '1)))
                              (_%target190325190474%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190773190774%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190327190476%_))
                              (_%__match190816190817%_
                               _%e190315190442%_
                               _%hd190314190445%_
                               _%tl190313190447%_
                               _%e190318190450%_
                               _%hd190317190453%_
                               _%tl190316190455%_
                               _%e190321190458%_
                               _%hd190320190461%_
                               _%tl190319190463%_
                               _%e190324190466%_
                               _%hd190323190469%_
                               _%tl190322190471%_
                               _%__splice190773190774%_
                               _%target190325190474%_
                               _%tl190327190476%_)
                              (let ()
                                (declare (not safe))
                                (_%g190309190355%_)))))
                      (let () (declare (not safe)) (_%g190309190355%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190316190455%_))
                      (let ((_%__splice190777190778%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190316190455%_
                                '0))))
                        (let ((_%tl190344190378%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190777190778%_ '1)))
                              (_%target190342190376%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190777190778%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190344190378%_))
                              (_%__match190836190837%_
                               _%e190315190442%_
                               _%hd190314190445%_
                               _%tl190313190447%_
                               _%e190318190450%_
                               _%hd190317190453%_
                               _%tl190316190455%_
                               _%__splice190777190778%_
                               _%target190342190376%_
                               _%tl190344190378%_)
                              (let ()
                                (declare (not safe))
                                (_%g190309190355%_)))))
                      (let () (declare (not safe)) (_%g190309190355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190316190455%_))
                                                      (let ((_%__splice190777190778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190316190455%_ '0))))
                (let ((_%tl190344190378%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190777190778%_ '1)))
                      (_%target190342190376%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190777190778%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190344190378%_))
                      (_%__match190836190837%_
                       _%e190315190442%_
                       _%hd190314190445%_
                       _%tl190313190447%_
                       _%e190318190450%_
                       _%hd190317190453%_
                       _%tl190316190455%_
                       _%__splice190777190778%_
                       _%target190342190376%_
                       _%tl190344190378%_)
                      (let () (declare (not safe)) (_%g190309190355%_)))))
              (let () (declare (not safe)) (_%g190309190355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190316190455%_))
                                                  (let ((_%__splice190777190778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190316190455%_
                                                            '0))))
                                                    (let ((_%tl190344190378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190777190778%_
                                                              '1)))
                                                          (_%target190342190376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190777190778%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190344190378%_))
                                                          (_%__match190836190837%_
                                                           _%e190315190442%_
                                                           _%hd190314190445%_
                                                           _%tl190313190447%_
                                                           _%e190318190450%_
                                                           _%hd190317190453%_
                                                           _%tl190316190455%_
                                                           _%__splice190777190778%_
                                                           _%target190342190376%_
                                                           _%tl190344190378%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190309190355%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190309190355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190316190455%_))
                                              (let ((_%__splice190777190778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190316190455%_
                                                        '0))))
                                                (let ((_%tl190344190378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190777190778%_
                                                          '1)))
                                                      (_%target190342190376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190777190778%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190344190378%_))
                                                      (_%__match190836190837%_
                                                       _%e190315190442%_
                                                       _%hd190314190445%_
                                                       _%tl190313190447%_
                                                       _%e190318190450%_
                                                       _%hd190317190453%_
                                                       _%tl190316190455%_
                                                       _%__splice190777190778%_
                                                       _%target190342190376%_
                                                       _%tl190344190378%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190309190355%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190309190355%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190316190455%_))
                                      (let ((_%__splice190777190778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190316190455%_
                                                '0))))
                                        (let ((_%tl190344190378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190777190778%_
                                                  '1)))
                                              (_%target190342190376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190777190778%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190344190378%_))
                                              (_%__match190836190837%_
                                               _%e190315190442%_
                                               _%hd190314190445%_
                                               _%tl190313190447%_
                                               _%e190318190450%_
                                               _%hd190317190453%_
                                               _%tl190316190455%_
                                               _%__splice190777190778%_
                                               _%target190342190376%_
                                               _%tl190344190378%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190309190355%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190309190355%_))))))
                          (let () (declare (not safe)) (_%g190309190355%_)))))
                  (let () (declare (not safe)) (_%g190309190355%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190267%_ _%ctx190268%_ _%stx190269%_ _%args190270%_)
        (let ((_%self190273%_ _%self190267%_))
          (if (let ((__method191160
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190273%_ 'check-arguments))))
                (if __method191160
                    (__method191160
                     _%self190273%_
                     _%ctx190268%_
                     _%stx190269%_
                     _%args190270%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190273%_
                             'check-arguments))))
              (let* ((_%signature190283%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190273%_ '2 '#f '#f)))
                     (_%signature190285%_ _%signature190283%_)
                     (_%$e190295%_
                      (if _%signature190285%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190285%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190295%_
                    ((lambda (_%unchecked190298%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190298%_))
                           (let ((__tmp191194
                                  (let ((__tmp191195
                                         (let ((__tmp191197
                                                (cons '%#ref
                                                      (cons _%unchecked190298%_
                                                            '())))
                                               (__tmp191196
                                                (map (lambda (_%g190299190301%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190268%_
                                                          _%g190299190301%_)))
                                                     _%args190270%_)))
                                           (declare (not safe))
                                           (cons __tmp191197 __tmp191196))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191195))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191194 _%stx190269%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190268%_ _%stx190269%_))))
                     _%$e190295%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190268%_ _%stx190269%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190268%_ _%stx190269%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self190018%_ _%ctx190019%_ _%stx190020%_ _%args190021%_)
        (let ()
          (let* ((_%self190024%_ _%self190018%_)
                 (_%signature190033190035%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self190024%_ '2 '#f '#f))))
            (if _%signature190033190035%_
                (let* ((_%signature190038%_ _%signature190033190035%_)
                       (_%argument-types190039190041%_
                        (##direct-structure-ref
                         _%signature190038%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types190039190041%_
                      (let* ((_%argument-types190044%_
                              _%argument-types190039190041%_)
                             (_%argument-types190049%_
                              (let ((__tmp191198
                                     (lambda (_%t190047%_)
                                       (if _%t190047%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx190020%_
                                              _%t190047%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191198
                                 _%argument-types190044%_))))
                        (let _%loop190051%_ ((_%rest-args190053%_
                                              _%args190021%_)
                                             (_%rest-types190054%_
                                              _%argument-types190049%_)
                                             (_%result190055%_ '#t))
                          (let* ((_%rest-args190056190064%_
                                  _%rest-args190053%_)
                                 (_%else190058190072%_
                                  (lambda () _%result190055%_))
                                 (_%K190060190133%_
                                  (lambda (_%rest-args190075%_ _%arg190076%_)
                                    (let* ((_%rest-types190077190088%_
                                            _%rest-types190054%_)
                                           (_%E190081190092%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190077190088%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190084190121%_
                                             (lambda (_%rest-types190118%_
                                                      _%type190119%_)
                                               (let ((__tmp191199
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx190020%_
                                                             _%arg190076%_
                                                             _%type190119%_))
                                                          _%result190055%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop190051%_
                                                  _%rest-args190075%_
                                                  _%rest-types190118%_
                                                  __tmp191199))))
                                            (_%K190083190112%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx190020%_
                                                  _%argument-types190049%_))))
                                            (_%K190082190102%_
                                             (lambda (_%tail-type190096%_)
                                               (if (let ((__tmp191200
                                                          (lambda (_%g190097190099%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx190020%_
                                                               _%g190097190099%_
                                                               _%tail-type190096%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191200
                                                      _%rest-args190075%_))
                                                   _%result190055%_
                                                   '#f))))
                                        (let ((_%try-match190079190115%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190077190088%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190083190112%_))
                                                     (let ((_%tail-type190105%_
                                                            _%rest-types190077190088%_))
                                                       (declare (not safe))
                                                       (_%K190082190102%_
                                                        _%tail-type190105%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190077190088%_))
                                              (let ((_%tl190086190126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190077190088%_)))
                                                    (_%hd190085190124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190077190088%_))))
                                                (let ((_%type190129%_
                                                       _%hd190085190124%_)
                                                      (_%rest-types190131%_
                                                       _%tl190086190126%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190084190121%_
                                                     _%rest-types190131%_
                                                     _%type190129%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190079190115%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args190056190064%_))
                                (let ((_%hd190061190136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args190056190064%_)))
                                      (_%tl190062190138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args190056190064%_))))
                                  (let* ((_%arg190141%_ _%hd190061190136%_)
                                         (_%rest-args190143%_
                                          _%tl190062190138%_))
                                    (declare (not safe))
                                    (_%K190060190133%_
                                     _%rest-args190143%_
                                     _%arg190141%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else190058190072%_))))))
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
      (lambda (_%self189829%_ _%ctx189830%_ _%stx189831%_ _%args189832%_)
        (let ((_%self189835%_ _%self189829%_))
          (let* ((_%g189845189855%_
                  (lambda (_%g189846189852%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189846189852%_))))
                 (_%g189844189893%_
                  (lambda (_%g189846189858%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189846189858%_))
                        (let ((_%e189850189860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189846189858%_))))
                          (let ((_%hd189849189863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189850189860%_)))
                                (_%tl189848189865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189850189860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189848189865%_))
                                ((lambda (_%L189868%_)
                                   (let* ((_%klass189880%_
                                           (let ((__tmp191201
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189835%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189831%_
                                              __tmp191201)))
                                          (_%object189882%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189830%_
                                              _%L189868%_)))
                                          (_%instance?189887%_
                                           (let ((_%$e189884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189882%_
                                                     _%klass189880%_))))
                                             (if _%$e189884%_
                                                 _%$e189884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189868%_
                                                    _%klass189880%_))))))
                                     (if _%instance?189887%_
                                         (let ((__tmp191202
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189882%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189868%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189882%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191202
                                            _%stx189831%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189830%_
                                            _%stx189831%_)))))
                                 _%hd189849189863%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189845189855%_ _%g189846189858%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189845189855%_ _%g189846189858%_))))))
            (declare (not safe))
            (_%g189844189893%_ _%args189832%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189625%_ _%ctx189626%_ _%stx189627%_ _%args189628%_)
        (let ((_%self189631%_ _%self189625%_))
          (let* ((_%g189641189651%_
                  (lambda (_%g189642189648%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189642189648%_))))
                 (_%g189640189704%_
                  (lambda (_%g189642189654%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189642189654%_))
                        (let ((_%e189646189656%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189642189654%_))))
                          (let ((_%hd189645189659%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189646189656%_)))
                                (_%tl189644189661%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189646189656%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189644189661%_))
                                ((lambda (_%L189664%_)
                                   (let* ((_%klass189676%_
                                           (let ((__tmp191203
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189631%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189627%_
                                              __tmp191203)))
                                          (_%object189678%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189626%_
                                              _%L189664%_)))
                                          (_%instance?189683%_
                                           (let ((_%$e189680%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189678%_
                                                     _%klass189676%_))))
                                             (if _%$e189680%_
                                                 _%$e189680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189664%_
                                                    _%klass189676%_)))))
                                          (_%klass189686%_ _%klass189676%_))
                                     (if _%instance?189683%_
                                         (let ((__tmp191204
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189678%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189664%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189678%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191204
                                            _%stx189627%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189686%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191205
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189686%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189678%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191205
                                                _%stx189627%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189686%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191206
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189686%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189678%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191206
                                                    _%stx189627%_))
                                                 (let ((__tmp191207
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189631%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189678%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191207
                                                    _%stx189627%_)))))))
                                 _%hd189645189659%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189641189651%_ _%g189642189654%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189641189651%_ _%g189642189654%_))))))
            (declare (not safe))
            (_%g189640189704%_ _%args189628%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189288%_)
        (let* ((_%__stx190846190847%_ _%stx189288%_)
               (_%g189293189334%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190846190847%_)))))
          (let ((_%__kont190848190849%_ (lambda () '#t))
                (_%__kont190850190851%_ (lambda () '#t))
                (_%__kont190852190853%_
                 (lambda (_%L189402%_ _%L189403%_)
                   (let ((_%rator-type189424189426%_
                          (let ((__tmp191208
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189403%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191208))))
                     (if _%rator-type189424189426%_
                         (let* ((_%rator-type189429%_
                                 _%rator-type189424189426%_)
                                (_%rator-signature189430189432%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189429%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189429%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189430189432%_
                               (let* ((_%rator-signature189435%_
                                       _%rator-signature189430189432%_)
                                      (_%rator-effect189436189438%_
                                       (if _%rator-signature189435%_
                                           (##direct-structure-ref
                                            _%rator-signature189435%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189436189438%_
                                     (let ((_%rator-effect189441%_
                                            _%rator-effect189436189438%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189441%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189441%_))
                                           (let ((__tmp191209
                                                  (let ((__tmp191210
                                                         (lambda (_%g189446189449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189447189451%_)
                   (cons _%g189446189449%_ _%g189447189451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191210
                                                     '()
                                                     _%L189402%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191209))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190856190857%_ (lambda () '#f)))
            (let ((_%__match190935190936%_
                   (lambda (_%e189311189346%_
                            _%hd189310189349%_
                            _%tl189309189351%_
                            _%e189314189354%_
                            _%hd189313189357%_
                            _%tl189312189359%_
                            _%e189317189362%_
                            _%hd189316189365%_
                            _%tl189315189367%_
                            _%e189320189370%_
                            _%hd189319189373%_
                            _%tl189318189375%_
                            _%__splice190854190855%_
                            _%target189321189378%_
                            _%tl189323189380%_)
                     (letrec ((_%loop189324189383%_
                               (lambda (_%hd189322189386%_
                                        _%rand189328189388%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189322189386%_))
                                     (let ((_%e189325189391%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189322189386%_))))
                                       (let ((_%lp-tl189327189396%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189325189391%_)))
                                             (_%lp-hd189326189394%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189325189391%_))))
                                         (let ((__tmp191211
                                                (cons _%lp-hd189326189394%_
                                                      _%rand189328189388%_)))
                                           (declare (not safe))
                                           (_%loop189324189383%_
                                            _%lp-tl189327189396%_
                                            __tmp191211))))
                                     (let ((_%rand189329189399%_
                                            (reverse _%rand189328189388%_)))
                                       (_%__kont190852190853%_
                                        _%rand189329189399%_
                                        _%hd189319189373%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189324189383%_ _%target189321189378%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190846190847%_))
                  (let ((_%e189297189482%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190846190847%_))))
                    (let ((_%tl189295189487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189297189482%_)))
                          (_%hd189296189485%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189297189482%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189296189485%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189296189485%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189295189487%_))
                                  (let ((_%e189300189490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189295189487%_))))
                                    (let ((_%tl189298189495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189300189490%_)))
                                          (_%hd189299189493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189300189490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189298189495%_))
                                          (_%__kont190848190849%_)
                                          (_%__kont190856190857%_))))
                                  (_%__kont190856190857%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189296189485%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189295189487%_))
                                      (let ((_%e189306189467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189295189487%_))))
                                        (let ((_%tl189304189472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189306189467%_)))
                                              (_%hd189305189470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189306189467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189304189472%_))
                                              (_%__kont190850190851%_)
                                              (_%__kont190856190857%_))))
                                      (_%__kont190856190857%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189296189485%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189295189487%_))
                                          (let ((_%e189314189354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189295189487%_))))
                                            (let ((_%tl189312189359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189314189354%_)))
                                                  (_%hd189313189357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189314189354%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189313189357%_))
                                                  (let ((_%e189317189362%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189313189357%_))))
                                                    (let ((_%tl189315189367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189317189362%_)))
                                                          (_%hd189316189365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189317189362%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189316189365%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189316189365%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189315189367%_))
                          (let ((_%e189320189370%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189315189367%_))))
                            (let ((_%tl189318189375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189320189370%_)))
                                  (_%hd189319189373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189320189370%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189318189375%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189312189359%_))
                                      (let ((_%__splice190854190855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189312189359%_
                                                '0))))
                                        (let ((_%tl189323189380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190854190855%_
                                                  '1)))
                                              (_%target189321189378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190854190855%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189323189380%_))
                                              (_%__match190935190936%_
                                               _%e189297189482%_
                                               _%hd189296189485%_
                                               _%tl189295189487%_
                                               _%e189314189354%_
                                               _%hd189313189357%_
                                               _%tl189312189359%_
                                               _%e189317189362%_
                                               _%hd189316189365%_
                                               _%tl189315189367%_
                                               _%e189320189370%_
                                               _%hd189319189373%_
                                               _%tl189318189375%_
                                               _%__splice190854190855%_
                                               _%target189321189378%_
                                               _%tl189323189380%_)
                                              (_%__kont190856190857%_))))
                                      (_%__kont190856190857%_))
                                  (_%__kont190856190857%_))))
                          (_%__kont190856190857%_))
                      (_%__kont190856190857%_))
                  (_%__kont190856190857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190856190857%_))))
                                          (_%__kont190856190857%_))
                                      (_%__kont190856190857%_))))
                          (_%__kont190856190857%_))))
                  (_%__kont190856190857%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189283%_ _%klass189284%_)
        (let ((_%expr-type189286%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189283%_))))
          (if _%expr-type189286%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189286%_ _%klass189284%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189261%_ _%expr189262%_ _%type189263%_)
        (if (let () (declare (not safe)) (not _%type189263%_))
            (let () '#f)
            (let ((_%$e189266%_
                   (eq? (##structure-ref _%type189263%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189266%_
                  _%$e189266%_
                  (let ((_%expr-type189270%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189262%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189270%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189270%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189274%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189270%_
                                      'gxc#!abort::t))))
                              (if _%$e189274%_
                                  _%$e189274%_
                                  (let ((_%$e189277%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189270%_
                                            _%type189263%_))))
                                    (if _%$e189277%_
                                        _%$e189277%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189263%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189263%_
                                                   _%expr-type189270%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189261%_
                                                   _%expr189262%_
                                                   _%expr-type189270%_
                                                   _%type189263%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189075%_ _%ctx189076%_ _%stx189077%_ _%args189078%_)
        (let ((_%self189081%_ _%self189075%_))
          (let* ((_%klass189091%_
                  (let ((__tmp191212
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189081%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189077%_ __tmp191212)))
                 (_%fields189093%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189091%_
                             '5
                             '#f
                             '#f))))
                 (_%args189099%_
                  (map (lambda (_%g189094189096%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189076%_ _%g189094189096%_)))
                       _%args189078%_))
                 (_%inline-make-object189101%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189081%_
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
                             _%self189081%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189093%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189104%_ _%klass189091%_)
                   (_%$e189118%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189104%_ '6 '#f '#f))))
              (if _%$e189118%_
                  ((lambda (_%ctor189121%_)
                     (let ((_%$obj189123%_
                            (let ((__tmp191213
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191213)))
                           (_%ctor-impl189124%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189104%_
                               _%ctor189121%_))))
                       (let ((__tmp191214
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189123%_ '())
                                                      (cons _%inline-make-object189101%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189124%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189124%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189123%_ '()))
                                          _%args189099%_)))
                        (let ((_%$ctor189126%_
                               (let ((__tmp191215
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191215))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189126%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189081%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189123%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189121%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189126%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189123%_ '()))
                                        _%args189099%_)))
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
                                 _%self189081%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189121%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189123%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191214 _%stx189077%_))))
                   _%$e189118%_)
                  (let ((_%$e189128%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189104%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189128%_
                        ((lambda (_%metaclass189131%_)
                           (let* ((_%$obj189133%_
                                   (let ((__tmp191216
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191216)))
                                  (_%metakons189135%_
                                   (let ((__tmp191217
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189077%_
                                             _%metaclass189131%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191217
                                      'instance-init!)))
                                  (__tmp191218
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189101%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189135%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189081%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189099%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189081%_
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
                         (cons _%$obj189133%_ '()))
                   _%args189099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189133%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191218
                              _%stx189077%_)))
                         _%$e189128%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189104%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191219
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189099%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191219 _%fields189093%_))
                                  (let ((__tmp191220
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189081%_
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
                                                    _%self189081%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189099%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191220
                                     _%stx189077%_))
                                  (let ((__tmp191222
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189081%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191221
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189104%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189077%_
                                     __tmp191222
                                     __tmp191221))))
                            (let ((_%$obj189140%_
                                   (let ((__tmp191223
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191223))))
                              (let _%lp189142%_ ((_%rest189144%_
                                                  _%args189099%_)
                                                 (_%initializers189145%_ '()))
                                (let* ((_%__stx190938190939%_ _%rest189144%_)
                                       (_%g189149189170%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190938190939%_)))))
                                  (let ((_%__kont190940190941%_
                                         (lambda (_%L189224%_
                                                  _%L189225%_
                                                  _%L189226%_)
                                           (let* ((_%slot189253%_
                                                   (let ((__tmp191224
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189226%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191224)))
                                                  (_%off189255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189104%_
                                                      _%slot189253%_))))
                                             (if _%off189255%_
                                                 (let ((__tmp191225
                                                        (cons (cons _%off189255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189225%_)
                      _%initializers189145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189142%_
                                                    _%L189224%_
                                                    __tmp191225))
                                                 (let ((__tmp191226
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189081%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189077%_
                                                    __tmp191226
                                                    _%slot189253%_))))))
                                        (_%__kont190942190943%_
                                         (lambda ()
                                           (let ((__tmp191227
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189101%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191230
                                         (cons (cons '%#ref
                                                     (cons _%$obj189140%_ '()))
                                               '()))
                                        (__tmp191228
                                         (let ((__tmp191229
                                                (lambda (_%i189184%_
                                                         _%r189185%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189081%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189184%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189140%_ '()))
                                        (cons (cdr _%i189184%_) '())))))
                _%r189185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191229
                                            '()
                                            _%initializers189145%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191230 __tmp191228)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191227
                                              _%stx189077%_))))
                                        (_%__kont190944190945%_
                                         (lambda ()
                                           (let ((__tmp191231
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189101%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189099%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189140%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191231
                                              _%stx189077%_)))))
                                    (let* ((_%g189147189187%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190938190939%_))
                                                  (_%__kont190942190943%_)
                                                  (_%__kont190944190945%_))))
                                           (_%__match190975190976%_
                                            (lambda (_%e189156189192%_
                                                     _%hd189155189195%_
                                                     _%tl189154189197%_
                                                     _%e189159189200%_
                                                     _%hd189158189203%_
                                                     _%tl189157189205%_
                                                     _%e189162189208%_
                                                     _%hd189161189211%_
                                                     _%tl189160189213%_
                                                     _%e189165189216%_
                                                     _%hd189164189219%_
                                                     _%tl189163189221%_)
                                              (let ((_%L189224%_
                                                     _%tl189163189221%_)
                                                    (_%L189225%_
                                                     _%hd189164189219%_)
                                                    (_%L189226%_
                                                     _%hd189161189211%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189226%_))
                                                    (_%__kont190940190941%_
                                                     _%L189224%_
                                                     _%L189225%_
                                                     _%L189226%_)
                                                    (_%__kont190944190945%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190938190939%_))
                                          (let ((_%e189156189192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190938190939%_))))
                                            (let ((_%tl189154189197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189156189192%_)))
                                                  (_%hd189155189195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189156189192%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189155189195%_))
                                                  (let ((_%e189159189200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189155189195%_))))
                                                    (let ((_%tl189157189205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189159189200%_)))
                                                          (_%hd189158189203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189159189200%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189158189203%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189158189203%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189157189205%_))
                          (let ((_%e189162189208%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189157189205%_))))
                            (let ((_%tl189160189213%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189162189208%_)))
                                  (_%hd189161189211%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189162189208%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189160189213%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189154189197%_))
                                      (let ((_%e189165189216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189154189197%_))))
                                        (let ((_%tl189163189221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189165189216%_)))
                                              (_%hd189164189219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189165189216%_))))
                                          (_%__match190975190976%_
                                           _%e189156189192%_
                                           _%hd189155189195%_
                                           _%tl189154189197%_
                                           _%e189159189200%_
                                           _%hd189158189203%_
                                           _%tl189157189205%_
                                           _%e189162189208%_
                                           _%hd189161189211%_
                                           _%tl189160189213%_
                                           _%e189165189216%_
                                           _%hd189164189219%_
                                           _%tl189163189221%_)))
                                      (_%__kont190944190945%_))
                                  (_%__kont190944190945%_))))
                          (_%__kont190944190945%_))
                      (_%__kont190944190945%_))
                  (_%__kont190944190945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190944190945%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189147189187%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188858%_ _%ctx188859%_ _%stx188860%_ _%args188861%_)
        (let ((_%self188864%_ _%self188858%_))
          (let* ((_%arguments-ok?188874%_
                  (let ((__method191161
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188864%_ 'check-arguments))))
                    (if __method191161
                        (__method191161
                         _%self188864%_
                         _%ctx188859%_
                         _%stx188860%_
                         _%args188861%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188864%_
                                 'check-arguments)))))
                 (_%g188876188886%_
                  (lambda (_%g188877188883%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188877188883%_))))
                 (_%g188875188950%_
                  (lambda (_%g188877188889%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188877188889%_))
                        (let ((_%e188881188891%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188877188889%_))))
                          (let ((_%hd188880188894%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188881188891%_)))
                                (_%tl188879188896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188881188891%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188879188896%_))
                                ((lambda (_%L188899%_)
                                   (let* ((_%klass188912%_
                                           (let ((__tmp191232
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188864%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188860%_
                                              __tmp191232)))
                                          (_%field188914%_
                                           (let ((__tmp191233
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188864%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188912%_
                                              __tmp191233)))
                                          (_%object188916%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188859%_
                                              _%L188899%_)))
                                          (_%klass188919%_ _%klass188912%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188919%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191234
                                                (cons (if (or _%arguments-ok?188874%_
                                                              (let ((__tmp191235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188864%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191235)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188864%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188914%_ '()))
                          (cons _%object188916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191234
                                            _%stx188860%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188919%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191236
                                                    (cons (if (or _%arguments-ok?188874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191237
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188864%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191237)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188864%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188914%_ '()))
                              (cons _%object188916%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191236
                                                _%stx188860%_))
                                             (let ((_%$e188938%_
                                                    (let ((__tmp191238
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188864%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188919%_
                                                       __tmp191238))))
                                               (if _%$e188938%_
                                                   ((lambda (_%klass188941%_)
                                                      (let ((__tmp191239
                                                             (cons (if (or _%arguments-ok?188874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191240
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188864%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191240)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188864%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188914%_ '()))
                                       (cons _%object188916%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191239 _%stx188860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188938%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188864%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191241
                                                              (let ((_%$obj188947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191242
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191242))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188947%_ '())
                                                (cons _%object188916%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188919%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188947%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188864%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188914%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188947%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188874%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188947%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188864%_
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
                                                               _%self188864%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188864%_
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
                 (gxc#xform-wrap-source __tmp191241 _%stx188860%_))
               (let ((__tmp191243
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188916%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188864%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191243 _%stx188860%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188880188894%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188876188886%_ _%g188877188889%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188876188886%_ _%g188877188889%_))))))
            (declare (not safe))
            (_%g188875188950%_ _%args188861%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188622%_ _%ctx188623%_ _%stx188624%_ _%args188625%_)
        (let ((_%self188628%_ _%self188622%_))
          (let* ((_%arguments-ok?188638%_
                  (let ((__method191162
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188628%_ 'check-arguments))))
                    (if __method191162
                        (__method191162
                         _%self188628%_
                         _%ctx188623%_
                         _%stx188624%_
                         _%args188625%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188628%_
                                 'check-arguments)))))
                 (_%g188640188654%_
                  (lambda (_%g188641188651%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188641188651%_))))
                 (_%g188639188733%_
                  (lambda (_%g188641188657%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188641188657%_))
                        (let ((_%e188646188659%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188641188657%_))))
                          (let ((_%hd188645188662%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188646188659%_)))
                                (_%tl188644188664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188646188659%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188644188664%_))
                                (let ((_%e188649188667%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188644188664%_))))
                                  (let ((_%hd188648188670%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188649188667%_)))
                                        (_%tl188647188672%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188649188667%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188647188672%_))
                                        ((lambda (_%L188675%_ _%L188676%_)
                                           (let* ((_%klass188692%_
                                                   (let ((__tmp191244
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188628%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188624%_
                                                      __tmp191244)))
                                                  (_%field188694%_
                                                   (let ((__tmp191245
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188628%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188692%_
                                                      __tmp191245)))
                                                  (_%object188696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188623%_
                                                      _%L188676%_)))
                                                  (_%value188698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188623%_
                                                      _%L188675%_)))
                                                  (_%klass188701%_
                                                   _%klass188692%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188701%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191246
                                                        (cons (if (or _%arguments-ok?188638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191247
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188628%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191247)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188628%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188694%_ '()))
                                  (cons _%object188696%_
                                        (cons _%value188698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191246
                                                    _%stx188624%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188701%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191248
                                                            (cons (if (or _%arguments-ok?188638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191249
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188628%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191249)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188628%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188694%_ '()))
                                      (cons _%object188696%_
                                            (cons _%value188698%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191248 _%stx188624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188721%_
                                                            (let ((__tmp191250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188628%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188701%_
                       __tmp191250))))
               (if _%$e188721%_
                   ((lambda (_%klass188724%_)
                      (let ((__tmp191251
                             (cons (if (or _%arguments-ok?188638%_
                                           (let ((__tmp191252
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188628%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191252)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188628%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188694%_
                                                           '()))
                                               (cons _%object188696%_
                                                     (cons _%value188698%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191251 _%stx188624%_)))
                    _%$e188721%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188628%_ '4 '#f '#f))
                       (let ((__tmp191253
                              (let ((_%$obj188730%_
                                     (let ((__tmp191254
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191254))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188730%_
                                                              '())
                                                        (cons _%object188696%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188701%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188730%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188628%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188694%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188730%_
                                                                '()))
                                                    (cons _%value188698%_
                                                          '())))))
                            (cons (if _%arguments-ok?188638%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188628%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188698%_ '())))))
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
                               _%self188628%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188730%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188628%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191253 _%stx188624%_))
                       (let ((__tmp191255
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188696%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188628%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188698%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191255
                          _%stx188624%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188648188670%_
                                         _%hd188645188662%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188640188654%_
                                           _%g188641188657%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188640188654%_ _%g188641188657%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188640188654%_ _%g188641188657%_))))))
            (declare (not safe))
            (_%g188639188733%_ _%args188625%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188437%_ _%ctx188438%_ _%stx188439%_ _%args188440%_)
        (let ((_%self188443%_ _%self188437%_))
          (let* ((_%self188452188462%_ _%self188443%_)
                 (_%E188454188466%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188452188462%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188455188476%_
                  (lambda (_%inline188469%_ _%dispatch188470%_ _%arity188471%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188443%_
                           _%args188440%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188439%_
                           _%arity188471%_)))
                    (if _%inline188469%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191256
                                 (let ((__tmp191257
                                        (_%inline188469%_ _%stx188439%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191257
                                    _%stx188439%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188438%_ __tmp191256)))
                        (if (and _%dispatch188470%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188470%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188470%_))
                              (let ((__tmp191258
                                     (let ((__tmp191259
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191259
                                        _%stx188439%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188438%_ __tmp191258)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188443%_
                               _%ctx188438%_
                               _%stx188439%_
                               _%args188440%_)))))))
            (if '#t
                (let* ((_%e188456188479%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188452188462%_
                           '1
                           '#f
                           '#f)))
                       (_%e188457188482%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188452188462%_
                           '2
                           '#f
                           '#f)))
                       (_%e188458188485%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188452188462%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188488%_ _%e188458188485%_)
                       (_%e188459188490%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188452188462%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188493%_ _%e188459188490%_)
                       (_%e188460188495%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188452188462%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188498%_ _%e188460188495%_))
                  (declare (not safe))
                  (_%K188455188476%_
                   _%inline188498%_
                   _%dispatch188493%_
                   _%arity188488%_))
                (let () (declare (not safe)) (_%E188454188466%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188289%_ _%ctx188290%_ _%stx188291%_ _%args188292%_)
        (let ()
          (let* ((_%self188295%_ _%self188289%_)
                 (_%$e188309%_
                  (let ((__tmp191261
                         (lambda (_%g188304188306%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188304188306%_
                              _%args188292%_))))
                        (__tmp191260
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188295%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191261 __tmp191260))))
            (if _%$e188309%_
                ((lambda (_%clause188312%_)
                   (let ((__method191163
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188312%_ 'optimize-call))))
                     (if __method191163
                         (__method191163
                          _%clause188312%_
                          _%ctx188290%_
                          _%stx188291%_
                          _%args188292%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188312%_
                                  'optimize-call)))))
                 _%$e188309%_)
                (let ((__tmp191262
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188295%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188291%_
                   __tmp191262)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188029%_ _%ctx188030%_ _%stx188031%_ _%args188032%_)
        (let ((_%self188035%_ _%self188029%_))
          (let* ((_%self188044188053%_ _%self188035%_)
                 (_%E188046188057%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188044188053%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K188047188148%_
                  (lambda (_%dispatch188060%_ _%table188061%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch188060%_))
                        (let* ((_%g188062188072%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch188060%_)))
                               (_%else188064188080%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch188060%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx188030%_
                                     _%stx188031%_))))
                               (_%K188066188129%_
                                (lambda (_%main188083%_ _%keys188084%_)
                                  (let ((_g191263_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx188031%_
                                            _%args188032%_))))
                                    (begin
                                      (let ((_g191264_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191263_)
                                                   (##vector-length _g191263_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191264_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191264_)))
                                      (let ((_%pargs188086%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191263_ 0)))
                                            (_%kwargs188087%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191263_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188083%_))
                                          (if _%table188061%_
                                              (let ((_%xargs188095%_
                                                     (map (lambda (_%key188089%_)
                                                            (let ((_%$e188091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188089%_ _%kwargs188087%_))))
                      (if _%$e188091%_
                          _%$e188091%_
                          (let () '(%#ref absent-value)))))
                  _%keys188084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188097%_)
                                                   (if (memq (car _%kw188097%_)
                                                             _%keys188084%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx188031%_
                                                          _%keys188084%_
                                                          _%kw188097%_))))
                                                 _%kwargs188087%_)
                                                (let ((__tmp191265
                                                       (let ((__tmp191266
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188083%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188086%_
                                           _%xargs188095%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191266 _%stx188031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx188030%_
                                                   __tmp191265)))
                                              (let* ((_%kwt188099%_
                                                      (let ((__tmp191267
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191267)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188103%_
                                                      (map (lambda (_%_188101%_)
                                                             (let ((__tmp191268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191268)))
                   _%kwargs188087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188108%_
                                                      (map (lambda (_%kw188105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188106%_)
                     (cons (cons _%kwvar188106%_ '())
                           (cons (cdr _%kw188105%_) '())))
                   _%kwargs188087%_
                   _%kwvars188103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188113%_
                                                      (map (lambda (_%kw188110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188111%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188099%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188110%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188111%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188087%_
                   _%kwvars188103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188118%_
                                                      (map (lambda (_%kw188115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188116%_)
                     (cons (car _%kw188115%_)
                           (cons '%#ref (cons _%kwvar188116%_ '()))))
                   _%kwargs188087%_
                   _%kwvars188103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188126%_
                                                      (map (lambda (_%key188120%_)
                                                             (let ((_%$e188122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188120%_ _%xkwargs188118%_))))
                       (if _%$e188122%_
                           _%$e188122%_
                           (let () '(%#ref absent-value)))))
                   _%keys188084%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191269
                                                      (let ((__tmp191270
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188108%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191271
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188087%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191271
                                _%stx188031%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191273
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188099%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188086%_ _%xargs188126%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191273
                                       _%stx188031%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191272 _%kwset188113%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191270 _%stx188031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx188030%_
                                                 __tmp191269))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g188062188072%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e188067188132%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188062188072%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e188068188135%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188062188072%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e188069188138%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188062188072%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188141%_ _%e188069188138%_)
                                     (_%e188070188143%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188062188072%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188146%_ _%e188070188143%_))
                                (declare (not safe))
                                (_%K188066188129%_
                                 _%main188146%_
                                 _%keys188141%_))
                              (let ()
                                (declare (not safe))
                                (_%else188064188080%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx188030%_ _%stx188031%_))))))
            (if '#t
                (let* ((_%e188048188151%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188044188053%_
                           '1
                           '#f
                           '#f)))
                       (_%e188049188154%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188044188053%_
                           '2
                           '#f
                           '#f)))
                       (_%e188050188157%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188044188053%_
                           '3
                           '#f
                           '#f)))
                       (_%table188160%_ _%e188050188157%_)
                       (_%e188051188162%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188044188053%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188165%_ _%e188051188162%_))
                  (declare (not safe))
                  (_%K188047188148%_ _%dispatch188165%_ _%table188160%_))
                (let () (declare (not safe)) (_%E188046188057%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187642%_ _%args187643%_)
        (let _%lp187645%_ ((_%rest187647%_ _%args187643%_)
                           (_%pargs187648%_ '())
                           (_%kwargs187649%_ '()))
          (let* ((_%__stx190980190981%_ _%rest187647%_)
                 (_%g187655187707%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190980190981%_)))))
            (let ((_%__kont190982190983%_
                   (lambda (_%L187886%_ _%L187887%_)
                     (let ((__tmp191274 (cons _%L187887%_ _%pargs187648%_)))
                       (declare (not safe))
                       (_%lp187645%_
                        _%L187886%_
                        __tmp191274
                        _%kwargs187649%_))))
                  (_%__kont190984190985%_
                   (lambda (_%L187832%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187832%_ _%pargs187648%_))
                             (reverse _%kwargs187649%_))))
                  (_%__kont190986190987%_
                   (lambda (_%L187779%_ _%L187780%_ _%L187781%_)
                     (let ((_%kw187798%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187781%_))))
                       (if (assq _%kw187798%_ _%kwargs187649%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187642%_
                              _%kw187798%_))
                           (let ((__tmp191275
                                  (cons (cons _%kw187798%_ _%L187780%_)
                                        _%kwargs187649%_)))
                             (declare (not safe))
                             (_%lp187645%_
                              _%L187779%_
                              _%pargs187648%_
                              __tmp191275))))))
                  (_%__kont190988190989%_
                   (lambda (_%L187727%_ _%L187728%_)
                     (let ((__tmp191276 (cons _%L187728%_ _%pargs187648%_)))
                       (declare (not safe))
                       (_%lp187645%_
                        _%L187727%_
                        __tmp191276
                        _%kwargs187649%_))))
                  (_%__kont190990190991%_
                   (lambda ()
                     (values (reverse _%pargs187648%_)
                             (reverse _%kwargs187649%_)))))
              (let ((_%__match191087191088%_
                     (lambda (_%e187688187747%_
                              _%hd187687187750%_
                              _%tl187686187752%_
                              _%e187691187755%_
                              _%hd187690187758%_
                              _%tl187689187760%_
                              _%e187694187763%_
                              _%hd187693187766%_
                              _%tl187692187768%_
                              _%e187697187771%_
                              _%hd187696187774%_
                              _%tl187695187776%_)
                       (let ((_%L187779%_ _%tl187695187776%_)
                             (_%L187780%_ _%hd187696187774%_)
                             (_%L187781%_ _%hd187693187766%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187781%_))
                             (_%__kont190986190987%_
                              _%L187779%_
                              _%L187780%_
                              _%L187781%_)
                             (_%__kont190988190989%_
                              _%tl187686187752%_
                              _%hd187687187750%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190980190981%_))
                    (let ((_%e187661187851%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190980190981%_))))
                      (let ((_%tl187659187856%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187661187851%_)))
                            (_%hd187660187854%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187661187851%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187660187854%_))
                            (let ((_%e187664187859%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187660187854%_))))
                              (let ((_%tl187662187864%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187664187859%_)))
                                    (_%hd187663187862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187664187859%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187663187862%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187663187862%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187662187864%_))
                                            (let ((_%e187667187867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187662187864%_))))
                                              (let ((_%tl187665187872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187667187867%_)))
                                                    (_%hd187666187870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187667187867%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187666187870%_))
                                                    (let ((_%e187668187875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187666187870%_))))
                                                      (if (equal? _%e187668187875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187665187872%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187659187856%_))
                          (let ((_%e187671187878%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187659187856%_))))
                            (let ((_%tl187669187883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187671187878%_)))
                                  (_%hd187670187881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187671187878%_))))
                              (_%__kont190982190983%_
                               _%tl187669187883%_
                               _%hd187670187881%_)))
                          (_%__kont190988190989%_
                           _%tl187659187856%_
                           _%hd187660187854%_))
                      (_%__kont190988190989%_
                       _%tl187659187856%_
                       _%hd187660187854%_))
                  (if (equal? _%e187668187875%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187665187872%_))
                          (_%__kont190984190985%_ _%tl187659187856%_)
                          (_%__kont190988190989%_
                           _%tl187659187856%_
                           _%hd187660187854%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187665187872%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187659187856%_))
                              (let ((_%e187697187771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187659187856%_))))
                                (let ((_%tl187695187776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187697187771%_)))
                                      (_%hd187696187774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187697187771%_))))
                                  (_%__match191087191088%_
                                   _%e187661187851%_
                                   _%hd187660187854%_
                                   _%tl187659187856%_
                                   _%e187664187859%_
                                   _%hd187663187862%_
                                   _%tl187662187864%_
                                   _%e187667187867%_
                                   _%hd187666187870%_
                                   _%tl187665187872%_
                                   _%e187697187771%_
                                   _%hd187696187774%_
                                   _%tl187695187776%_)))
                              (_%__kont190988190989%_
                               _%tl187659187856%_
                               _%hd187660187854%_))
                          (_%__kont190988190989%_
                           _%tl187659187856%_
                           _%hd187660187854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187665187872%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187659187856%_))
                                                            (let ((_%e187697187771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187659187856%_))))
                      (let ((_%tl187695187776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187697187771%_)))
                            (_%hd187696187774%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187697187771%_))))
                        (_%__match191087191088%_
                         _%e187661187851%_
                         _%hd187660187854%_
                         _%tl187659187856%_
                         _%e187664187859%_
                         _%hd187663187862%_
                         _%tl187662187864%_
                         _%e187667187867%_
                         _%hd187666187870%_
                         _%tl187665187872%_
                         _%e187697187771%_
                         _%hd187696187774%_
                         _%tl187695187776%_)))
                    (_%__kont190988190989%_
                     _%tl187659187856%_
                     _%hd187660187854%_))
                (_%__kont190988190989%_
                 _%tl187659187856%_
                 _%hd187660187854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190988190989%_
                                             _%tl187659187856%_
                                             _%hd187660187854%_))
                                        (_%__kont190988190989%_
                                         _%tl187659187856%_
                                         _%hd187660187854%_))
                                    (_%__kont190988190989%_
                                     _%tl187659187856%_
                                     _%hd187660187854%_))))
                            (_%__kont190988190989%_
                             _%tl187659187856%_
                             _%hd187660187854%_))))
                    (_%__kont190990190991%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187626%_ _%ctx187627%_ _%stx187628%_ _%args187629%_)
        (let ((_%self187632%_ _%self187626%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187627%_ _%stx187628%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187314%_ _%stx187315%_)
        (let* ((_%__stx191096191097%_ _%stx187315%_)
               (_%g187318187358%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191096191097%_)))))
          (let ((_%__kont191098191099%_
                 (lambda (_%L187464%_ _%L187465%_)
                   (let ((_%$e187492%_
                          (member 'return:
                                  (let ((__tmp191277
                                         (lambda (_%g187484187487%_
                                                  _%g187485187489%_)
                                           (cons _%g187484187487%_
                                                 _%g187485187489%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191277 '() _%L187465%_))
                                  gx#stx-eq?)))
                     (if _%$e187492%_
                         ((lambda (_%tail187495%_)
                            (let ((_%type187497%_
                                   (let ((__tmp191278
                                          (let ((__tmp191279
                                                 (cadr _%tail187495%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191279))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187315%_
                                      __tmp191278))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187315%_
                                 _%L187464%_
                                 _%type187497%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187314%_
                                 _%L187464%_))))
                          _%$e187492%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187314%_ _%L187464%_))))))
                (_%__kont191102191103%_
                 (lambda (_%L187387%_ _%L187388%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187314%_ _%L187387%_)))))
            (let ((_%__match191133191134%_
                   (lambda (_%e187324187408%_
                            _%hd187323187411%_
                            _%tl187322187413%_
                            _%e187327187416%_
                            _%hd187326187419%_
                            _%tl187325187421%_
                            _%e187330187424%_
                            _%hd187329187427%_
                            _%tl187328187429%_
                            _%__splice191100191101%_
                            _%target187331187432%_
                            _%tl187333187434%_)
                     (letrec ((_%loop187334187437%_
                               (lambda (_%hd187332187440%_
                                        _%signature187338187442%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187332187440%_))
                                     (let ((_%e187335187445%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187332187440%_))))
                                       (let ((_%lp-tl187337187450%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187335187445%_)))
                                             (_%lp-hd187336187448%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187335187445%_))))
                                         (let ((__tmp191280
                                                (cons _%lp-hd187336187448%_
                                                      _%signature187338187442%_)))
                                           (declare (not safe))
                                           (_%loop187334187437%_
                                            _%lp-tl187337187450%_
                                            __tmp191280))))
                                     (let ((_%signature187339187453%_
                                            (reverse _%signature187338187442%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187325187421%_))
                                           (let ((_%e187342187456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187325187421%_))))
                                             (let ((_%tl187340187461%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187342187456%_)))
                                                   (_%hd187341187459%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187342187456%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187340187461%_))
                                                   (_%__kont191098191099%_
                                                    _%hd187341187459%_
                                                    _%signature187339187453%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187318187358%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187318187358%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187334187437%_ _%target187331187432%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191096191097%_))
                  (let ((_%e187324187408%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191096191097%_))))
                    (let ((_%tl187322187413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187324187408%_)))
                          (_%hd187323187411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187324187408%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187322187413%_))
                          (let ((_%e187327187416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187322187413%_))))
                            (let ((_%tl187325187421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187327187416%_)))
                                  (_%hd187326187419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187327187416%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187326187419%_))
                                  (let ((_%e187330187424%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187326187419%_))))
                                    (let ((_%tl187328187429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187330187424%_)))
                                          (_%hd187329187427%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187330187424%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187329187427%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187329187427%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187328187429%_))
                                                  (let ((_%__splice191100191101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187328187429%_
                                                            '0))))
                                                    (let ((_%tl187333187434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191100191101%_
                                                              '1)))
                                                          (_%target187331187432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191100191101%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187333187434%_))
                                                          (_%__match191133191134%_
                                                           _%e187324187408%_
                                                           _%hd187323187411%_
                                                           _%tl187322187413%_
                                                           _%e187327187416%_
                                                           _%hd187326187419%_
                                                           _%tl187325187421%_
                                                           _%e187330187424%_
                                                           _%hd187329187427%_
                                                           _%tl187328187429%_
                                                           _%__splice191100191101%_
                                                           _%target187331187432%_
                                                           _%tl187333187434%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187325187421%_))
                      (let ((_%e187353187379%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187325187421%_))))
                        (let ((_%tl187351187384%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187353187379%_)))
                              (_%hd187352187382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187353187379%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187351187384%_))
                              (_%__kont191102191103%_
                               _%hd187352187382%_
                               _%hd187326187419%_)
                              (let ()
                                (declare (not safe))
                                (_%g187318187358%_)))))
                      (let () (declare (not safe)) (_%g187318187358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187325187421%_))
                                                      (let ((_%e187353187379%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187325187421%_))))
                (let ((_%tl187351187384%_
                       (let () (declare (not safe)) (##cdr _%e187353187379%_)))
                      (_%hd187352187382%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187353187379%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187351187384%_))
                      (_%__kont191102191103%_
                       _%hd187352187382%_
                       _%hd187326187419%_)
                      (let () (declare (not safe)) (_%g187318187358%_)))))
              (let () (declare (not safe)) (_%g187318187358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187325187421%_))
                                                  (let ((_%e187353187379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187325187421%_))))
                                                    (let ((_%tl187351187384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187353187379%_)))
                                                          (_%hd187352187382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187353187379%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187351187384%_))
                                                          (_%__kont191102191103%_
                                                           _%hd187352187382%_
                                                           _%hd187326187419%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187318187358%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187318187358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187325187421%_))
                                              (let ((_%e187353187379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187325187421%_))))
                                                (let ((_%tl187351187384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187353187379%_)))
                                                      (_%hd187352187382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187353187379%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187351187384%_))
                                                      (_%__kont191102191103%_
                                                       _%hd187352187382%_
                                                       _%hd187326187419%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187318187358%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187318187358%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187325187421%_))
                                      (let ((_%e187353187379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187325187421%_))))
                                        (let ((_%tl187351187384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187353187379%_)))
                                              (_%hd187352187382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187353187379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187351187384%_))
                                              (_%__kont191102191103%_
                                               _%hd187352187382%_
                                               _%hd187326187419%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187318187358%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187318187358%_))))))
                          (let () (declare (not safe)) (_%g187318187358%_)))))
                  (let () (declare (not safe)) (_%g187318187358%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187292%_ _%expr187293%_ _%type187294%_)
        (let ((_%$e187296%_
               (let () (declare (not safe)) (not _%type187294%_))))
          (if _%$e187296%_
              _%$e187296%_
              (let ((_%$e187299%_
                     (eq? (##structure-ref _%type187294%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187299%_
                    _%$e187299%_
                    (let ((_%expr-type187303%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187293%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187303%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187292%_
                             _%type187294%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187303%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187292%_
                                 _%type187294%_
                                 _%expr-type187303%_))
                              (let ((_%$e187307%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187303%_
                                        'gxc#!abort::t))))
                                (if _%$e187307%_
                                    _%$e187307%_
                                    (let ((_%$e187310%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187303%_
                                              _%type187294%_))))
                                      (if _%$e187310%_
                                          _%$e187310%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187292%_
                                             _%type187294%_
                                             _%expr-type187303%_)))))))))))))))))
