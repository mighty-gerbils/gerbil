(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712246561)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191182 (list gxc#::basic-xform::t))
            (__tmp191181 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191182
         '()
         __tmp191181
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190731%_
        (apply make-instance gxc#::optimize-call::t _%$args190731%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191183
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
        (__make-promise __tmp191183)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190723%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190726%_
                (let ((__obj191173
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191173))
               (__tmp191184
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190726%_ _%stx190723%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191184
           gxc#current-compile-method
           _%self190726%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191186 (list gxc#::void::t))
            (__tmp191185 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191186
         '()
         __tmp191185
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190720%_
        (apply make-instance gxc#::check-return-type::t _%$args190720%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191187
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
        (__make-promise __tmp191187)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190712%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190715%_
                (let ((__obj191175
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191175))
               (__tmp191188
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190715%_ _%stx190712%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191188
           gxc#current-compile-method
           _%self190715%_))))
    (define gxc#optimize-call%
      (lambda (_%self190322%_ _%stx190323%_)
        (let* ((_%__stx190786190787%_ _%stx190323%_)
               (_%g190326190372%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190786190787%_)))))
          (let ((_%__kont190788190789%_
                 (lambda (_%L190515%_ _%L190516%_)
                   (let* ((_%rator-id190536%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190516%_)))
                          (_%rator-type190538%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190536%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190538%_))
                             (eq? (##structure-ref
                                   _%rator-type190538%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190322%_ _%stx190323%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190538%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191189
                                      (##structure-ref
                                       _%rator-type190538%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190536%_
                                  '" => "
                                  _%rator-type190538%_
                                  '" "
                                  __tmp191189))
                               (let* ((_%optimized190553%_
                                       (let ((__method191176
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190538%_
                                                 'optimize-call))))
                                         (if __method191176
                                             (__method191176
                                              _%rator-type190538%_
                                              _%self190322%_
                                              _%stx190323%_
                                              (let ((__tmp191190
                                                     (lambda (_%g190545190548%_
                                                              _%g190546190550%_)
                                                       (cons _%g190545190548%_
                                                             _%g190546190550%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191190
                                                 '()
                                                 _%L190515%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190538%_
                                                      'optimize-call)))))
                                      (_%__stx190734190735%_
                                       _%optimized190553%_)
                                      (_%g190556190585%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190734190735%_)))))
                                 (let ((_%__kont190736190737%_
                                        (lambda (_%L190653%_ _%L190654%_)
                                          (let ((_%optimized-rator-id190681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L190654%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type190538%_))
                                                         (eq? _%optimized-rator-id190681%_
                                                              _%rator-id190536%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190681%_
                                                              gxc#checked-primitives)))
                                                _%optimized190553%_
                                                (let ((__tmp191191
                                                       (let ((__tmp191192
                                                              (let ((__tmp191195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190654%_ '())))
                            (__tmp191193
                             (let ((__tmp191194
                                    (lambda (_%g190685190688%_
                                             _%g190686190690%_)
                                      (cons _%g190685190688%_
                                            _%g190686190690%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191194 '() _%L190653%_))))
                        (declare (not safe))
                        (cons __tmp191195 __tmp191193))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191191
                                                   _%stx190323%_))))))
                                       (_%__kont190740190741%_
                                        (lambda () _%optimized190553%_)))
                                   (let ((_%__match190783190784%_
                                          (lambda (_%e190562190597%_
                                                   _%hd190561190600%_
                                                   _%tl190560190602%_
                                                   _%e190565190605%_
                                                   _%hd190564190608%_
                                                   _%tl190563190610%_
                                                   _%e190568190613%_
                                                   _%hd190567190616%_
                                                   _%tl190566190618%_
                                                   _%e190571190621%_
                                                   _%hd190570190624%_
                                                   _%tl190569190626%_
                                                   _%__splice190738190739%_
                                                   _%target190572190629%_
                                                   _%tl190574190631%_)
                                            (letrec ((_%loop190575190634%_
                                                      (lambda (_%hd190573190637%_
                                                               _%arg190579190639%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190573190637%_))
                                                            (let ((_%e190576190642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190573190637%_))))
                      (let ((_%lp-tl190578190647%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190576190642%_)))
                            (_%lp-hd190577190645%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190576190642%_))))
                        (let ((__tmp191196
                               (cons _%lp-hd190577190645%_
                                     _%arg190579190639%_)))
                          (declare (not safe))
                          (_%loop190575190634%_
                           _%lp-tl190578190647%_
                           __tmp191196))))
                    (let ((_%arg190580190650%_ (reverse _%arg190579190639%_)))
                      (_%__kont190736190737%_
                       _%arg190580190650%_
                       _%hd190570190624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190575190634%_
                                                 _%target190572190629%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190734190735%_))
                                         (let ((_%e190562190597%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190734190735%_))))
                                           (let ((_%tl190560190602%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190562190597%_)))
                                                 (_%hd190561190600%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190562190597%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190561190600%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190561190600%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190560190602%_))
                                                         (let ((_%e190565190605%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190560190602%_))))
                   (let ((_%tl190563190610%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190565190605%_)))
                         (_%hd190564190608%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190565190605%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190564190608%_))
                         (let ((_%e190568190613%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190564190608%_))))
                           (let ((_%tl190566190618%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190568190613%_)))
                                 (_%hd190567190616%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190568190613%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190567190616%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190567190616%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190566190618%_))
                                         (let ((_%e190571190621%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190566190618%_))))
                                           (let ((_%tl190569190626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190571190621%_)))
                                                 (_%hd190570190624%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190571190621%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190569190626%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190563190610%_))
                                                     (let ((_%__splice190738190739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190563190610%_
                                                               '0))))
                                                       (let ((_%tl190574190631%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190738190739%_ '1)))
                     (_%target190572190629%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190738190739%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190574190631%_))
                     (_%__match190783190784%_
                      _%e190562190597%_
                      _%hd190561190600%_
                      _%tl190560190602%_
                      _%e190565190605%_
                      _%hd190564190608%_
                      _%tl190563190610%_
                      _%e190568190613%_
                      _%hd190567190616%_
                      _%tl190566190618%_
                      _%e190571190621%_
                      _%hd190570190624%_
                      _%tl190569190626%_
                      _%__splice190738190739%_
                      _%target190572190629%_
                      _%tl190574190631%_)
                     (_%__kont190740190741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190740190741%_))
                                                 (_%__kont190740190741%_))))
                                         (_%__kont190740190741%_))
                                     (_%__kont190740190741%_))
                                 (_%__kont190740190741%_))))
                         (_%__kont190740190741%_))))
                 (_%__kont190740190741%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190740190741%_))
                                                 (_%__kont190740190741%_))))
                                         (_%__kont190740190741%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190538%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190538%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191197
                                        (let ((__tmp191198
                                               (let ((__tmp191201
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191199
                                                      (map (lambda (_%g190696190698%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190322%_ _%g190696190698%_)))
                   (let ((__tmp191200
                          (lambda (_%g190700190703%_ _%g190701190705%_)
                            (cons _%g190700190703%_ _%g190701190705%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191200 '() _%L190515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191201
                                                       __tmp191199))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191198))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191197
                                    _%stx190323%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190323%_
                                    _%rator-type190538%_))))))))
                (_%__kont190792190793%_
                 (lambda (_%L190417%_ _%L190418%_)
                   (let ((_%rator-type190435%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190418%_))))
                     (if (and _%rator-type190435%_
                              (eq? (##structure-ref
                                    _%rator-type190435%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191202
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190435%_))))
                                (declare (not safe))
                                (not __tmp191202)))
                         (let ((__tmp191203
                                (let ((__tmp191204
                                       (let ((__tmp191207
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190322%_
                                                 _%L190418%_)))
                                             (__tmp191205
                                              (map (lambda (_%g190437190439%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190322%_
                                                        _%g190437190439%_)))
                                                   (let ((__tmp191206
                                                          (lambda (_%g190441190444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190442190446%_)
                    (cons _%g190441190444%_ _%g190442190446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191206
                                                      '()
                                                      _%L190417%_)))))
                                         (declare (not safe))
                                         (cons __tmp191207 __tmp191205))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191204))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191203 _%stx190323%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190435%_))
                                 (let ((__tmp191208
                                        (##structure-ref
                                         _%rator-type190435%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191208 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190322%_ _%stx190323%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190323%_
                                _%rator-type190435%_))))))))
            (let* ((_%__match190853190854%_
                    (lambda (_%e190355190377%_
                             _%hd190354190380%_
                             _%tl190353190382%_
                             _%e190358190385%_
                             _%hd190357190388%_
                             _%tl190356190390%_
                             _%__splice190794190795%_
                             _%target190359190393%_
                             _%tl190361190395%_)
                      (letrec ((_%loop190362190398%_
                                (lambda (_%hd190360190401%_
                                         _%rand190366190403%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190360190401%_))
                                      (let ((_%e190363190406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190360190401%_))))
                                        (let ((_%lp-tl190365190411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190363190406%_)))
                                              (_%lp-hd190364190409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190363190406%_))))
                                          (let ((__tmp191209
                                                 (cons _%lp-hd190364190409%_
                                                       _%rand190366190403%_)))
                                            (declare (not safe))
                                            (_%loop190362190398%_
                                             _%lp-tl190365190411%_
                                             __tmp191209))))
                                      (let ((_%rand190367190414%_
                                             (reverse _%rand190366190403%_)))
                                        (_%__kont190792190793%_
                                         _%rand190367190414%_
                                         _%hd190357190388%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190362190398%_ _%target190359190393%_ '())))))
                   (_%__match190833190834%_
                    (lambda (_%e190332190459%_
                             _%hd190331190462%_
                             _%tl190330190464%_
                             _%e190335190467%_
                             _%hd190334190470%_
                             _%tl190333190472%_
                             _%e190338190475%_
                             _%hd190337190478%_
                             _%tl190336190480%_
                             _%e190341190483%_
                             _%hd190340190486%_
                             _%tl190339190488%_
                             _%__splice190790190791%_
                             _%target190342190491%_
                             _%tl190344190493%_)
                      (letrec ((_%loop190345190496%_
                                (lambda (_%hd190343190499%_
                                         _%rand190349190501%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190343190499%_))
                                      (let ((_%e190346190504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190343190499%_))))
                                        (let ((_%lp-tl190348190509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190346190504%_)))
                                              (_%lp-hd190347190507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190346190504%_))))
                                          (let ((__tmp191210
                                                 (cons _%lp-hd190347190507%_
                                                       _%rand190349190501%_)))
                                            (declare (not safe))
                                            (_%loop190345190496%_
                                             _%lp-tl190348190509%_
                                             __tmp191210))))
                                      (let ((_%rand190350190512%_
                                             (reverse _%rand190349190501%_)))
                                        (_%__kont190788190789%_
                                         _%rand190350190512%_
                                         _%hd190340190486%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190345190496%_
                           _%target190342190491%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190786190787%_))
                  (let ((_%e190332190459%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190786190787%_))))
                    (let ((_%tl190330190464%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190332190459%_)))
                          (_%hd190331190462%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190332190459%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190330190464%_))
                          (let ((_%e190335190467%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190330190464%_))))
                            (let ((_%tl190333190472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190335190467%_)))
                                  (_%hd190334190470%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190335190467%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190334190470%_))
                                  (let ((_%e190338190475%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190334190470%_))))
                                    (let ((_%tl190336190480%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190338190475%_)))
                                          (_%hd190337190478%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190338190475%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190337190478%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190337190478%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190336190480%_))
                                                  (let ((_%e190341190483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190336190480%_))))
                                                    (let ((_%tl190339190488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190341190483%_)))
                                                          (_%hd190340190486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190341190483%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190339190488%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190333190472%_))
                      (let ((_%__splice190790190791%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190333190472%_
                                '0))))
                        (let ((_%tl190344190493%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190790190791%_ '1)))
                              (_%target190342190491%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190790190791%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190344190493%_))
                              (_%__match190833190834%_
                               _%e190332190459%_
                               _%hd190331190462%_
                               _%tl190330190464%_
                               _%e190335190467%_
                               _%hd190334190470%_
                               _%tl190333190472%_
                               _%e190338190475%_
                               _%hd190337190478%_
                               _%tl190336190480%_
                               _%e190341190483%_
                               _%hd190340190486%_
                               _%tl190339190488%_
                               _%__splice190790190791%_
                               _%target190342190491%_
                               _%tl190344190493%_)
                              (let ()
                                (declare (not safe))
                                (_%g190326190372%_)))))
                      (let () (declare (not safe)) (_%g190326190372%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190333190472%_))
                      (let ((_%__splice190794190795%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190333190472%_
                                '0))))
                        (let ((_%tl190361190395%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190794190795%_ '1)))
                              (_%target190359190393%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190794190795%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190361190395%_))
                              (_%__match190853190854%_
                               _%e190332190459%_
                               _%hd190331190462%_
                               _%tl190330190464%_
                               _%e190335190467%_
                               _%hd190334190470%_
                               _%tl190333190472%_
                               _%__splice190794190795%_
                               _%target190359190393%_
                               _%tl190361190395%_)
                              (let ()
                                (declare (not safe))
                                (_%g190326190372%_)))))
                      (let () (declare (not safe)) (_%g190326190372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190333190472%_))
                                                      (let ((_%__splice190794190795%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190333190472%_ '0))))
                (let ((_%tl190361190395%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190794190795%_ '1)))
                      (_%target190359190393%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190794190795%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190361190395%_))
                      (_%__match190853190854%_
                       _%e190332190459%_
                       _%hd190331190462%_
                       _%tl190330190464%_
                       _%e190335190467%_
                       _%hd190334190470%_
                       _%tl190333190472%_
                       _%__splice190794190795%_
                       _%target190359190393%_
                       _%tl190361190395%_)
                      (let () (declare (not safe)) (_%g190326190372%_)))))
              (let () (declare (not safe)) (_%g190326190372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190333190472%_))
                                                  (let ((_%__splice190794190795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190333190472%_
                                                            '0))))
                                                    (let ((_%tl190361190395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190794190795%_
                                                              '1)))
                                                          (_%target190359190393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190794190795%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190361190395%_))
                                                          (_%__match190853190854%_
                                                           _%e190332190459%_
                                                           _%hd190331190462%_
                                                           _%tl190330190464%_
                                                           _%e190335190467%_
                                                           _%hd190334190470%_
                                                           _%tl190333190472%_
                                                           _%__splice190794190795%_
                                                           _%target190359190393%_
                                                           _%tl190361190395%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190326190372%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190326190372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190333190472%_))
                                              (let ((_%__splice190794190795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190333190472%_
                                                        '0))))
                                                (let ((_%tl190361190395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190794190795%_
                                                          '1)))
                                                      (_%target190359190393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190794190795%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190361190395%_))
                                                      (_%__match190853190854%_
                                                       _%e190332190459%_
                                                       _%hd190331190462%_
                                                       _%tl190330190464%_
                                                       _%e190335190467%_
                                                       _%hd190334190470%_
                                                       _%tl190333190472%_
                                                       _%__splice190794190795%_
                                                       _%target190359190393%_
                                                       _%tl190361190395%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190326190372%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190326190372%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190333190472%_))
                                      (let ((_%__splice190794190795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190333190472%_
                                                '0))))
                                        (let ((_%tl190361190395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190794190795%_
                                                  '1)))
                                              (_%target190359190393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190794190795%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190361190395%_))
                                              (_%__match190853190854%_
                                               _%e190332190459%_
                                               _%hd190331190462%_
                                               _%tl190330190464%_
                                               _%e190335190467%_
                                               _%hd190334190470%_
                                               _%tl190333190472%_
                                               _%__splice190794190795%_
                                               _%target190359190393%_
                                               _%tl190361190395%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190326190372%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190326190372%_))))))
                          (let () (declare (not safe)) (_%g190326190372%_)))))
                  (let () (declare (not safe)) (_%g190326190372%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190284%_ _%ctx190285%_ _%stx190286%_ _%args190287%_)
        (let ((_%self190290%_ _%self190284%_))
          (if (let ((__method191177
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190290%_ 'check-arguments))))
                (if __method191177
                    (__method191177
                     _%self190290%_
                     _%ctx190285%_
                     _%stx190286%_
                     _%args190287%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190290%_
                             'check-arguments))))
              (let* ((_%signature190300%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190290%_ '2 '#f '#f)))
                     (_%signature190302%_ _%signature190300%_)
                     (_%$e190312%_
                      (if _%signature190302%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190302%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190312%_
                    ((lambda (_%unchecked190315%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190315%_))
                           (let ((__tmp191211
                                  (let ((__tmp191212
                                         (let ((__tmp191214
                                                (cons '%#ref
                                                      (cons _%unchecked190315%_
                                                            '())))
                                               (__tmp191213
                                                (map (lambda (_%g190316190318%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190285%_
                                                          _%g190316190318%_)))
                                                     _%args190287%_)))
                                           (declare (not safe))
                                           (cons __tmp191214 __tmp191213))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191212))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191211 _%stx190286%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190285%_ _%stx190286%_))))
                     _%$e190312%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190285%_ _%stx190286%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190285%_ _%stx190286%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self190035%_ _%ctx190036%_ _%stx190037%_ _%args190038%_)
        (let ()
          (let* ((_%self190041%_ _%self190035%_)
                 (_%signature190050190052%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self190041%_ '2 '#f '#f))))
            (if _%signature190050190052%_
                (let* ((_%signature190055%_ _%signature190050190052%_)
                       (_%argument-types190056190058%_
                        (##direct-structure-ref
                         _%signature190055%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types190056190058%_
                      (let* ((_%argument-types190061%_
                              _%argument-types190056190058%_)
                             (_%argument-types190066%_
                              (let ((__tmp191215
                                     (lambda (_%t190064%_)
                                       (if _%t190064%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx190037%_
                                              _%t190064%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191215
                                 _%argument-types190061%_))))
                        (let _%loop190068%_ ((_%rest-args190070%_
                                              _%args190038%_)
                                             (_%rest-types190071%_
                                              _%argument-types190066%_)
                                             (_%result190072%_ '#t))
                          (let* ((_%rest-args190073190081%_
                                  _%rest-args190070%_)
                                 (_%else190075190089%_
                                  (lambda () _%result190072%_))
                                 (_%K190077190150%_
                                  (lambda (_%rest-args190092%_ _%arg190093%_)
                                    (let* ((_%rest-types190094190105%_
                                            _%rest-types190071%_)
                                           (_%E190098190109%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190094190105%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190101190138%_
                                             (lambda (_%rest-types190135%_
                                                      _%type190136%_)
                                               (let ((__tmp191216
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx190037%_
                                                             _%arg190093%_
                                                             _%type190136%_))
                                                          _%result190072%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop190068%_
                                                  _%rest-args190092%_
                                                  _%rest-types190135%_
                                                  __tmp191216))))
                                            (_%K190100190129%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx190037%_
                                                  _%argument-types190066%_))))
                                            (_%K190099190119%_
                                             (lambda (_%tail-type190113%_)
                                               (if (let ((__tmp191217
                                                          (lambda (_%g190114190116%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx190037%_
                                                               _%g190114190116%_
                                                               _%tail-type190113%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191217
                                                      _%rest-args190092%_))
                                                   _%result190072%_
                                                   '#f))))
                                        (let ((_%try-match190096190132%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190094190105%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190100190129%_))
                                                     (let ((_%tail-type190122%_
                                                            _%rest-types190094190105%_))
                                                       (declare (not safe))
                                                       (_%K190099190119%_
                                                        _%tail-type190122%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190094190105%_))
                                              (let ((_%tl190103190143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190094190105%_)))
                                                    (_%hd190102190141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190094190105%_))))
                                                (let ((_%type190146%_
                                                       _%hd190102190141%_)
                                                      (_%rest-types190148%_
                                                       _%tl190103190143%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190101190138%_
                                                     _%rest-types190148%_
                                                     _%type190146%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190096190132%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args190073190081%_))
                                (let ((_%hd190078190153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args190073190081%_)))
                                      (_%tl190079190155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args190073190081%_))))
                                  (let* ((_%arg190158%_ _%hd190078190153%_)
                                         (_%rest-args190160%_
                                          _%tl190079190155%_))
                                    (declare (not safe))
                                    (_%K190077190150%_
                                     _%rest-args190160%_
                                     _%arg190158%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else190075190089%_))))))
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
      (lambda (_%self189846%_ _%ctx189847%_ _%stx189848%_ _%args189849%_)
        (let ((_%self189852%_ _%self189846%_))
          (let* ((_%g189862189872%_
                  (lambda (_%g189863189869%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189863189869%_))))
                 (_%g189861189910%_
                  (lambda (_%g189863189875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189863189875%_))
                        (let ((_%e189867189877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189863189875%_))))
                          (let ((_%hd189866189880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189867189877%_)))
                                (_%tl189865189882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189867189877%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189865189882%_))
                                ((lambda (_%L189885%_)
                                   (let* ((_%klass189897%_
                                           (let ((__tmp191218
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189852%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189848%_
                                              __tmp191218)))
                                          (_%object189899%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189847%_
                                              _%L189885%_)))
                                          (_%instance?189904%_
                                           (let ((_%$e189901%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189899%_
                                                     _%klass189897%_))))
                                             (if _%$e189901%_
                                                 _%$e189901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189885%_
                                                    _%klass189897%_))))))
                                     (if _%instance?189904%_
                                         (let ((__tmp191219
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189899%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189885%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189899%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191219
                                            _%stx189848%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189847%_
                                            _%stx189848%_)))))
                                 _%hd189866189880%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189862189872%_ _%g189863189875%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189862189872%_ _%g189863189875%_))))))
            (declare (not safe))
            (_%g189861189910%_ _%args189849%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189642%_ _%ctx189643%_ _%stx189644%_ _%args189645%_)
        (let ((_%self189648%_ _%self189642%_))
          (let* ((_%g189658189668%_
                  (lambda (_%g189659189665%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189659189665%_))))
                 (_%g189657189721%_
                  (lambda (_%g189659189671%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189659189671%_))
                        (let ((_%e189663189673%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189659189671%_))))
                          (let ((_%hd189662189676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189663189673%_)))
                                (_%tl189661189678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189663189673%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189661189678%_))
                                ((lambda (_%L189681%_)
                                   (let* ((_%klass189693%_
                                           (let ((__tmp191220
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189648%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189644%_
                                              __tmp191220)))
                                          (_%object189695%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189643%_
                                              _%L189681%_)))
                                          (_%instance?189700%_
                                           (let ((_%$e189697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189695%_
                                                     _%klass189693%_))))
                                             (if _%$e189697%_
                                                 _%$e189697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189681%_
                                                    _%klass189693%_)))))
                                          (_%klass189703%_ _%klass189693%_))
                                     (if _%instance?189700%_
                                         (let ((__tmp191221
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189695%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189681%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189695%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191221
                                            _%stx189644%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189703%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191222
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189703%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189695%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191222
                                                _%stx189644%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189703%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191223
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189703%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189695%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191223
                                                    _%stx189644%_))
                                                 (let ((__tmp191224
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189648%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189695%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191224
                                                    _%stx189644%_)))))))
                                 _%hd189662189676%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189658189668%_ _%g189659189671%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189658189668%_ _%g189659189671%_))))))
            (declare (not safe))
            (_%g189657189721%_ _%args189645%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189305%_)
        (let* ((_%__stx190863190864%_ _%stx189305%_)
               (_%g189310189351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190863190864%_)))))
          (let ((_%__kont190865190866%_ (lambda () '#t))
                (_%__kont190867190868%_ (lambda () '#t))
                (_%__kont190869190870%_
                 (lambda (_%L189419%_ _%L189420%_)
                   (let ((_%rator-type189441189443%_
                          (let ((__tmp191225
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189420%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191225))))
                     (if _%rator-type189441189443%_
                         (let* ((_%rator-type189446%_
                                 _%rator-type189441189443%_)
                                (_%rator-signature189447189449%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189446%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189446%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189447189449%_
                               (let* ((_%rator-signature189452%_
                                       _%rator-signature189447189449%_)
                                      (_%rator-effect189453189455%_
                                       (if _%rator-signature189452%_
                                           (##direct-structure-ref
                                            _%rator-signature189452%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189453189455%_
                                     (let ((_%rator-effect189458%_
                                            _%rator-effect189453189455%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189458%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189458%_))
                                           (let ((__tmp191226
                                                  (let ((__tmp191227
                                                         (lambda (_%g189463189466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189464189468%_)
                   (cons _%g189463189466%_ _%g189464189468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191227
                                                     '()
                                                     _%L189419%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191226))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190873190874%_ (lambda () '#f)))
            (let ((_%__match190952190953%_
                   (lambda (_%e189328189363%_
                            _%hd189327189366%_
                            _%tl189326189368%_
                            _%e189331189371%_
                            _%hd189330189374%_
                            _%tl189329189376%_
                            _%e189334189379%_
                            _%hd189333189382%_
                            _%tl189332189384%_
                            _%e189337189387%_
                            _%hd189336189390%_
                            _%tl189335189392%_
                            _%__splice190871190872%_
                            _%target189338189395%_
                            _%tl189340189397%_)
                     (letrec ((_%loop189341189400%_
                               (lambda (_%hd189339189403%_
                                        _%rand189345189405%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189339189403%_))
                                     (let ((_%e189342189408%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189339189403%_))))
                                       (let ((_%lp-tl189344189413%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189342189408%_)))
                                             (_%lp-hd189343189411%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189342189408%_))))
                                         (let ((__tmp191228
                                                (cons _%lp-hd189343189411%_
                                                      _%rand189345189405%_)))
                                           (declare (not safe))
                                           (_%loop189341189400%_
                                            _%lp-tl189344189413%_
                                            __tmp191228))))
                                     (let ((_%rand189346189416%_
                                            (reverse _%rand189345189405%_)))
                                       (_%__kont190869190870%_
                                        _%rand189346189416%_
                                        _%hd189336189390%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189341189400%_ _%target189338189395%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190863190864%_))
                  (let ((_%e189314189499%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190863190864%_))))
                    (let ((_%tl189312189504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189314189499%_)))
                          (_%hd189313189502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189314189499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189313189502%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189313189502%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189312189504%_))
                                  (let ((_%e189317189507%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189312189504%_))))
                                    (let ((_%tl189315189512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189317189507%_)))
                                          (_%hd189316189510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189317189507%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189315189512%_))
                                          (_%__kont190865190866%_)
                                          (_%__kont190873190874%_))))
                                  (_%__kont190873190874%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189313189502%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189312189504%_))
                                      (let ((_%e189323189484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189312189504%_))))
                                        (let ((_%tl189321189489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189323189484%_)))
                                              (_%hd189322189487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189323189484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189321189489%_))
                                              (_%__kont190867190868%_)
                                              (_%__kont190873190874%_))))
                                      (_%__kont190873190874%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189313189502%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189312189504%_))
                                          (let ((_%e189331189371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189312189504%_))))
                                            (let ((_%tl189329189376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189331189371%_)))
                                                  (_%hd189330189374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189331189371%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189330189374%_))
                                                  (let ((_%e189334189379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189330189374%_))))
                                                    (let ((_%tl189332189384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189334189379%_)))
                                                          (_%hd189333189382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189334189379%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189333189382%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189333189382%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189332189384%_))
                          (let ((_%e189337189387%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189332189384%_))))
                            (let ((_%tl189335189392%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189337189387%_)))
                                  (_%hd189336189390%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189337189387%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189335189392%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189329189376%_))
                                      (let ((_%__splice190871190872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189329189376%_
                                                '0))))
                                        (let ((_%tl189340189397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190871190872%_
                                                  '1)))
                                              (_%target189338189395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190871190872%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189340189397%_))
                                              (_%__match190952190953%_
                                               _%e189314189499%_
                                               _%hd189313189502%_
                                               _%tl189312189504%_
                                               _%e189331189371%_
                                               _%hd189330189374%_
                                               _%tl189329189376%_
                                               _%e189334189379%_
                                               _%hd189333189382%_
                                               _%tl189332189384%_
                                               _%e189337189387%_
                                               _%hd189336189390%_
                                               _%tl189335189392%_
                                               _%__splice190871190872%_
                                               _%target189338189395%_
                                               _%tl189340189397%_)
                                              (_%__kont190873190874%_))))
                                      (_%__kont190873190874%_))
                                  (_%__kont190873190874%_))))
                          (_%__kont190873190874%_))
                      (_%__kont190873190874%_))
                  (_%__kont190873190874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190873190874%_))))
                                          (_%__kont190873190874%_))
                                      (_%__kont190873190874%_))))
                          (_%__kont190873190874%_))))
                  (_%__kont190873190874%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189300%_ _%klass189301%_)
        (let ((_%expr-type189303%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189300%_))))
          (if _%expr-type189303%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189303%_ _%klass189301%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189278%_ _%expr189279%_ _%type189280%_)
        (if (let () (declare (not safe)) (not _%type189280%_))
            (let () '#f)
            (let ((_%$e189283%_
                   (eq? (##structure-ref _%type189280%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189283%_
                  _%$e189283%_
                  (let ((_%expr-type189287%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189279%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189287%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189287%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189291%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189287%_
                                      'gxc#!abort::t))))
                              (if _%$e189291%_
                                  _%$e189291%_
                                  (let ((_%$e189294%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189287%_
                                            _%type189280%_))))
                                    (if _%$e189294%_
                                        _%$e189294%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189280%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189280%_
                                                   _%expr-type189287%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189278%_
                                                   _%expr189279%_
                                                   _%expr-type189287%_
                                                   _%type189280%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189092%_ _%ctx189093%_ _%stx189094%_ _%args189095%_)
        (let ((_%self189098%_ _%self189092%_))
          (let* ((_%klass189108%_
                  (let ((__tmp191229
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189098%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189094%_ __tmp191229)))
                 (_%fields189110%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189108%_
                             '5
                             '#f
                             '#f))))
                 (_%args189116%_
                  (map (lambda (_%g189111189113%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189093%_ _%g189111189113%_)))
                       _%args189095%_))
                 (_%inline-make-object189118%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189098%_
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
                             _%self189098%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189110%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189121%_ _%klass189108%_)
                   (_%$e189135%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189121%_ '6 '#f '#f))))
              (if _%$e189135%_
                  ((lambda (_%ctor189138%_)
                     (let ((_%$obj189140%_
                            (let ((__tmp191230
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191230)))
                           (_%ctor-impl189141%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189121%_
                               _%ctor189138%_))))
                       (let ((__tmp191231
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189140%_ '())
                                                      (cons _%inline-make-object189118%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189141%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189141%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189140%_ '()))
                                          _%args189116%_)))
                        (let ((_%$ctor189143%_
                               (let ((__tmp191232
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191232))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189143%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189098%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189140%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189138%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189143%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189140%_ '()))
                                        _%args189116%_)))
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
                                 _%self189098%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189138%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189140%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191231 _%stx189094%_))))
                   _%$e189135%_)
                  (let ((_%$e189145%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189121%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189145%_
                        ((lambda (_%metaclass189148%_)
                           (let* ((_%$obj189150%_
                                   (let ((__tmp191233
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191233)))
                                  (_%metakons189152%_
                                   (let ((__tmp191234
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189094%_
                                             _%metaclass189148%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191234
                                      'instance-init!)))
                                  (__tmp191235
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189118%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189152%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189098%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189116%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189098%_
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
                         (cons _%$obj189150%_ '()))
                   _%args189116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189150%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191235
                              _%stx189094%_)))
                         _%$e189145%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189121%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191236
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189116%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191236 _%fields189110%_))
                                  (let ((__tmp191237
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189098%_
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
                                                    _%self189098%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189116%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191237
                                     _%stx189094%_))
                                  (let ((__tmp191239
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189098%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191238
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189121%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189094%_
                                     __tmp191239
                                     __tmp191238))))
                            (let ((_%$obj189157%_
                                   (let ((__tmp191240
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191240))))
                              (let _%lp189159%_ ((_%rest189161%_
                                                  _%args189116%_)
                                                 (_%initializers189162%_ '()))
                                (let* ((_%__stx190955190956%_ _%rest189161%_)
                                       (_%g189166189187%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190955190956%_)))))
                                  (let ((_%__kont190957190958%_
                                         (lambda (_%L189241%_
                                                  _%L189242%_
                                                  _%L189243%_)
                                           (let* ((_%slot189270%_
                                                   (let ((__tmp191241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189243%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191241)))
                                                  (_%off189272%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189121%_
                                                      _%slot189270%_))))
                                             (if _%off189272%_
                                                 (let ((__tmp191242
                                                        (cons (cons _%off189272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189242%_)
                      _%initializers189162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189159%_
                                                    _%L189241%_
                                                    __tmp191242))
                                                 (let ((__tmp191243
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189098%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189094%_
                                                    __tmp191243
                                                    _%slot189270%_))))))
                                        (_%__kont190959190960%_
                                         (lambda ()
                                           (let ((__tmp191244
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189118%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191247
                                         (cons (cons '%#ref
                                                     (cons _%$obj189157%_ '()))
                                               '()))
                                        (__tmp191245
                                         (let ((__tmp191246
                                                (lambda (_%i189201%_
                                                         _%r189202%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189098%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189201%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189157%_ '()))
                                        (cons (cdr _%i189201%_) '())))))
                _%r189202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191246
                                            '()
                                            _%initializers189162%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191247 __tmp191245)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191244
                                              _%stx189094%_))))
                                        (_%__kont190961190962%_
                                         (lambda ()
                                           (let ((__tmp191248
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189118%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189157%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191248
                                              _%stx189094%_)))))
                                    (let* ((_%g189164189204%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190955190956%_))
                                                  (_%__kont190959190960%_)
                                                  (_%__kont190961190962%_))))
                                           (_%__match190992190993%_
                                            (lambda (_%e189173189209%_
                                                     _%hd189172189212%_
                                                     _%tl189171189214%_
                                                     _%e189176189217%_
                                                     _%hd189175189220%_
                                                     _%tl189174189222%_
                                                     _%e189179189225%_
                                                     _%hd189178189228%_
                                                     _%tl189177189230%_
                                                     _%e189182189233%_
                                                     _%hd189181189236%_
                                                     _%tl189180189238%_)
                                              (let ((_%L189241%_
                                                     _%tl189180189238%_)
                                                    (_%L189242%_
                                                     _%hd189181189236%_)
                                                    (_%L189243%_
                                                     _%hd189178189228%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189243%_))
                                                    (_%__kont190957190958%_
                                                     _%L189241%_
                                                     _%L189242%_
                                                     _%L189243%_)
                                                    (_%__kont190961190962%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190955190956%_))
                                          (let ((_%e189173189209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190955190956%_))))
                                            (let ((_%tl189171189214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189173189209%_)))
                                                  (_%hd189172189212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189173189209%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189172189212%_))
                                                  (let ((_%e189176189217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189172189212%_))))
                                                    (let ((_%tl189174189222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189176189217%_)))
                                                          (_%hd189175189220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189176189217%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189175189220%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189175189220%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189174189222%_))
                          (let ((_%e189179189225%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189174189222%_))))
                            (let ((_%tl189177189230%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189179189225%_)))
                                  (_%hd189178189228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189179189225%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189177189230%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189171189214%_))
                                      (let ((_%e189182189233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189171189214%_))))
                                        (let ((_%tl189180189238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189182189233%_)))
                                              (_%hd189181189236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189182189233%_))))
                                          (_%__match190992190993%_
                                           _%e189173189209%_
                                           _%hd189172189212%_
                                           _%tl189171189214%_
                                           _%e189176189217%_
                                           _%hd189175189220%_
                                           _%tl189174189222%_
                                           _%e189179189225%_
                                           _%hd189178189228%_
                                           _%tl189177189230%_
                                           _%e189182189233%_
                                           _%hd189181189236%_
                                           _%tl189180189238%_)))
                                      (_%__kont190961190962%_))
                                  (_%__kont190961190962%_))))
                          (_%__kont190961190962%_))
                      (_%__kont190961190962%_))
                  (_%__kont190961190962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190961190962%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189164189204%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188875%_ _%ctx188876%_ _%stx188877%_ _%args188878%_)
        (let ((_%self188881%_ _%self188875%_))
          (let* ((_%arguments-ok?188891%_
                  (let ((__method191178
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188881%_ 'check-arguments))))
                    (if __method191178
                        (__method191178
                         _%self188881%_
                         _%ctx188876%_
                         _%stx188877%_
                         _%args188878%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188881%_
                                 'check-arguments)))))
                 (_%g188893188903%_
                  (lambda (_%g188894188900%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188894188900%_))))
                 (_%g188892188967%_
                  (lambda (_%g188894188906%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188894188906%_))
                        (let ((_%e188898188908%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188894188906%_))))
                          (let ((_%hd188897188911%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188898188908%_)))
                                (_%tl188896188913%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188898188908%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188896188913%_))
                                ((lambda (_%L188916%_)
                                   (let* ((_%klass188929%_
                                           (let ((__tmp191249
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188881%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188877%_
                                              __tmp191249)))
                                          (_%field188931%_
                                           (let ((__tmp191250
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188881%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188929%_
                                              __tmp191250)))
                                          (_%object188933%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188876%_
                                              _%L188916%_)))
                                          (_%klass188936%_ _%klass188929%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188936%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191251
                                                (cons (if (or _%arguments-ok?188891%_
                                                              (let ((__tmp191252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188881%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191252)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188881%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188931%_ '()))
                          (cons _%object188933%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191251
                                            _%stx188877%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188936%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191253
                                                    (cons (if (or _%arguments-ok?188891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191254
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188881%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191254)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188881%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188931%_ '()))
                              (cons _%object188933%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191253
                                                _%stx188877%_))
                                             (let ((_%$e188955%_
                                                    (let ((__tmp191255
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188881%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188936%_
                                                       __tmp191255))))
                                               (if _%$e188955%_
                                                   ((lambda (_%klass188958%_)
                                                      (let ((__tmp191256
                                                             (cons (if (or _%arguments-ok?188891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191257
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188881%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191257)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188881%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188931%_ '()))
                                       (cons _%object188933%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191256 _%stx188877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188955%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188881%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191258
                                                              (let ((_%$obj188964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191259
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191259))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188964%_ '())
                                                (cons _%object188933%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188936%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188964%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188881%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188931%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188964%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188891%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188964%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188881%_
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
                                                               _%self188881%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188881%_
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
                 (gxc#xform-wrap-source __tmp191258 _%stx188877%_))
               (let ((__tmp191260
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188933%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188881%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191260 _%stx188877%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188897188911%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188893188903%_ _%g188894188906%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188893188903%_ _%g188894188906%_))))))
            (declare (not safe))
            (_%g188892188967%_ _%args188878%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188639%_ _%ctx188640%_ _%stx188641%_ _%args188642%_)
        (let ((_%self188645%_ _%self188639%_))
          (let* ((_%arguments-ok?188655%_
                  (let ((__method191179
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188645%_ 'check-arguments))))
                    (if __method191179
                        (__method191179
                         _%self188645%_
                         _%ctx188640%_
                         _%stx188641%_
                         _%args188642%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188645%_
                                 'check-arguments)))))
                 (_%g188657188671%_
                  (lambda (_%g188658188668%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188658188668%_))))
                 (_%g188656188750%_
                  (lambda (_%g188658188674%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188658188674%_))
                        (let ((_%e188663188676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188658188674%_))))
                          (let ((_%hd188662188679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188663188676%_)))
                                (_%tl188661188681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188663188676%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188661188681%_))
                                (let ((_%e188666188684%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188661188681%_))))
                                  (let ((_%hd188665188687%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188666188684%_)))
                                        (_%tl188664188689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188666188684%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188664188689%_))
                                        ((lambda (_%L188692%_ _%L188693%_)
                                           (let* ((_%klass188709%_
                                                   (let ((__tmp191261
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188645%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188641%_
                                                      __tmp191261)))
                                                  (_%field188711%_
                                                   (let ((__tmp191262
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188645%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188709%_
                                                      __tmp191262)))
                                                  (_%object188713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188640%_
                                                      _%L188693%_)))
                                                  (_%value188715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188640%_
                                                      _%L188692%_)))
                                                  (_%klass188718%_
                                                   _%klass188709%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188718%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191263
                                                        (cons (if (or _%arguments-ok?188655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191264
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188645%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191264)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188645%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188711%_ '()))
                                  (cons _%object188713%_
                                        (cons _%value188715%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191263
                                                    _%stx188641%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188718%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191265
                                                            (cons (if (or _%arguments-ok?188655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191266
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188645%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191266)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188645%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188711%_ '()))
                                      (cons _%object188713%_
                                            (cons _%value188715%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191265 _%stx188641%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188738%_
                                                            (let ((__tmp191267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188645%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188718%_
                       __tmp191267))))
               (if _%$e188738%_
                   ((lambda (_%klass188741%_)
                      (let ((__tmp191268
                             (cons (if (or _%arguments-ok?188655%_
                                           (let ((__tmp191269
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188645%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191269)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188645%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188711%_
                                                           '()))
                                               (cons _%object188713%_
                                                     (cons _%value188715%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191268 _%stx188641%_)))
                    _%$e188738%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188645%_ '4 '#f '#f))
                       (let ((__tmp191270
                              (let ((_%$obj188747%_
                                     (let ((__tmp191271
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191271))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188747%_
                                                              '())
                                                        (cons _%object188713%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188718%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188747%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188645%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188711%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188747%_
                                                                '()))
                                                    (cons _%value188715%_
                                                          '())))))
                            (cons (if _%arguments-ok?188655%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188645%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188715%_ '())))))
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
                               _%self188645%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188747%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188645%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188715%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191270 _%stx188641%_))
                       (let ((__tmp191272
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188713%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188645%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188715%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191272
                          _%stx188641%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188665188687%_
                                         _%hd188662188679%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188657188671%_
                                           _%g188658188674%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188657188671%_ _%g188658188674%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188657188671%_ _%g188658188674%_))))))
            (declare (not safe))
            (_%g188656188750%_ _%args188642%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188454%_ _%ctx188455%_ _%stx188456%_ _%args188457%_)
        (let ((_%self188460%_ _%self188454%_))
          (let* ((_%self188469188479%_ _%self188460%_)
                 (_%E188471188483%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188469188479%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188472188493%_
                  (lambda (_%inline188486%_ _%dispatch188487%_ _%arity188488%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188460%_
                           _%args188457%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188456%_
                           _%arity188488%_)))
                    (if _%inline188486%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191273
                                 (let ((__tmp191274
                                        (_%inline188486%_ _%stx188456%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191274
                                    _%stx188456%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188455%_ __tmp191273)))
                        (if (and _%dispatch188487%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188487%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188487%_))
                              (let ((__tmp191275
                                     (let ((__tmp191276
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191276
                                        _%stx188456%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188455%_ __tmp191275)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188460%_
                               _%ctx188455%_
                               _%stx188456%_
                               _%args188457%_)))))))
            (if '#t
                (let* ((_%e188473188496%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188469188479%_
                           '1
                           '#f
                           '#f)))
                       (_%e188474188499%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188469188479%_
                           '2
                           '#f
                           '#f)))
                       (_%e188475188502%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188469188479%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188505%_ _%e188475188502%_)
                       (_%e188476188507%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188469188479%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188510%_ _%e188476188507%_)
                       (_%e188477188512%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188469188479%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188515%_ _%e188477188512%_))
                  (declare (not safe))
                  (_%K188472188493%_
                   _%inline188515%_
                   _%dispatch188510%_
                   _%arity188505%_))
                (let () (declare (not safe)) (_%E188471188483%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188306%_ _%ctx188307%_ _%stx188308%_ _%args188309%_)
        (let ()
          (let* ((_%self188312%_ _%self188306%_)
                 (_%$e188326%_
                  (let ((__tmp191278
                         (lambda (_%g188321188323%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188321188323%_
                              _%args188309%_))))
                        (__tmp191277
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188312%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191278 __tmp191277))))
            (if _%$e188326%_
                ((lambda (_%clause188329%_)
                   (let ((__method191180
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188329%_ 'optimize-call))))
                     (if __method191180
                         (__method191180
                          _%clause188329%_
                          _%ctx188307%_
                          _%stx188308%_
                          _%args188309%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188329%_
                                  'optimize-call)))))
                 _%$e188326%_)
                (let ((__tmp191279
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188312%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188308%_
                   __tmp191279)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188046%_ _%ctx188047%_ _%stx188048%_ _%args188049%_)
        (let ((_%self188052%_ _%self188046%_))
          (let* ((_%self188061188070%_ _%self188052%_)
                 (_%E188063188074%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188061188070%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K188064188165%_
                  (lambda (_%dispatch188077%_ _%table188078%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch188077%_))
                        (let* ((_%g188079188089%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch188077%_)))
                               (_%else188081188097%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch188077%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx188047%_
                                     _%stx188048%_))))
                               (_%K188083188146%_
                                (lambda (_%main188100%_ _%keys188101%_)
                                  (let ((_g191280_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx188048%_
                                            _%args188049%_))))
                                    (begin
                                      (let ((_g191281_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191280_)
                                                   (##vector-length _g191280_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191281_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191281_)))
                                      (let ((_%pargs188103%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191280_ 0)))
                                            (_%kwargs188104%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191280_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188100%_))
                                          (if _%table188078%_
                                              (let ((_%xargs188112%_
                                                     (map (lambda (_%key188106%_)
                                                            (let ((_%$e188108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188106%_ _%kwargs188104%_))))
                      (if _%$e188108%_
                          _%$e188108%_
                          (let () '(%#ref absent-value)))))
                  _%keys188101%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188114%_)
                                                   (if (memq (car _%kw188114%_)
                                                             _%keys188101%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx188048%_
                                                          _%keys188101%_
                                                          _%kw188114%_))))
                                                 _%kwargs188104%_)
                                                (let ((__tmp191282
                                                       (let ((__tmp191283
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188100%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188103%_
                                           _%xargs188112%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191283 _%stx188048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx188047%_
                                                   __tmp191282)))
                                              (let* ((_%kwt188116%_
                                                      (let ((__tmp191284
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191284)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188120%_
                                                      (map (lambda (_%_188118%_)
                                                             (let ((__tmp191285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191285)))
                   _%kwargs188104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188125%_
                                                      (map (lambda (_%kw188122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188123%_)
                     (cons (cons _%kwvar188123%_ '())
                           (cons (cdr _%kw188122%_) '())))
                   _%kwargs188104%_
                   _%kwvars188120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188130%_
                                                      (map (lambda (_%kw188127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188128%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188116%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188127%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188128%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188104%_
                   _%kwvars188120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188135%_
                                                      (map (lambda (_%kw188132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188133%_)
                     (cons (car _%kw188132%_)
                           (cons '%#ref (cons _%kwvar188133%_ '()))))
                   _%kwargs188104%_
                   _%kwvars188120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188143%_
                                                      (map (lambda (_%key188137%_)
                                                             (let ((_%$e188139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188137%_ _%xkwargs188135%_))))
                       (if _%$e188139%_
                           _%$e188139%_
                           (let () '(%#ref absent-value)))))
                   _%keys188101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191286
                                                      (let ((__tmp191287
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188125%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191288
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188104%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191288
                                _%stx188048%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191290
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188116%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188103%_ _%xargs188143%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191290
                                       _%stx188048%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191289 _%kwset188130%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191287 _%stx188048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx188047%_
                                                 __tmp191286))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g188079188089%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e188084188149%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188079188089%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e188085188152%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188079188089%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e188086188155%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188079188089%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188158%_ _%e188086188155%_)
                                     (_%e188087188160%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g188079188089%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188163%_ _%e188087188160%_))
                                (declare (not safe))
                                (_%K188083188146%_
                                 _%main188163%_
                                 _%keys188158%_))
                              (let ()
                                (declare (not safe))
                                (_%else188081188097%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx188047%_ _%stx188048%_))))))
            (if '#t
                (let* ((_%e188065188168%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188061188070%_
                           '1
                           '#f
                           '#f)))
                       (_%e188066188171%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188061188070%_
                           '2
                           '#f
                           '#f)))
                       (_%e188067188174%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188061188070%_
                           '3
                           '#f
                           '#f)))
                       (_%table188177%_ _%e188067188174%_)
                       (_%e188068188179%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188061188070%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188182%_ _%e188068188179%_))
                  (declare (not safe))
                  (_%K188064188165%_ _%dispatch188182%_ _%table188177%_))
                (let () (declare (not safe)) (_%E188063188074%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187659%_ _%args187660%_)
        (let _%lp187662%_ ((_%rest187664%_ _%args187660%_)
                           (_%pargs187665%_ '())
                           (_%kwargs187666%_ '()))
          (let* ((_%__stx190997190998%_ _%rest187664%_)
                 (_%g187672187724%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190997190998%_)))))
            (let ((_%__kont190999191000%_
                   (lambda (_%L187903%_ _%L187904%_)
                     (let ((__tmp191291 (cons _%L187904%_ _%pargs187665%_)))
                       (declare (not safe))
                       (_%lp187662%_
                        _%L187903%_
                        __tmp191291
                        _%kwargs187666%_))))
                  (_%__kont191001191002%_
                   (lambda (_%L187849%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187849%_ _%pargs187665%_))
                             (reverse _%kwargs187666%_))))
                  (_%__kont191003191004%_
                   (lambda (_%L187796%_ _%L187797%_ _%L187798%_)
                     (let ((_%kw187815%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187798%_))))
                       (if (assq _%kw187815%_ _%kwargs187666%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187659%_
                              _%kw187815%_))
                           (let ((__tmp191292
                                  (cons (cons _%kw187815%_ _%L187797%_)
                                        _%kwargs187666%_)))
                             (declare (not safe))
                             (_%lp187662%_
                              _%L187796%_
                              _%pargs187665%_
                              __tmp191292))))))
                  (_%__kont191005191006%_
                   (lambda (_%L187744%_ _%L187745%_)
                     (let ((__tmp191293 (cons _%L187745%_ _%pargs187665%_)))
                       (declare (not safe))
                       (_%lp187662%_
                        _%L187744%_
                        __tmp191293
                        _%kwargs187666%_))))
                  (_%__kont191007191008%_
                   (lambda ()
                     (values (reverse _%pargs187665%_)
                             (reverse _%kwargs187666%_)))))
              (let ((_%__match191104191105%_
                     (lambda (_%e187705187764%_
                              _%hd187704187767%_
                              _%tl187703187769%_
                              _%e187708187772%_
                              _%hd187707187775%_
                              _%tl187706187777%_
                              _%e187711187780%_
                              _%hd187710187783%_
                              _%tl187709187785%_
                              _%e187714187788%_
                              _%hd187713187791%_
                              _%tl187712187793%_)
                       (let ((_%L187796%_ _%tl187712187793%_)
                             (_%L187797%_ _%hd187713187791%_)
                             (_%L187798%_ _%hd187710187783%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187798%_))
                             (_%__kont191003191004%_
                              _%L187796%_
                              _%L187797%_
                              _%L187798%_)
                             (_%__kont191005191006%_
                              _%tl187703187769%_
                              _%hd187704187767%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190997190998%_))
                    (let ((_%e187678187868%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190997190998%_))))
                      (let ((_%tl187676187873%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187678187868%_)))
                            (_%hd187677187871%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187678187868%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187677187871%_))
                            (let ((_%e187681187876%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187677187871%_))))
                              (let ((_%tl187679187881%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187681187876%_)))
                                    (_%hd187680187879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187681187876%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187680187879%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187680187879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187679187881%_))
                                            (let ((_%e187684187884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187679187881%_))))
                                              (let ((_%tl187682187889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187684187884%_)))
                                                    (_%hd187683187887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187684187884%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187683187887%_))
                                                    (let ((_%e187685187892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187683187887%_))))
                                                      (if (equal? _%e187685187892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187682187889%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187676187873%_))
                          (let ((_%e187688187895%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187676187873%_))))
                            (let ((_%tl187686187900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187688187895%_)))
                                  (_%hd187687187898%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187688187895%_))))
                              (_%__kont190999191000%_
                               _%tl187686187900%_
                               _%hd187687187898%_)))
                          (_%__kont191005191006%_
                           _%tl187676187873%_
                           _%hd187677187871%_))
                      (_%__kont191005191006%_
                       _%tl187676187873%_
                       _%hd187677187871%_))
                  (if (equal? _%e187685187892%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187682187889%_))
                          (_%__kont191001191002%_ _%tl187676187873%_)
                          (_%__kont191005191006%_
                           _%tl187676187873%_
                           _%hd187677187871%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187682187889%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187676187873%_))
                              (let ((_%e187714187788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187676187873%_))))
                                (let ((_%tl187712187793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187714187788%_)))
                                      (_%hd187713187791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187714187788%_))))
                                  (_%__match191104191105%_
                                   _%e187678187868%_
                                   _%hd187677187871%_
                                   _%tl187676187873%_
                                   _%e187681187876%_
                                   _%hd187680187879%_
                                   _%tl187679187881%_
                                   _%e187684187884%_
                                   _%hd187683187887%_
                                   _%tl187682187889%_
                                   _%e187714187788%_
                                   _%hd187713187791%_
                                   _%tl187712187793%_)))
                              (_%__kont191005191006%_
                               _%tl187676187873%_
                               _%hd187677187871%_))
                          (_%__kont191005191006%_
                           _%tl187676187873%_
                           _%hd187677187871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187682187889%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187676187873%_))
                                                            (let ((_%e187714187788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187676187873%_))))
                      (let ((_%tl187712187793%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187714187788%_)))
                            (_%hd187713187791%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187714187788%_))))
                        (_%__match191104191105%_
                         _%e187678187868%_
                         _%hd187677187871%_
                         _%tl187676187873%_
                         _%e187681187876%_
                         _%hd187680187879%_
                         _%tl187679187881%_
                         _%e187684187884%_
                         _%hd187683187887%_
                         _%tl187682187889%_
                         _%e187714187788%_
                         _%hd187713187791%_
                         _%tl187712187793%_)))
                    (_%__kont191005191006%_
                     _%tl187676187873%_
                     _%hd187677187871%_))
                (_%__kont191005191006%_
                 _%tl187676187873%_
                 _%hd187677187871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont191005191006%_
                                             _%tl187676187873%_
                                             _%hd187677187871%_))
                                        (_%__kont191005191006%_
                                         _%tl187676187873%_
                                         _%hd187677187871%_))
                                    (_%__kont191005191006%_
                                     _%tl187676187873%_
                                     _%hd187677187871%_))))
                            (_%__kont191005191006%_
                             _%tl187676187873%_
                             _%hd187677187871%_))))
                    (_%__kont191007191008%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187643%_ _%ctx187644%_ _%stx187645%_ _%args187646%_)
        (let ((_%self187649%_ _%self187643%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187644%_ _%stx187645%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187331%_ _%stx187332%_)
        (let* ((_%__stx191113191114%_ _%stx187332%_)
               (_%g187335187375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191113191114%_)))))
          (let ((_%__kont191115191116%_
                 (lambda (_%L187481%_ _%L187482%_)
                   (let ((_%$e187509%_
                          (member 'return:
                                  (let ((__tmp191294
                                         (lambda (_%g187501187504%_
                                                  _%g187502187506%_)
                                           (cons _%g187501187504%_
                                                 _%g187502187506%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191294 '() _%L187482%_))
                                  gx#stx-eq?)))
                     (if _%$e187509%_
                         ((lambda (_%tail187512%_)
                            (let ((_%type187514%_
                                   (let ((__tmp191295
                                          (let ((__tmp191296
                                                 (cadr _%tail187512%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191296))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187332%_
                                      __tmp191295))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187332%_
                                 _%L187481%_
                                 _%type187514%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187331%_
                                 _%L187481%_))))
                          _%$e187509%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187331%_ _%L187481%_))))))
                (_%__kont191119191120%_
                 (lambda (_%L187404%_ _%L187405%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187331%_ _%L187404%_)))))
            (let ((_%__match191150191151%_
                   (lambda (_%e187341187425%_
                            _%hd187340187428%_
                            _%tl187339187430%_
                            _%e187344187433%_
                            _%hd187343187436%_
                            _%tl187342187438%_
                            _%e187347187441%_
                            _%hd187346187444%_
                            _%tl187345187446%_
                            _%__splice191117191118%_
                            _%target187348187449%_
                            _%tl187350187451%_)
                     (letrec ((_%loop187351187454%_
                               (lambda (_%hd187349187457%_
                                        _%signature187355187459%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187349187457%_))
                                     (let ((_%e187352187462%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187349187457%_))))
                                       (let ((_%lp-tl187354187467%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187352187462%_)))
                                             (_%lp-hd187353187465%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187352187462%_))))
                                         (let ((__tmp191297
                                                (cons _%lp-hd187353187465%_
                                                      _%signature187355187459%_)))
                                           (declare (not safe))
                                           (_%loop187351187454%_
                                            _%lp-tl187354187467%_
                                            __tmp191297))))
                                     (let ((_%signature187356187470%_
                                            (reverse _%signature187355187459%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187342187438%_))
                                           (let ((_%e187359187473%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187342187438%_))))
                                             (let ((_%tl187357187478%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187359187473%_)))
                                                   (_%hd187358187476%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187359187473%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187357187478%_))
                                                   (_%__kont191115191116%_
                                                    _%hd187358187476%_
                                                    _%signature187356187470%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187335187375%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187335187375%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187351187454%_ _%target187348187449%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191113191114%_))
                  (let ((_%e187341187425%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191113191114%_))))
                    (let ((_%tl187339187430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187341187425%_)))
                          (_%hd187340187428%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187341187425%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187339187430%_))
                          (let ((_%e187344187433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187339187430%_))))
                            (let ((_%tl187342187438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187344187433%_)))
                                  (_%hd187343187436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187344187433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187343187436%_))
                                  (let ((_%e187347187441%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187343187436%_))))
                                    (let ((_%tl187345187446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187347187441%_)))
                                          (_%hd187346187444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187347187441%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187346187444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187346187444%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187345187446%_))
                                                  (let ((_%__splice191117191118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187345187446%_
                                                            '0))))
                                                    (let ((_%tl187350187451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191117191118%_
                                                              '1)))
                                                          (_%target187348187449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191117191118%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187350187451%_))
                                                          (_%__match191150191151%_
                                                           _%e187341187425%_
                                                           _%hd187340187428%_
                                                           _%tl187339187430%_
                                                           _%e187344187433%_
                                                           _%hd187343187436%_
                                                           _%tl187342187438%_
                                                           _%e187347187441%_
                                                           _%hd187346187444%_
                                                           _%tl187345187446%_
                                                           _%__splice191117191118%_
                                                           _%target187348187449%_
                                                           _%tl187350187451%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187342187438%_))
                      (let ((_%e187370187396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187342187438%_))))
                        (let ((_%tl187368187401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187370187396%_)))
                              (_%hd187369187399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187370187396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187368187401%_))
                              (_%__kont191119191120%_
                               _%hd187369187399%_
                               _%hd187343187436%_)
                              (let ()
                                (declare (not safe))
                                (_%g187335187375%_)))))
                      (let () (declare (not safe)) (_%g187335187375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187342187438%_))
                                                      (let ((_%e187370187396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187342187438%_))))
                (let ((_%tl187368187401%_
                       (let () (declare (not safe)) (##cdr _%e187370187396%_)))
                      (_%hd187369187399%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187370187396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187368187401%_))
                      (_%__kont191119191120%_
                       _%hd187369187399%_
                       _%hd187343187436%_)
                      (let () (declare (not safe)) (_%g187335187375%_)))))
              (let () (declare (not safe)) (_%g187335187375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187342187438%_))
                                                  (let ((_%e187370187396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187342187438%_))))
                                                    (let ((_%tl187368187401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187370187396%_)))
                                                          (_%hd187369187399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187370187396%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187368187401%_))
                                                          (_%__kont191119191120%_
                                                           _%hd187369187399%_
                                                           _%hd187343187436%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187335187375%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187335187375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187342187438%_))
                                              (let ((_%e187370187396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187342187438%_))))
                                                (let ((_%tl187368187401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187370187396%_)))
                                                      (_%hd187369187399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187370187396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187368187401%_))
                                                      (_%__kont191119191120%_
                                                       _%hd187369187399%_
                                                       _%hd187343187436%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187335187375%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187335187375%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187342187438%_))
                                      (let ((_%e187370187396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187342187438%_))))
                                        (let ((_%tl187368187401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187370187396%_)))
                                              (_%hd187369187399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187370187396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187368187401%_))
                                              (_%__kont191119191120%_
                                               _%hd187369187399%_
                                               _%hd187343187436%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187335187375%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187335187375%_))))))
                          (let () (declare (not safe)) (_%g187335187375%_)))))
                  (let () (declare (not safe)) (_%g187335187375%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187309%_ _%expr187310%_ _%type187311%_)
        (let ((_%$e187313%_
               (let () (declare (not safe)) (not _%type187311%_))))
          (if _%$e187313%_
              _%$e187313%_
              (let ((_%$e187316%_
                     (eq? (##structure-ref _%type187311%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187316%_
                    _%$e187316%_
                    (let ((_%expr-type187320%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187310%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187320%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187309%_
                             _%type187311%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187320%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187309%_
                                 _%type187311%_
                                 _%expr-type187320%_))
                              (let ((_%$e187324%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187320%_
                                        'gxc#!abort::t))))
                                (if _%$e187324%_
                                    _%$e187324%_
                                    (let ((_%$e187327%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187320%_
                                              _%type187311%_))))
                                      (if _%$e187327%_
                                          _%$e187327%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187309%_
                                             _%type187311%_
                                             _%expr-type187320%_)))))))))))))))))
