(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712823033)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp192287 (list gxc#::basic-xform::t))
            (__tmp192286 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp192287
         '()
         __tmp192286
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args191822%_
        (apply make-instance gxc#::optimize-call::t _%$args191822%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp192288
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
        (__make-promise __tmp192288)))
    (define gxc#apply-optimize-call
      (lambda (_%stx191814%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self191817%_
                (let ((__obj192278
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj192278))
               (__tmp192289
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191817%_ _%stx191814%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192289
           gxc#current-compile-method
           _%self191817%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp192291 (list gxc#::void::t))
            (__tmp192290 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp192291
         '()
         __tmp192290
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args191811%_
        (apply make-instance gxc#::check-return-type::t _%$args191811%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp192292
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
        (__make-promise __tmp192292)))
    (define gxc#apply-check-return-type
      (lambda (_%stx191803%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self191806%_
                (let ((__obj192280
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj192280))
               (__tmp192293
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self191806%_ _%stx191803%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192293
           gxc#current-compile-method
           _%self191806%_))))
    (define gxc#optimize-call%
      (lambda (_%self191404%_ _%stx191405%_)
        (let* ((_%__stx191891191892%_ _%stx191405%_)
               (_%g191408191454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191891191892%_)))))
          (let ((_%__kont191893191894%_
                 (lambda (_%L191597%_ _%L191598%_)
                   (let* ((_%rator-id191618%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L191598%_)))
                          (_%rator-type191620%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id191618%_))))
                     (if (or (not _%rator-type191620%_)
                             (eq? (##structure-ref
                                   _%rator-type191620%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self191404%_ _%stx191405%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type191620%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp192294
                                      (##structure-ref
                                       _%rator-type191620%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id191618%_
                                  '" => "
                                  _%rator-type191620%_
                                  '" "
                                  __tmp192294))
                               (let* ((_%optimized191635%_
                                       (let ((__method192281
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type191620%_
                                                 'optimize-call))))
                                         (if __method192281
                                             (let ((__tmp192295
                                                    (let ((__tmp192296
                                                           (lambda (_%g191627191630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g191628191632%_)
                     (cons _%g191627191630%_ _%g191628191632%_))))
              (declare (not safe))
              (__foldr1 __tmp192296 '() _%L191597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method192281
                                                _%rator-type191620%_
                                                _%self191404%_
                                                _%stx191405%_
                                                __tmp192295))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type191620%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx191839191840%_
                                       _%optimized191635%_)
                                      (_%g191638191667%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx191839191840%_)))))
                                 (let ((_%__kont191841191842%_
                                        (lambda (_%L191735%_ _%L191736%_)
                                          (let* ((_%optimized-rator-id191763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L191736%_)))
                                                 (_%rator-type191768%_
                                                  (let ((_%$e191765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id191763%_))))
                                                    (if _%$e191765%_
                                                        _%$e191765%_
                                                        _%rator-type191620%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type191768%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id191763%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type191768%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type191768%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized191635%_
                                                (let ((__tmp192297
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L191736%_ '()))
                           (let ((__tmp192298
                                  (lambda (_%g191776191779%_ _%g191777191781%_)
                                    (cons _%g191776191779%_
                                          _%g191777191781%_))))
                             (declare (not safe))
                             (__foldr1 __tmp192298 '() _%L191735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp192297
                                                   _%stx191405%_))))))
                                       (_%__kont191845191846%_
                                        (lambda () _%optimized191635%_)))
                                   (let ((_%__match191888191889%_
                                          (lambda (_%e191642191679%_
                                                   _%hd191643191682%_
                                                   _%tl191644191684%_
                                                   _%e191645191687%_
                                                   _%hd191646191690%_
                                                   _%tl191647191692%_
                                                   _%e191648191695%_
                                                   _%hd191649191698%_
                                                   _%tl191650191700%_
                                                   _%e191651191703%_
                                                   _%hd191652191706%_
                                                   _%tl191653191708%_
                                                   _%__splice191843191844%_
                                                   _%target191654191711%_
                                                   _%tl191656191713%_)
                                            (letrec ((_%loop191657191716%_
                                                      (lambda (_%hd191655191719%_
                                                               _%arg191661191721%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd191655191719%_))
                                                            (let ((_%e191658191724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd191655191719%_))))
                      (let ((_%lp-tl191660191729%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191658191724%_)))
                            (_%lp-hd191659191727%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191658191724%_))))
                        (_%loop191657191716%_
                         _%lp-tl191660191729%_
                         (cons _%lp-hd191659191727%_ _%arg191661191721%_))))
                    (let ((_%arg191662191732%_ (reverse _%arg191661191721%_)))
                      (_%__kont191841191842%_
                       _%arg191662191732%_
                       _%hd191652191706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop191657191716%_
                                               _%target191654191711%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx191839191840%_))
                                         (let ((_%e191642191679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx191839191840%_))))
                                           (let ((_%tl191644191684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e191642191679%_)))
                                                 (_%hd191643191682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e191642191679%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd191643191682%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd191643191682%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl191644191684%_))
                                                         (let ((_%e191645191687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl191644191684%_))))
                   (let ((_%tl191647191692%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e191645191687%_)))
                         (_%hd191646191690%_
                          (let ()
                            (declare (not safe))
                            (##car _%e191645191687%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd191646191690%_))
                         (let ((_%e191648191695%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd191646191690%_))))
                           (let ((_%tl191650191700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e191648191695%_)))
                                 (_%hd191649191698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e191648191695%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd191649191698%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd191649191698%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl191650191700%_))
                                         (let ((_%e191651191703%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl191650191700%_))))
                                           (let ((_%tl191653191708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e191651191703%_)))
                                                 (_%hd191652191706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e191651191703%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl191653191708%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl191647191692%_))
                                                     (let ((_%__splice191843191844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl191647191692%_
                                                               '0))))
                                                       (let ((_%tl191656191713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice191843191844%_ '1)))
                     (_%target191654191711%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice191843191844%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl191656191713%_))
                     (_%__match191888191889%_
                      _%e191642191679%_
                      _%hd191643191682%_
                      _%tl191644191684%_
                      _%e191645191687%_
                      _%hd191646191690%_
                      _%tl191647191692%_
                      _%e191648191695%_
                      _%hd191649191698%_
                      _%tl191650191700%_
                      _%e191651191703%_
                      _%hd191652191706%_
                      _%tl191653191708%_
                      _%__splice191843191844%_
                      _%target191654191711%_
                      _%tl191656191713%_)
                     (_%__kont191845191846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191845191846%_))
                                                 (_%__kont191845191846%_))))
                                         (_%__kont191845191846%_))
                                     (_%__kont191845191846%_))
                                 (_%__kont191845191846%_))))
                         (_%__kont191845191846%_))))
                 (_%__kont191845191846%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont191845191846%_))
                                                 (_%__kont191845191846%_))))
                                         (_%__kont191845191846%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type191620%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type191620%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp192299
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L191598%_
                                                                '()))
                                                    (map (lambda (_%g191787191789%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self191404%_
                                                              _%g191787191789%_)))
                                                         (let ((__tmp192300
                                                                (lambda (_%g191791191794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g191792191796%_)
                          (cons _%g191791191794%_ _%g191792191796%_))))
                   (declare (not safe))
                   (__foldr1 __tmp192300 '() _%L191597%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp192299
                                    _%stx191405%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx191405%_
                                    _%rator-type191620%_))))))))
                (_%__kont191897191898%_
                 (lambda (_%L191499%_ _%L191500%_)
                   (let ((_%rator-type191517%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L191500%_))))
                     (if (and _%rator-type191517%_
                              (eq? (##structure-ref
                                    _%rator-type191517%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (not (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gxc#!primitive::t
                                      _%rator-type191517%_)))
                              (not (and (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%rator-type191517%_
                                           'gxc#!procedure::t))
                                        (eq? (let ()
                                               (declare (not safe))
                                               (gxc#!procedure-origin
                                                _%rator-type191517%_))
                                             (##structure-ref
                                              (let ()
                                                (declare (not safe))
                                                (gx#current-expander-context))
                                              '1
                                              gx#expander-context::t
                                              '#f)))))
                         (let ((__tmp192301
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self191404%_
                                               _%L191500%_))
                                            (map (lambda (_%g191519191521%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self191404%_
                                                      _%g191519191521%_)))
                                                 (let ((__tmp192302
                                                        (lambda (_%g191523191526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g191524191528%_)
                  (cons _%g191523191526%_ _%g191524191528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp192302
                                                    '()
                                                    _%L191499%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp192301 _%stx191405%_))
                         (if (or (not _%rator-type191517%_)
                                 (let ((__tmp192303
                                        (##structure-ref
                                         _%rator-type191517%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp192303 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self191404%_ _%stx191405%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx191405%_
                                _%rator-type191517%_))))))))
            (let* ((_%__match191958191959%_
                    (lambda (_%e191435191459%_
                             _%hd191436191462%_
                             _%tl191437191464%_
                             _%e191438191467%_
                             _%hd191439191470%_
                             _%tl191440191472%_
                             _%__splice191899191900%_
                             _%target191441191475%_
                             _%tl191443191477%_)
                      (letrec ((_%loop191444191480%_
                                (lambda (_%hd191442191483%_
                                         _%rand191448191485%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd191442191483%_))
                                      (let ((_%e191445191488%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd191442191483%_))))
                                        (let ((_%lp-tl191447191493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191445191488%_)))
                                              (_%lp-hd191446191491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191445191488%_))))
                                          (_%loop191444191480%_
                                           _%lp-tl191447191493%_
                                           (cons _%lp-hd191446191491%_
                                                 _%rand191448191485%_))))
                                      (let ((_%rand191449191496%_
                                             (reverse _%rand191448191485%_)))
                                        (_%__kont191897191898%_
                                         _%rand191449191496%_
                                         _%hd191439191470%_))))))
                        (_%loop191444191480%_ _%target191441191475%_ '()))))
                   (_%__match191938191939%_
                    (lambda (_%e191412191541%_
                             _%hd191413191544%_
                             _%tl191414191546%_
                             _%e191415191549%_
                             _%hd191416191552%_
                             _%tl191417191554%_
                             _%e191418191557%_
                             _%hd191419191560%_
                             _%tl191420191562%_
                             _%e191421191565%_
                             _%hd191422191568%_
                             _%tl191423191570%_
                             _%__splice191895191896%_
                             _%target191424191573%_
                             _%tl191426191575%_)
                      (letrec ((_%loop191427191578%_
                                (lambda (_%hd191425191581%_
                                         _%rand191431191583%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd191425191581%_))
                                      (let ((_%e191428191586%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd191425191581%_))))
                                        (let ((_%lp-tl191430191591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191428191586%_)))
                                              (_%lp-hd191429191589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191428191586%_))))
                                          (_%loop191427191578%_
                                           _%lp-tl191430191591%_
                                           (cons _%lp-hd191429191589%_
                                                 _%rand191431191583%_))))
                                      (let ((_%rand191432191594%_
                                             (reverse _%rand191431191583%_)))
                                        (_%__kont191893191894%_
                                         _%rand191432191594%_
                                         _%hd191422191568%_))))))
                        (_%loop191427191578%_ _%target191424191573%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191891191892%_))
                  (let ((_%e191412191541%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191891191892%_))))
                    (let ((_%tl191414191546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191412191541%_)))
                          (_%hd191413191544%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191412191541%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191414191546%_))
                          (let ((_%e191415191549%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191414191546%_))))
                            (let ((_%tl191417191554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191415191549%_)))
                                  (_%hd191416191552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191415191549%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191416191552%_))
                                  (let ((_%e191418191557%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191416191552%_))))
                                    (let ((_%tl191420191562%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191418191557%_)))
                                          (_%hd191419191560%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191418191557%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191419191560%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191419191560%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191420191562%_))
                                                  (let ((_%e191421191565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191420191562%_))))
                                                    (let ((_%tl191423191570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191421191565%_)))
                                                          (_%hd191422191568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191421191565%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191423191570%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl191417191554%_))
                      (let ((_%__splice191895191896%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl191417191554%_
                                '0))))
                        (let ((_%tl191426191575%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191895191896%_ '1)))
                              (_%target191424191573%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191895191896%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191426191575%_))
                              (_%__match191938191939%_
                               _%e191412191541%_
                               _%hd191413191544%_
                               _%tl191414191546%_
                               _%e191415191549%_
                               _%hd191416191552%_
                               _%tl191417191554%_
                               _%e191418191557%_
                               _%hd191419191560%_
                               _%tl191420191562%_
                               _%e191421191565%_
                               _%hd191422191568%_
                               _%tl191423191570%_
                               _%__splice191895191896%_
                               _%target191424191573%_
                               _%tl191426191575%_)
                              (let ()
                                (declare (not safe))
                                (_%g191408191454%_)))))
                      (let () (declare (not safe)) (_%g191408191454%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl191417191554%_))
                      (let ((_%__splice191899191900%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl191417191554%_
                                '0))))
                        (let ((_%tl191443191477%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191899191900%_ '1)))
                              (_%target191441191475%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice191899191900%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191443191477%_))
                              (_%__match191958191959%_
                               _%e191412191541%_
                               _%hd191413191544%_
                               _%tl191414191546%_
                               _%e191415191549%_
                               _%hd191416191552%_
                               _%tl191417191554%_
                               _%__splice191899191900%_
                               _%target191441191475%_
                               _%tl191443191477%_)
                              (let ()
                                (declare (not safe))
                                (_%g191408191454%_)))))
                      (let () (declare (not safe)) (_%g191408191454%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl191417191554%_))
                                                      (let ((_%__splice191899191900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl191417191554%_ '0))))
                (let ((_%tl191443191477%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191899191900%_ '1)))
                      (_%target191441191475%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice191899191900%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191443191477%_))
                      (_%__match191958191959%_
                       _%e191412191541%_
                       _%hd191413191544%_
                       _%tl191414191546%_
                       _%e191415191549%_
                       _%hd191416191552%_
                       _%tl191417191554%_
                       _%__splice191899191900%_
                       _%target191441191475%_
                       _%tl191443191477%_)
                      (let () (declare (not safe)) (_%g191408191454%_)))))
              (let () (declare (not safe)) (_%g191408191454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191417191554%_))
                                                  (let ((_%__splice191899191900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191417191554%_
                                                            '0))))
                                                    (let ((_%tl191443191477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191899191900%_
                                                              '1)))
                                                          (_%target191441191475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191899191900%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191443191477%_))
                                                          (_%__match191958191959%_
                                                           _%e191412191541%_
                                                           _%hd191413191544%_
                                                           _%tl191414191546%_
                                                           _%e191415191549%_
                                                           _%hd191416191552%_
                                                           _%tl191417191554%_
                                                           _%__splice191899191900%_
                                                           _%target191441191475%_
                                                           _%tl191443191477%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191408191454%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191408191454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl191417191554%_))
                                              (let ((_%__splice191899191900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl191417191554%_
                                                        '0))))
                                                (let ((_%tl191443191477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191899191900%_
                                                          '1)))
                                                      (_%target191441191475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice191899191900%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191443191477%_))
                                                      (_%__match191958191959%_
                                                       _%e191412191541%_
                                                       _%hd191413191544%_
                                                       _%tl191414191546%_
                                                       _%e191415191549%_
                                                       _%hd191416191552%_
                                                       _%tl191417191554%_
                                                       _%__splice191899191900%_
                                                       _%target191441191475%_
                                                       _%tl191443191477%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191408191454%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191408191454%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl191417191554%_))
                                      (let ((_%__splice191899191900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl191417191554%_
                                                '0))))
                                        (let ((_%tl191443191477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191899191900%_
                                                  '1)))
                                              (_%target191441191475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191899191900%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191443191477%_))
                                              (_%__match191958191959%_
                                               _%e191412191541%_
                                               _%hd191413191544%_
                                               _%tl191414191546%_
                                               _%e191415191549%_
                                               _%hd191416191552%_
                                               _%tl191417191554%_
                                               _%__splice191899191900%_
                                               _%target191441191475%_
                                               _%tl191443191477%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191408191454%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191408191454%_))))))
                          (let () (declare (not safe)) (_%g191408191454%_)))))
                  (let () (declare (not safe)) (_%g191408191454%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188357191364%_ _%ctx191366%_ _%stx191367%_ _%args191368%_)
        (let* ((_%self191370%_ _%self188357191364%_)
               (_%self191372%_ _%self191370%_))
          (if (let ((__method192282
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self191372%_ 'check-arguments))))
                (if __method192282
                    (let ()
                      (declare (not safe))
                      (__method192282
                       _%self191372%_
                       _%ctx191366%_
                       _%stx191367%_
                       _%args191368%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self191372%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature191382%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191372%_ '2 '#f '#f)))
                     (_%signature191384%_ _%signature191382%_)
                     (_%$e191394%_
                      (if _%signature191384%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature191384%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e191394%_
                    ((lambda (_%unchecked191397%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked191397%_))
                           (let ((__tmp192304
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked191397%_
                                                          '()))
                                              (map (lambda (_%g191398191400%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx191366%_
                                                        _%g191398191400%_)))
                                                   _%args191368%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp192304
                              _%stx191367%_
                              _%ctx191366%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx191366%_ _%stx191367%_))))
                     _%$e191394%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx191366%_ _%stx191367%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx191366%_ _%stx191367%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass191824 __method-table191825)
        (let ((__check-arguments191826
               (let ((__tmp192305
                      (lambda ()
                        (let ((__method191827
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191825
                                  'check-arguments
                                  '#f))))
                          (if __method191827
                              __method191827
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192305))))
          (lambda (_%self188357191364%_
                   _%ctx191366%_
                   _%stx191367%_
                   _%args191368%_)
            (let* ((_%self191370%_ _%self188357191364%_)
                   (_%self191372%_ _%self191370%_))
              (if ((force __check-arguments191826)
                   _%self191372%_
                   _%ctx191366%_
                   _%stx191367%_
                   _%args191368%_)
                  (let* ((_%signature191382%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191372%_
                             '2
                             '#f
                             '#f)))
                         (_%signature191384%_ _%signature191382%_)
                         (_%$e191394%_
                          (if _%signature191384%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature191384%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e191394%_
                        ((lambda (_%unchecked191397%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked191397%_))
                               (let ((__tmp192306
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked191397%_
                                                              '()))
                                                  (map (lambda (_%g191398191400%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx191366%_
                                                            _%g191398191400%_)))
                                                       _%args191368%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp192306
                                  _%stx191367%_
                                  _%ctx191366%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx191366%_
                                  _%stx191367%_))))
                         _%$e191394%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx191366%_ _%stx191367%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx191366%_ _%stx191367%_))))))))
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
      (lambda (_%self188358191113%_ _%ctx191115%_ _%stx191116%_ _%args191117%_)
        (let* ((_%self191119%_ _%self188358191113%_)
               (_%self191121%_ _%self191119%_)
               (_%signature191130191132%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191121%_ '2 '#f '#f))))
          (if _%signature191130191132%_
              (let* ((_%signature191135%_ _%signature191130191132%_)
                     (_%argument-types191136191138%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature191135%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types191136191138%_
                    (let* ((_%argument-types191141%_
                            _%argument-types191136191138%_)
                           (_%argument-types191146%_
                            (let ((__tmp192307
                                   (lambda (_%t191144%_)
                                     (if _%t191144%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx191116%_
                                            _%t191144%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp192307
                               _%argument-types191141%_))))
                      (let _%loop191148%_ ((_%rest-args191150%_ _%args191117%_)
                                           (_%rest-types191151%_
                                            _%argument-types191146%_)
                                           (_%result191152%_ '#t))
                        (let* ((_%rest-args191153191161%_ _%rest-args191150%_)
                               (_%else191155191169%_
                                (lambda () _%result191152%_))
                               (_%K191157191230%_
                                (lambda (_%rest-args191172%_ _%arg191173%_)
                                  (let* ((_%rest-types191174191185%_
                                          _%rest-types191151%_)
                                         (_%E191178191189%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types191174191185%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K191181191218%_
                                           (lambda (_%rest-types191215%_
                                                    _%type191216%_)
                                             (_%loop191148%_
                                              _%rest-args191172%_
                                              _%rest-types191215%_
                                              (if (gxc#check-expression-type!
                                                   _%stx191116%_
                                                   _%arg191173%_
                                                   _%type191216%_)
                                                  _%result191152%_
                                                  '#f))))
                                          (_%K191180191209%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx191116%_
                                                _%argument-types191146%_))))
                                          (_%K191179191199%_
                                           (lambda (_%tail-type191193%_)
                                             (if (let ((__tmp192308
                                                        (lambda (_%g191194191196%_)
                                                          (gxc#check-expression-type!
                                                           _%stx191116%_
                                                           _%g191194191196%_
                                                           _%tail-type191193%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp192308
                                                    _%rest-args191172%_))
                                                 _%result191152%_
                                                 '#f))))
                                      (let ((_%try-match191176191212%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types191174191185%_))
                                                   (_%K191180191209%_)
                                                   (let ((_%tail-type191202%_
                                                          _%rest-types191174191185%_))
                                                     (_%K191179191199%_
                                                      _%tail-type191202%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types191174191185%_))
                                            (let ((_%tl191183191223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types191174191185%_)))
                                                  (_%hd191182191221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types191174191185%_))))
                                              (let ((_%type191226%_
                                                     _%hd191182191221%_)
                                                    (_%rest-types191228%_
                                                     _%tl191183191223%_))
                                                (_%K191181191218%_
                                                 _%rest-types191228%_
                                                 _%type191226%_)))
                                            (_%try-match191176191212%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args191153191161%_))
                              (let ((_%hd191158191233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args191153191161%_)))
                                    (_%tl191159191235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args191153191161%_))))
                                (let* ((_%arg191238%_ _%hd191158191233%_)
                                       (_%rest-args191240%_
                                        _%tl191159191235%_))
                                  (_%K191157191230%_
                                   _%rest-args191240%_
                                   _%arg191238%_)))
                              (_%else191155191169%_)))))
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
      (lambda (_%self188359190922%_ _%ctx190924%_ _%stx190925%_ _%args190926%_)
        (let* ((_%self190928%_ _%self188359190922%_)
               (_%self190930%_ _%self190928%_)
               (_%g190940190950%_
                (lambda (_%g190941190947%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190941190947%_))))
               (_%g190939190988%_
                (lambda (_%g190941190953%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190941190953%_))
                      (let ((_%e190943190955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190941190953%_))))
                        (let ((_%hd190944190958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190943190955%_)))
                              (_%tl190945190960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190943190955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190945190960%_))
                              ((lambda (_%L190963%_)
                                 (let* ((_%klass190975%_
                                         (let ((__tmp192309
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self190930%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190925%_
                                            __tmp192309)))
                                        (_%object190977%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx190924%_
                                            _%L190963%_)))
                                        (_%instance?190982%_
                                         (let ((_%$e190979%_
                                                (gxc#expression-type?
                                                 _%object190977%_
                                                 _%klass190975%_)))
                                           (if _%$e190979%_
                                               _%$e190979%_
                                               (gxc#expression-type?
                                                _%L190963%_
                                                _%klass190975%_)))))
                                   (if _%instance?190982%_
                                       (let ((__tmp192310
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190977%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190963%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190977%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192310
                                          _%stx190925%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx190924%_
                                          _%stx190925%_)))))
                               _%hd190944190958%_)
                              (_%g190940190950%_ _%g190941190953%_))))
                      (_%g190940190950%_ _%g190941190953%_)))))
          (_%g190939190988%_ _%args190926%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188360190716%_ _%ctx190718%_ _%stx190719%_ _%args190720%_)
        (let* ((_%self190722%_ _%self188360190716%_)
               (_%self190724%_ _%self190722%_)
               (_%g190734190744%_
                (lambda (_%g190735190741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190735190741%_))))
               (_%g190733190797%_
                (lambda (_%g190735190747%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190735190747%_))
                      (let ((_%e190737190749%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g190735190747%_))))
                        (let ((_%hd190738190752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190737190749%_)))
                              (_%tl190739190754%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190737190749%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190739190754%_))
                              ((lambda (_%L190757%_)
                                 (let* ((_%klass190769%_
                                         (let ((__tmp192311
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self190724%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx190719%_
                                            __tmp192311)))
                                        (_%object190771%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx190718%_
                                            _%L190757%_)))
                                        (_%instance?190776%_
                                         (let ((_%$e190773%_
                                                (gxc#expression-type?
                                                 _%object190771%_
                                                 _%klass190769%_)))
                                           (if _%$e190773%_
                                               _%$e190773%_
                                               (gxc#expression-type?
                                                _%L190757%_
                                                _%klass190769%_))))
                                        (_%klass190779%_ _%klass190769%_))
                                   (if _%instance?190776%_
                                       (let ((__tmp192312
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object190771%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L190757%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object190771%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192312
                                          _%stx190719%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass190779%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp192313
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass190779%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object190771%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192313
                                              _%stx190719%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass190779%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192314
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass190779%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object190771%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192314
                                                  _%stx190719%_))
                                               (let ((__tmp192315
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self190724%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object190771%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192315
                                                  _%stx190719%_)))))))
                               _%hd190738190752%_)
                              (_%g190734190744%_ _%g190735190747%_))))
                      (_%g190734190744%_ _%g190735190747%_)))))
          (_%g190733190797%_ _%args190720%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx190379%_)
        (let* ((_%__stx191968191969%_ _%stx190379%_)
               (_%g190384190425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191968191969%_)))))
          (let ((_%__kont191970191971%_ (lambda () '#t))
                (_%__kont191972191973%_ (lambda () '#t))
                (_%__kont191974191975%_
                 (lambda (_%L190493%_ _%L190494%_)
                   (let ((_%rator-type190515190517%_
                          (let ((__tmp192316
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L190494%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp192316))))
                     (if _%rator-type190515190517%_
                         (let* ((_%rator-type190520%_
                                 _%rator-type190515190517%_)
                                (_%rator-signature190521190523%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type190520%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type190520%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature190521190523%_
                               (let* ((_%rator-signature190526%_
                                       _%rator-signature190521190523%_)
                                      (_%rator-effect190527190529%_
                                       (if _%rator-signature190526%_
                                           (##direct-structure-ref
                                            _%rator-signature190526%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect190527190529%_
                                     (let ((_%rator-effect190532%_
                                            _%rator-effect190527190529%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect190532%_)
                                               (equal? '(alloc)
                                                       _%rator-effect190532%_))
                                           (let ((__tmp192317
                                                  (let ((__tmp192318
                                                         (lambda (_%g190537190540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g190538190542%_)
                   (cons _%g190537190540%_ _%g190538190542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp192318
                                                     '()
                                                     _%L190493%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp192317))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont191978191979%_ (lambda () '#f)))
            (let ((_%__match192057192058%_
                   (lambda (_%e190400190437%_
                            _%hd190401190440%_
                            _%tl190402190442%_
                            _%e190403190445%_
                            _%hd190404190448%_
                            _%tl190405190450%_
                            _%e190406190453%_
                            _%hd190407190456%_
                            _%tl190408190458%_
                            _%e190409190461%_
                            _%hd190410190464%_
                            _%tl190411190466%_
                            _%__splice191976191977%_
                            _%target190412190469%_
                            _%tl190414190471%_)
                     (letrec ((_%loop190415190474%_
                               (lambda (_%hd190413190477%_
                                        _%rand190419190479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd190413190477%_))
                                     (let ((_%e190416190482%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd190413190477%_))))
                                       (let ((_%lp-tl190418190487%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e190416190482%_)))
                                             (_%lp-hd190417190485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e190416190482%_))))
                                         (_%loop190415190474%_
                                          _%lp-tl190418190487%_
                                          (cons _%lp-hd190417190485%_
                                                _%rand190419190479%_))))
                                     (let ((_%rand190420190490%_
                                            (reverse _%rand190419190479%_)))
                                       (_%__kont191974191975%_
                                        _%rand190420190490%_
                                        _%hd190410190464%_))))))
                       (_%loop190415190474%_ _%target190412190469%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191968191969%_))
                  (let ((_%e190386190573%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191968191969%_))))
                    (let ((_%tl190388190578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190386190573%_)))
                          (_%hd190387190576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190386190573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190387190576%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd190387190576%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190388190578%_))
                                  (let ((_%e190389190581%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190388190578%_))))
                                    (let ((_%tl190391190586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190389190581%_)))
                                          (_%hd190390190584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190389190581%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190391190586%_))
                                          (_%__kont191970191971%_)
                                          (_%__kont191978191979%_))))
                                  (_%__kont191978191979%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190387190576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190388190578%_))
                                      (let ((_%e190395190558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190388190578%_))))
                                        (let ((_%tl190397190563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190395190558%_)))
                                              (_%hd190396190561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190395190558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190397190563%_))
                                              (_%__kont191972191973%_)
                                              (_%__kont191978191979%_))))
                                      (_%__kont191978191979%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd190387190576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190388190578%_))
                                          (let ((_%e190403190445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190388190578%_))))
                                            (let ((_%tl190405190450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190403190445%_)))
                                                  (_%hd190404190448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190403190445%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd190404190448%_))
                                                  (let ((_%e190406190453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd190404190448%_))))
                                                    (let ((_%tl190408190458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190406190453%_)))
                                                          (_%hd190407190456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190406190453%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd190407190456%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd190407190456%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190408190458%_))
                          (let ((_%e190409190461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190408190458%_))))
                            (let ((_%tl190411190466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190409190461%_)))
                                  (_%hd190410190464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190409190461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190411190466%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190405190450%_))
                                      (let ((_%__splice191976191977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190405190450%_
                                                '0))))
                                        (let ((_%tl190414190471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191976191977%_
                                                  '1)))
                                              (_%target190412190469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice191976191977%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190414190471%_))
                                              (_%__match192057192058%_
                                               _%e190386190573%_
                                               _%hd190387190576%_
                                               _%tl190388190578%_
                                               _%e190403190445%_
                                               _%hd190404190448%_
                                               _%tl190405190450%_
                                               _%e190406190453%_
                                               _%hd190407190456%_
                                               _%tl190408190458%_
                                               _%e190409190461%_
                                               _%hd190410190464%_
                                               _%tl190411190466%_
                                               _%__splice191976191977%_
                                               _%target190412190469%_
                                               _%tl190414190471%_)
                                              (_%__kont191978191979%_))))
                                      (_%__kont191978191979%_))
                                  (_%__kont191978191979%_))))
                          (_%__kont191978191979%_))
                      (_%__kont191978191979%_))
                  (_%__kont191978191979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont191978191979%_))))
                                          (_%__kont191978191979%_))
                                      (_%__kont191978191979%_))))
                          (_%__kont191978191979%_))))
                  (_%__kont191978191979%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx190374%_ _%klass190375%_)
        (let ((_%expr-type190377%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx190374%_))))
          (if _%expr-type190377%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type190377%_ _%klass190375%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx190352%_ _%expr190353%_ _%type190354%_)
        (if (not _%type190354%_)
            '#f
            (let ((_%$e190357%_
                   (eq? (##structure-ref _%type190354%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e190357%_
                  _%$e190357%_
                  (let ((_%expr-type190361%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr190353%_))))
                    (if (not _%expr-type190361%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type190361%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e190365%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type190361%_
                                      'gxc#!abort::t))))
                              (if _%$e190365%_
                                  _%$e190365%_
                                  (let ((_%$e190368%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type190361%_
                                            _%type190354%_))))
                                    (if _%$e190368%_
                                        _%$e190368%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type190354%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type190354%_
                                                   _%expr-type190361%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx190352%_
                                                   _%expr190353%_
                                                   _%expr-type190361%_
                                                   _%type190354%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self188361190164%_ _%ctx190166%_ _%stx190167%_ _%args190168%_)
        (let* ((_%self190170%_ _%self188361190164%_)
               (_%self190172%_ _%self190170%_)
               (_%klass190182%_
                (let ((__tmp192319
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190172%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx190167%_ __tmp192319)))
               (_%fields190184%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass190182%_
                           '5
                           '#f
                           '#f))))
               (_%args190190%_
                (map (lambda (_%g190185190187%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx190166%_ _%g190185190187%_)))
                     _%args190168%_))
               (_%inline-make-object190192%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self190172%_
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
                           _%self190172%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields190184%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass190195%_ _%klass190182%_)
               (_%$e190209%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass190195%_ '6 '#f '#f))))
          (if _%$e190209%_
              ((lambda (_%ctor190212%_)
                 (let ((_%$obj190214%_
                        (let ((__tmp192320
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp192320)))
                       (_%ctor-impl190215%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass190195%_
                           _%ctor190212%_))))
                   (let ((__tmp192321
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj190214%_ '())
                                                  (cons _%inline-make-object190192%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl190215%_
                                                            (let ((__tmp192322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl190215%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj190214%_ '()))
                                             _%args190190%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp192322
                       _%stx190167%_
                       _%ctx190166%_))
                    (let ((_%$ctor190217%_
                           (let ((__tmp192323
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp192323))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor190217%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self190172%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj190214%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor190212%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor190217%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor190217%_ '()))
                              (cons (cons '%#ref (cons _%$obj190214%_ '()))
                                    _%args190190%_)))
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
                             _%self190172%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor190212%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj190214%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp192321 _%stx190167%_))))
               _%$e190209%_)
              (let ((_%$e190219%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass190195%_
                        '10
                        '#f
                        '#f))))
                (if _%$e190219%_
                    ((lambda (_%metaclass190222%_)
                       (let* ((_%$obj190224%_
                               (let ((__tmp192324
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192324)))
                              (_%metakons190226%_
                               (let ((__tmp192325
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx190167%_
                                         _%metaclass190222%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp192325
                                  'instance-init!)))
                              (__tmp192326
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj190224%_
                                                             '())
                                                       (cons _%inline-make-object190192%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons190226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp192327
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons190226%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self190172%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj190224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args190190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp192327
                            _%stx190167%_
                            _%ctx190166%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self190172%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj190224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args190190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj190224%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp192326 _%stx190167%_)))
                     _%$e190219%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass190195%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp192328
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args190190%_))))
                              (declare (not safe))
                              (##fx= __tmp192328 _%fields190184%_))
                            (let ((__tmp192329
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self190172%_
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
                                              _%self190172%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args190190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp192329
                               _%stx190167%_))
                            (let ((__tmp192331
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self190172%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp192330
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass190195%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx190167%_
                               __tmp192331
                               __tmp192330)))
                        (let ((_%$obj190231%_
                               (let ((__tmp192332
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192332))))
                          (let _%lp190233%_ ((_%rest190235%_ _%args190190%_)
                                             (_%initializers190236%_ '()))
                            (let* ((_%__stx192060192061%_ _%rest190235%_)
                                   (_%g190240190261%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx192060192061%_)))))
                              (let ((_%__kont192062192063%_
                                     (lambda (_%L190315%_
                                              _%L190316%_
                                              _%L190317%_)
                                       (let* ((_%slot190344%_
                                               (let ((__tmp192333
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L190317%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp192333)))
                                              (_%off190346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass190195%_
                                                  _%slot190344%_))))
                                         (if _%off190346%_
                                             (_%lp190233%_
                                              _%L190315%_
                                              (cons (cons _%off190346%_
                                                          _%L190316%_)
                                                    _%initializers190236%_))
                                             (let ((__tmp192334
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self190172%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx190167%_
                                                __tmp192334
                                                _%slot190344%_))))))
                                    (_%__kont192064192065%_
                                     (lambda ()
                                       (let ((__tmp192335
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj190231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object190192%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp192338
                                     (cons (cons '%#ref
                                                 (cons _%$obj190231%_ '()))
                                           '()))
                                    (__tmp192336
                                     (let ((__tmp192337
                                            (lambda (_%i190275%_ _%r190276%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self190172%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i190275%_) '()))
                              (cons (cons '%#ref (cons _%$obj190231%_ '()))
                                    (cons (cdr _%i190275%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r190276%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp192337
                                        '()
                                        _%initializers190236%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp192338 __tmp192336)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192335
                                          _%stx190167%_))))
                                    (_%__kont192066192067%_
                                     (lambda ()
                                       (let ((__tmp192339
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj190231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object190192%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj190231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args190190%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj190231%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192339
                                          _%stx190167%_)))))
                                (let* ((_%g190238190278%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx192060192061%_))
                                              (_%__kont192064192065%_)
                                              (_%__kont192066192067%_))))
                                       (_%__match192097192098%_
                                        (lambda (_%e190245190283%_
                                                 _%hd190246190286%_
                                                 _%tl190247190288%_
                                                 _%e190248190291%_
                                                 _%hd190249190294%_
                                                 _%tl190250190296%_
                                                 _%e190251190299%_
                                                 _%hd190252190302%_
                                                 _%tl190253190304%_
                                                 _%e190254190307%_
                                                 _%hd190255190310%_
                                                 _%tl190256190312%_)
                                          (let ((_%L190315%_
                                                 _%tl190256190312%_)
                                                (_%L190316%_
                                                 _%hd190255190310%_)
                                                (_%L190317%_
                                                 _%hd190252190302%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L190317%_))
                                                (_%__kont192062192063%_
                                                 _%L190315%_
                                                 _%L190316%_
                                                 _%L190317%_)
                                                (_%__kont192066192067%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx192060192061%_))
                                      (let ((_%e190245190283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx192060192061%_))))
                                        (let ((_%tl190247190288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190245190283%_)))
                                              (_%hd190246190286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190245190283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd190246190286%_))
                                              (let ((_%e190248190291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd190246190286%_))))
                                                (let ((_%tl190250190296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190248190291%_)))
                                                      (_%hd190249190294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190248190291%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd190249190294%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd190249190294%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190250190296%_))
                      (let ((_%e190251190299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190250190296%_))))
                        (let ((_%tl190253190304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190251190299%_)))
                              (_%hd190252190302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190251190299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190253190304%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190247190288%_))
                                  (let ((_%e190254190307%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190247190288%_))))
                                    (let ((_%tl190256190312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190254190307%_)))
                                          (_%hd190255190310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190254190307%_))))
                                      (_%__match192097192098%_
                                       _%e190245190283%_
                                       _%hd190246190286%_
                                       _%tl190247190288%_
                                       _%e190248190291%_
                                       _%hd190249190294%_
                                       _%tl190250190296%_
                                       _%e190251190299%_
                                       _%hd190252190302%_
                                       _%tl190253190304%_
                                       _%e190254190307%_
                                       _%hd190255190310%_
                                       _%tl190256190312%_)))
                                  (_%__kont192066192067%_))
                              (_%__kont192066192067%_))))
                      (_%__kont192066192067%_))
                  (_%__kont192066192067%_))
              (_%__kont192066192067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192066192067%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190238190278%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188362189945%_ _%ctx189947%_ _%stx189948%_ _%args189949%_)
        (let* ((_%self189951%_ _%self188362189945%_)
               (_%self189953%_ _%self189951%_)
               (_%arguments-ok?189963%_
                (let ((__method192283
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self189953%_ 'check-arguments))))
                  (if __method192283
                      (let ()
                        (declare (not safe))
                        (__method192283
                         _%self189953%_
                         _%ctx189947%_
                         _%stx189948%_
                         _%args189949%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189953%_
                                 'check-arguments))
                        '#!void))))
               (_%g189965189975%_
                (lambda (_%g189966189972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189966189972%_))))
               (_%g189964190039%_
                (lambda (_%g189966189978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189966189978%_))
                      (let ((_%e189968189980%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189966189978%_))))
                        (let ((_%hd189969189983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189968189980%_)))
                              (_%tl189970189985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189968189980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189970189985%_))
                              ((lambda (_%L189988%_)
                                 (let* ((_%klass190001%_
                                         (let ((__tmp192340
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189953%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx189948%_
                                            __tmp192340)))
                                        (_%field190003%_
                                         (let ((__tmp192341
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self189953%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass190001%_
                                            __tmp192341)))
                                        (_%object190005%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx189947%_
                                            _%L189988%_)))
                                        (_%klass190008%_ _%klass190001%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass190008%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp192342
                                              (cons (if (or _%arguments-ok?189963%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189953%_
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
                                 _%self189953%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field190003%_ '()))
                        (cons _%object190005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp192342
                                          _%stx189948%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass190008%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp192343
                                                  (cons (if (or _%arguments-ok?189963%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189953%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189953%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field190003%_ '()))
                            (cons _%object190005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192343
                                              _%stx189948%_))
                                           (let ((_%$e190027%_
                                                  (let ((__tmp192344
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189953%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass190008%_
                                                     __tmp192344))))
                                             (if _%$e190027%_
                                                 ((lambda (_%klass190030%_)
                                                    (let ((__tmp192345
                                                           (cons (if (or _%arguments-ok?189963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189953%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self189953%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field190003%_ '()))
                                     (cons _%object190005%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp192345 _%stx189948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e190027%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self189953%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp192346
                                                            (let ((_%$obj190036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp192347
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp192347))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj190036%_ '())
                                              (cons _%object190005%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass190008%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj190036%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189953%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field190003%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj190036%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?189963%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj190036%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self189953%_
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
                                                             _%self189953%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj190036%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self189953%_
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
               (gxc#xform-wrap-source __tmp192346 _%stx189948%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp192348
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object190005%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189953%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp192348 _%stx189948%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd189969189983%_)
                              (_%g189965189975%_ _%g189966189978%_))))
                      (_%g189965189975%_ _%g189966189978%_)))))
          (_%g189964190039%_ _%args189949%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass191828 __method-table191829)
        (let ((__check-arguments191830
               (let ((__tmp192349
                      (lambda ()
                        (let ((__method191831
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191829
                                  'check-arguments
                                  '#f))))
                          (if __method191831
                              __method191831
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192349)))
              (__slot191832
               (let ((__slot191833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass191828 'slot))))
                 (if __slot191833
                     __slot191833
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self188362189945%_
                   _%ctx189947%_
                   _%stx189948%_
                   _%args189949%_)
            (let* ((_%self189951%_ _%self188362189945%_)
                   (_%self189953%_ _%self189951%_)
                   (_%arguments-ok?189963%_
                    ((force __check-arguments191830)
                     _%self189953%_
                     _%ctx189947%_
                     _%stx189948%_
                     _%args189949%_))
                   (_%g189965189975%_
                    (lambda (_%g189966189972%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g189966189972%_))))
                   (_%g189964190039%_
                    (lambda (_%g189966189978%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g189966189978%_))
                          (let ((_%e189968189980%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g189966189978%_))))
                            (let ((_%hd189969189983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189968189980%_)))
                                  (_%tl189970189985%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189968189980%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189970189985%_))
                                  ((lambda (_%L189988%_)
                                     (let* ((_%klass190001%_
                                             (let ((__tmp192350
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189953%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx189948%_
                                                __tmp192350)))
                                            (_%field190003%_
                                             (let ((__tmp192351
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self189953%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass190001%_
                                                __tmp192351)))
                                            (_%object190005%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx189947%_
                                                _%L189988%_)))
                                            (_%klass190008%_ _%klass190001%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass190008%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp192352
                                                  (cons (if (or _%arguments-ok?189963%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189953%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189953%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field190003%_ '()))
                            (cons _%object190005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp192352
                                              _%stx189948%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass190008%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192353
                                                      (cons (if (or _%arguments-ok?189963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189953%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189953%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field190003%_ '()))
                                (cons _%object190005%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192353
                                                  _%stx189948%_))
                                               (let ((_%$e190027%_
                                                      (let ((__tmp192354
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self189953%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass190008%_ __tmp192354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e190027%_
                                                     ((lambda (_%klass190030%_)
                                                        (let ((__tmp192355
                                                               (cons (if (or _%arguments-ok?189963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189953%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self189953%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field190003%_ '()))
                                         (cons _%object190005%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp192355 _%stx189948%_)))
              _%$e190027%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self189953%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp192356
                                                                (let ((_%$obj190036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp192357
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp192357))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj190036%_ '())
                                                  (cons _%object190005%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass190008%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj190036%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189953%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field190003%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj190036%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?189963%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj190036%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self189953%_
                               __slot191832
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
                        (##unchecked-structure-ref _%self189953%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj190036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self189953%_
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
                   (gxc#xform-wrap-source __tmp192356 _%stx189948%_))
                 (let ((__tmp192358
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object190005%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189953%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp192358 _%stx189948%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd189969189983%_)
                                  (_%g189965189975%_ _%g189966189978%_))))
                          (_%g189965189975%_ _%g189966189978%_)))))
              (_%g189964190039%_ _%args189949%_))))))
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
      (lambda (_%self188363189707%_ _%ctx189709%_ _%stx189710%_ _%args189711%_)
        (let* ((_%self189713%_ _%self188363189707%_)
               (_%self189715%_ _%self189713%_)
               (_%arguments-ok?189725%_
                (let ((__method192284
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self189715%_ 'check-arguments))))
                  (if __method192284
                      (let ()
                        (declare (not safe))
                        (__method192284
                         _%self189715%_
                         _%ctx189709%_
                         _%stx189710%_
                         _%args189711%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self189715%_
                                 'check-arguments))
                        '#!void))))
               (_%g189727189741%_
                (lambda (_%g189728189738%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189728189738%_))))
               (_%g189726189820%_
                (lambda (_%g189728189744%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189728189744%_))
                      (let ((_%e189731189746%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g189728189744%_))))
                        (let ((_%hd189732189749%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189731189746%_)))
                              (_%tl189733189751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189731189746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189733189751%_))
                              (let ((_%e189734189754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl189733189751%_))))
                                (let ((_%hd189735189757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189734189754%_)))
                                      (_%tl189736189759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189734189754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl189736189759%_))
                                      ((lambda (_%L189762%_ _%L189763%_)
                                         (let* ((_%klass189779%_
                                                 (let ((__tmp192359
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189715%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx189710%_
                                                    __tmp192359)))
                                                (_%field189781%_
                                                 (let ((__tmp192360
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189715%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass189779%_
                                                    __tmp192360)))
                                                (_%object189783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx189709%_
                                                    _%L189763%_)))
                                                (_%value189785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx189709%_
                                                    _%L189762%_)))
                                                (_%klass189788%_
                                                 _%klass189779%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass189788%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp192361
                                                      (cons (if (or _%arguments-ok?189725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self189715%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189715%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field189781%_ '()))
                                (cons _%object189783%_
                                      (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp192361
                                                  _%stx189710%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189788%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp192362
                                                          (cons (if (or _%arguments-ok?189725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self189715%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189715%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189781%_ '()))
                                    (cons _%object189783%_
                                          (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp192362
                                                      _%stx189710%_))
                                                   (let ((_%$e189808%_
                                                          (let ((__tmp192363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189715%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass189788%_
                     __tmp192363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e189808%_
                                                         ((lambda (_%klass189811%_)
                                                            (let ((__tmp192364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?189725%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189715%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self189715%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field189781%_ '()))
                                             (cons _%object189783%_
                                                   (cons _%value189785%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp192364 _%stx189710%_)))
                  _%$e189808%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self189715%_ '4 '#f '#f))
                     (let ((__tmp192365
                            (let ((_%$obj189817%_
                                   (let ((__tmp192366
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp192366))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189817%_ '())
                                                      (cons _%object189783%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass189788%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj189817%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189715%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field189781%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj189817%_
                                                              '()))
                                                  (cons _%value189785%_
                                                        '())))))
                          (cons (if _%arguments-ok?189725%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189715%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value189785%_ '())))))
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
                             _%self189715%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj189817%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self189715%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp192365 _%stx189710%_))
                     (let ((__tmp192367
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object189783%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self189715%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value189785%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp192367
                        _%stx189710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd189735189757%_
                                       _%hd189732189749%_)
                                      (_%g189727189741%_ _%g189728189744%_))))
                              (_%g189727189741%_ _%g189728189744%_))))
                      (_%g189727189741%_ _%g189728189744%_)))))
          (_%g189726189820%_ _%args189711%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass191834 __method-table191835)
        (let ((__check-arguments191836
               (let ((__tmp192368
                      (lambda ()
                        (let ((__method191837
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table191835
                                  'check-arguments
                                  '#f))))
                          (if __method191837
                              __method191837
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp192368))))
          (lambda (_%self188363189707%_
                   _%ctx189709%_
                   _%stx189710%_
                   _%args189711%_)
            (let* ((_%self189713%_ _%self188363189707%_)
                   (_%self189715%_ _%self189713%_)
                   (_%arguments-ok?189725%_
                    ((force __check-arguments191836)
                     _%self189715%_
                     _%ctx189709%_
                     _%stx189710%_
                     _%args189711%_))
                   (_%g189727189741%_
                    (lambda (_%g189728189738%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g189728189738%_))))
                   (_%g189726189820%_
                    (lambda (_%g189728189744%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g189728189744%_))
                          (let ((_%e189731189746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g189728189744%_))))
                            (let ((_%hd189732189749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189731189746%_)))
                                  (_%tl189733189751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189731189746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189733189751%_))
                                  (let ((_%e189734189754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189733189751%_))))
                                    (let ((_%hd189735189757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189734189754%_)))
                                          (_%tl189736189759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189734189754%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189736189759%_))
                                          ((lambda (_%L189762%_ _%L189763%_)
                                             (let* ((_%klass189779%_
                                                     (let ((__tmp192369
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189715%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx189710%_
                                                        __tmp192369)))
                                                    (_%field189781%_
                                                     (let ((__tmp192370
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self189715%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass189779%_
                                                        __tmp192370)))
                                                    (_%object189783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189709%_
                                                        _%L189763%_)))
                                                    (_%value189785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx189709%_
                                                        _%L189762%_)))
                                                    (_%klass189788%_
                                                     _%klass189779%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass189788%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp192371
                                                          (cons (if (or _%arguments-ok?189725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self189715%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189715%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field189781%_ '()))
                                    (cons _%object189783%_
                                          (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp192371
                                                      _%stx189710%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass189788%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp192372
                                                              (cons (if (or _%arguments-ok?189725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189715%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189715%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field189781%_ '()))
                                        (cons _%object189783%_
                                              (cons _%value189785%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp192372 _%stx189710%_))
               (let ((_%$e189808%_
                      (let ((__tmp192373
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self189715%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass189788%_
                         __tmp192373))))
                 (if _%$e189808%_
                     ((lambda (_%klass189811%_)
                        (let ((__tmp192374
                               (cons (if (or _%arguments-ok?189725%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189715%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self189715%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field189781%_
                                                             '()))
                                                 (cons _%object189783%_
                                                       (cons _%value189785%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp192374 _%stx189710%_)))
                      _%$e189808%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189715%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp192375
                                (let ((_%$obj189817%_
                                       (let ((__tmp192376
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp192376))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj189817%_
                                                                '())
                                                          (cons _%object189783%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass189788%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189817%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self189715%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field189781%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj189817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value189785%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?189725%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self189715%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value189785%_ '())))))
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
                                 _%self189715%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj189817%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189715%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp192375 _%stx189710%_))
                         (let ((__tmp192377
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object189783%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self189715%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value189785%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp192377
                            _%stx189710%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd189735189757%_
                                           _%hd189732189749%_)
                                          (_%g189727189741%_
                                           _%g189728189744%_))))
                                  (_%g189727189741%_ _%g189728189744%_))))
                          (_%g189727189741%_ _%g189728189744%_)))))
              (_%g189726189820%_ _%args189711%_))))))
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
      (lambda (_%self188364189520%_ _%ctx189522%_ _%stx189523%_ _%args189524%_)
        (let* ((_%self189526%_ _%self188364189520%_)
               (_%self189528%_ _%self189526%_)
               (_%self189537189547%_ _%self189528%_)
               (_%E189539189551%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self189537189547%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K189540189561%_
                (lambda (_%inline189554%_ _%dispatch189555%_ _%arity189556%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self189528%_
                         _%args189524%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx189523%_
                         _%arity189556%_)))
                  (if _%inline189554%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp192378 (_%inline189554%_ _%stx189523%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp192378
                           _%stx189523%_
                           _%ctx189522%_)))
                      (if (and _%dispatch189555%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch189555%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch189555%_))
                            (let ((__tmp192379
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch189555%_
                                                           '()))
                                               _%args189524%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp192379
                               _%stx189523%_
                               _%ctx189522%_)))
                          (gxc#!procedure::optimize-call
                           _%self189528%_
                           _%ctx189522%_
                           _%stx189523%_
                           _%args189524%_))))))
          (if '#t
              (let* ((_%e189541189564%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189537189547%_
                         '1
                         '#f
                         '#f)))
                     (_%e189542189567%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189537189547%_
                         '2
                         '#f
                         '#f)))
                     (_%e189543189570%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189537189547%_
                         '3
                         '#f
                         '#f)))
                     (_%arity189573%_ _%e189543189570%_)
                     (_%e189544189575%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189537189547%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch189578%_ _%e189544189575%_)
                     (_%e189545189580%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189537189547%_
                         '5
                         '#f
                         '#f)))
                     (_%inline189583%_ _%e189545189580%_))
                (_%K189540189561%_
                 _%inline189583%_
                 _%dispatch189578%_
                 _%arity189573%_))
              (_%E189539189551%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188365189370%_ _%ctx189372%_ _%stx189373%_ _%args189374%_)
        (let* ((_%self189376%_ _%self188365189370%_)
               (_%self189378%_ _%self189376%_)
               (_%$e189392%_
                (let ((__tmp192381
                       (lambda (_%g189387189389%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g189387189389%_
                            _%args189374%_))))
                      (__tmp192380
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self189378%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp192381 __tmp192380))))
          (if _%$e189392%_
              ((lambda (_%clause189395%_)
                 (let ((__method192285
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause189395%_ 'optimize-call))))
                   (if __method192285
                       (let ()
                         (declare (not safe))
                         (__method192285
                          _%clause189395%_
                          _%ctx189372%_
                          _%stx189373%_
                          _%args189374%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause189395%_
                                  'optimize-call))
                         '#!void))))
               _%$e189392%_)
              (let ((__tmp192382
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189378%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx189373%_
                 __tmp192382))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self188366189108%_ _%ctx189110%_ _%stx189111%_ _%args189112%_)
        (let* ((_%self189114%_ _%self188366189108%_)
               (_%self189116%_ _%self189114%_)
               (_%self189125189134%_ _%self189116%_)
               (_%E189127189138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self189125189134%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K189128189229%_
                (lambda (_%dispatch189141%_ _%table189142%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch189141%_))
                      (let* ((_%g189143189153%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch189141%_)))
                             (_%else189145189161%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch189141%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx189110%_
                                   _%stx189111%_))))
                             (_%K189147189210%_
                              (lambda (_%main189164%_ _%keys189165%_)
                                (let ((_g192383_
                                       (gxc#!kw-lambda-split-args
                                        _%stx189111%_
                                        _%args189112%_)))
                                  (begin
                                    (let ((_g192384_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192383_)
                                                 (##vector-length _g192383_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192384_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192384_)))
                                    (let ((_%pargs189167%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192383_ 0)))
                                          (_%kwargs189168%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192383_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main189164%_))
                                        (if _%table189142%_
                                            (let ((_%xargs189176%_
                                                   (map (lambda (_%key189170%_)
                                                          (let ((_%$e189172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key189170%_ _%kwargs189168%_))))
                    (if _%$e189172%_ _%$e189172%_ '(%#ref absent-value))))
                _%keys189165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw189178%_)
                                                 (if (memq (car _%kw189178%_)
                                                           _%keys189165%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx189111%_
                                                        _%keys189165%_
                                                        _%kw189178%_))))
                                               _%kwargs189168%_)
                                              (let ((__tmp192385
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main189164%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs189167%_
                                  _%xargs189176%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp192385
                                                 _%stx189111%_
                                                 _%ctx189110%_)))
                                            (let* ((_%kwt189180%_
                                                    (let ((__tmp192386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp192386)))
                                                   (_%kwvars189184%_
                                                    (map (lambda (_%_189182%_)
                                                           (let ((__tmp192387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp192387)))
                 _%kwargs189168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind189189%_
                                                    (map (lambda (_%kw189186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189187%_)
                   (cons (cons _%kwvar189187%_ '())
                         (cons (cdr _%kw189186%_) '())))
                 _%kwargs189168%_
                 _%kwvars189184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset189194%_
                                                    (map (lambda (_%kw189191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189192%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt189180%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw189191%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar189192%_
                                                             '()))
                                                 '()))))))
                 _%kwargs189168%_
                 _%kwvars189184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs189199%_
                                                    (map (lambda (_%kw189196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar189197%_)
                   (cons (car _%kw189196%_)
                         (cons '%#ref (cons _%kwvar189197%_ '()))))
                 _%kwargs189168%_
                 _%kwvars189184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs189207%_
                                                    (map (lambda (_%key189201%_)
                                                           (let ((_%$e189203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key189201%_ _%xkwargs189199%_))))
                     (if _%$e189203%_ _%$e189203%_ '(%#ref absent-value))))
                 _%keys189165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192388
                                                    (cons '%#let-values
                                                          (cons _%kwbind189189%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt189180%_ '())
                                                      (cons (let ((__tmp192389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs189168%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp192389 _%stx189111%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp192390
                                                             (cons (let ((__tmp192391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main189164%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt189180%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs189167%_
                                                       _%xargs189207%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp192391 _%stx189111%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp192390 _%kwset189194%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp192388
                                               _%stx189111%_
                                               _%ctx189110%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g189143189153%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e189148189213%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189143189153%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e189149189216%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189143189153%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e189150189219%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189143189153%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys189222%_ _%e189150189219%_)
                                   (_%e189151189224%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g189143189153%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main189227%_ _%e189151189224%_))
                              (_%K189147189210%_
                               _%main189227%_
                               _%keys189222%_))
                            (_%else189145189161%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx189110%_ _%stx189111%_))))))
          (if '#t
              (let* ((_%e189129189232%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189125189134%_
                         '1
                         '#f
                         '#f)))
                     (_%e189130189235%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189125189134%_
                         '2
                         '#f
                         '#f)))
                     (_%e189131189238%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189125189134%_
                         '3
                         '#f
                         '#f)))
                     (_%table189241%_ _%e189131189238%_)
                     (_%e189132189243%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self189125189134%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch189246%_ _%e189132189243%_))
                (_%K189128189229%_ _%dispatch189246%_ _%table189241%_))
              (_%E189127189138%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx188721%_ _%args188722%_)
        (let _%lp188724%_ ((_%rest188726%_ _%args188722%_)
                           (_%pargs188727%_ '())
                           (_%kwargs188728%_ '()))
          (let* ((_%__stx192102192103%_ _%rest188726%_)
                 (_%g188734188786%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192102192103%_)))))
            (let ((_%__kont192104192105%_
                   (lambda (_%L188965%_ _%L188966%_)
                     (_%lp188724%_
                      _%L188965%_
                      (cons _%L188966%_ _%pargs188727%_)
                      _%kwargs188728%_)))
                  (_%__kont192106192107%_
                   (lambda (_%L188911%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L188911%_ _%pargs188727%_))
                             (reverse _%kwargs188728%_))))
                  (_%__kont192108192109%_
                   (lambda (_%L188858%_ _%L188859%_ _%L188860%_)
                     (let ((_%kw188877%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L188860%_))))
                       (if (assq _%kw188877%_ _%kwargs188728%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx188721%_
                              _%kw188877%_))
                           (_%lp188724%_
                            _%L188858%_
                            _%pargs188727%_
                            (cons (cons _%kw188877%_ _%L188859%_)
                                  _%kwargs188728%_))))))
                  (_%__kont192110192111%_
                   (lambda (_%L188806%_ _%L188807%_)
                     (_%lp188724%_
                      _%L188806%_
                      (cons _%L188807%_ _%pargs188727%_)
                      _%kwargs188728%_)))
                  (_%__kont192112192113%_
                   (lambda ()
                     (values (reverse _%pargs188727%_)
                             (reverse _%kwargs188728%_)))))
              (let ((_%__match192209192210%_
                     (lambda (_%e188765188826%_
                              _%hd188766188829%_
                              _%tl188767188831%_
                              _%e188768188834%_
                              _%hd188769188837%_
                              _%tl188770188839%_
                              _%e188771188842%_
                              _%hd188772188845%_
                              _%tl188773188847%_
                              _%e188774188850%_
                              _%hd188775188853%_
                              _%tl188776188855%_)
                       (let ((_%L188858%_ _%tl188776188855%_)
                             (_%L188859%_ _%hd188775188853%_)
                             (_%L188860%_ _%hd188772188845%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L188860%_))
                             (_%__kont192108192109%_
                              _%L188858%_
                              _%L188859%_
                              _%L188860%_)
                             (_%__kont192110192111%_
                              _%tl188767188831%_
                              _%hd188766188829%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192102192103%_))
                    (let ((_%e188738188930%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192102192103%_))))
                      (let ((_%tl188740188935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188738188930%_)))
                            (_%hd188739188933%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188738188930%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd188739188933%_))
                            (let ((_%e188741188938%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd188739188933%_))))
                              (let ((_%tl188743188943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188741188938%_)))
                                    (_%hd188742188941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188741188938%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd188742188941%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd188742188941%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl188743188943%_))
                                            (let ((_%e188744188946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl188743188943%_))))
                                              (let ((_%tl188746188951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e188744188946%_)))
                                                    (_%hd188745188949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e188744188946%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd188745188949%_))
                                                    (let ((_%e188747188954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd188745188949%_))))
                                                      (if (equal? _%e188747188954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188746188951%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188740188935%_))
                          (let ((_%e188748188957%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188740188935%_))))
                            (let ((_%tl188750188962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188748188957%_)))
                                  (_%hd188749188960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188748188957%_))))
                              (_%__kont192104192105%_
                               _%tl188750188962%_
                               _%hd188749188960%_)))
                          (_%__kont192110192111%_
                           _%tl188740188935%_
                           _%hd188739188933%_))
                      (_%__kont192110192111%_
                       _%tl188740188935%_
                       _%hd188739188933%_))
                  (if (equal? _%e188747188954%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188746188951%_))
                          (_%__kont192106192107%_ _%tl188740188935%_)
                          (_%__kont192110192111%_
                           _%tl188740188935%_
                           _%hd188739188933%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl188746188951%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl188740188935%_))
                              (let ((_%e188774188850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl188740188935%_))))
                                (let ((_%tl188776188855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e188774188850%_)))
                                      (_%hd188775188853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e188774188850%_))))
                                  (_%__match192209192210%_
                                   _%e188738188930%_
                                   _%hd188739188933%_
                                   _%tl188740188935%_
                                   _%e188741188938%_
                                   _%hd188742188941%_
                                   _%tl188743188943%_
                                   _%e188744188946%_
                                   _%hd188745188949%_
                                   _%tl188746188951%_
                                   _%e188774188850%_
                                   _%hd188775188853%_
                                   _%tl188776188855%_)))
                              (_%__kont192110192111%_
                               _%tl188740188935%_
                               _%hd188739188933%_))
                          (_%__kont192110192111%_
                           _%tl188740188935%_
                           _%hd188739188933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl188746188951%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl188740188935%_))
                                                            (let ((_%e188774188850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl188740188935%_))))
                      (let ((_%tl188776188855%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e188774188850%_)))
                            (_%hd188775188853%_
                             (let ()
                               (declare (not safe))
                               (##car _%e188774188850%_))))
                        (_%__match192209192210%_
                         _%e188738188930%_
                         _%hd188739188933%_
                         _%tl188740188935%_
                         _%e188741188938%_
                         _%hd188742188941%_
                         _%tl188743188943%_
                         _%e188744188946%_
                         _%hd188745188949%_
                         _%tl188746188951%_
                         _%e188774188850%_
                         _%hd188775188853%_
                         _%tl188776188855%_)))
                    (_%__kont192110192111%_
                     _%tl188740188935%_
                     _%hd188739188933%_))
                (_%__kont192110192111%_
                 _%tl188740188935%_
                 _%hd188739188933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont192110192111%_
                                             _%tl188740188935%_
                                             _%hd188739188933%_))
                                        (_%__kont192110192111%_
                                         _%tl188740188935%_
                                         _%hd188739188933%_))
                                    (_%__kont192110192111%_
                                     _%tl188740188935%_
                                     _%hd188739188933%_))))
                            (_%__kont192110192111%_
                             _%tl188740188935%_
                             _%hd188739188933%_))))
                    (_%__kont192112192113%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self188367188703%_ _%ctx188705%_ _%stx188706%_ _%args188707%_)
        (let* ((_%self188709%_ _%self188367188703%_)
               (_%self188711%_ _%self188709%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx188705%_ _%stx188706%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self188391%_ _%stx188392%_)
        (let* ((_%__stx192218192219%_ _%stx188392%_)
               (_%g188395188435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192218192219%_)))))
          (let ((_%__kont192220192221%_
                 (lambda (_%L188541%_ _%L188542%_)
                   (let ((_%$e188569%_
                          (member 'return:
                                  (let ((__tmp192392
                                         (lambda (_%g188561188564%_
                                                  _%g188562188566%_)
                                           (cons _%g188561188564%_
                                                 _%g188562188566%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp192392 '() _%L188542%_))
                                  gx#stx-eq?)))
                     (if _%$e188569%_
                         ((lambda (_%tail188572%_)
                            (let ((_%type188574%_
                                   (let ((__tmp192393
                                          (let ((__tmp192394
                                                 (cadr _%tail188572%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp192394))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx188392%_
                                      __tmp192393))))
                              (gxc#check-return-type!
                               _%stx188392%_
                               _%L188541%_
                               _%type188574%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self188391%_
                                 _%L188541%_))))
                          _%$e188569%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self188391%_ _%L188541%_))))))
                (_%__kont192224192225%_
                 (lambda (_%L188464%_ _%L188465%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self188391%_ _%L188464%_)))))
            (let ((_%__match192255192256%_
                   (lambda (_%e188399188485%_
                            _%hd188400188488%_
                            _%tl188401188490%_
                            _%e188402188493%_
                            _%hd188403188496%_
                            _%tl188404188498%_
                            _%e188405188501%_
                            _%hd188406188504%_
                            _%tl188407188506%_
                            _%__splice192222192223%_
                            _%target188408188509%_
                            _%tl188410188511%_)
                     (letrec ((_%loop188411188514%_
                               (lambda (_%hd188409188517%_
                                        _%signature188415188519%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188409188517%_))
                                     (let ((_%e188412188522%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188409188517%_))))
                                       (let ((_%lp-tl188414188527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188412188522%_)))
                                             (_%lp-hd188413188525%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188412188522%_))))
                                         (_%loop188411188514%_
                                          _%lp-tl188414188527%_
                                          (cons _%lp-hd188413188525%_
                                                _%signature188415188519%_))))
                                     (let ((_%signature188416188530%_
                                            (reverse _%signature188415188519%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl188404188498%_))
                                           (let ((_%e188417188533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl188404188498%_))))
                                             (let ((_%tl188419188538%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e188417188533%_)))
                                                   (_%hd188418188536%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e188417188533%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl188419188538%_))
                                                   (_%__kont192220192221%_
                                                    _%hd188418188536%_
                                                    _%signature188416188530%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g188395188435%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g188395188435%_))))))))
                       (_%loop188411188514%_ _%target188408188509%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192218192219%_))
                  (let ((_%e188399188485%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192218192219%_))))
                    (let ((_%tl188401188490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188399188485%_)))
                          (_%hd188400188488%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188399188485%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188401188490%_))
                          (let ((_%e188402188493%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188401188490%_))))
                            (let ((_%tl188404188498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188402188493%_)))
                                  (_%hd188403188496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188402188493%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188403188496%_))
                                  (let ((_%e188405188501%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188403188496%_))))
                                    (let ((_%tl188407188506%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188405188501%_)))
                                          (_%hd188406188504%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188405188501%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188406188504%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd188406188504%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188407188506%_))
                                                  (let ((_%__splice192222192223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188407188506%_
                                                            '0))))
                                                    (let ((_%tl188410188511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice192222192223%_
                                                              '1)))
                                                          (_%target188408188509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice192222192223%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188410188511%_))
                                                          (_%__match192255192256%_
                                                           _%e188399188485%_
                                                           _%hd188400188488%_
                                                           _%tl188401188490%_
                                                           _%e188402188493%_
                                                           _%hd188403188496%_
                                                           _%tl188404188498%_
                                                           _%e188405188501%_
                                                           _%hd188406188504%_
                                                           _%tl188407188506%_
                                                           _%__splice192222192223%_
                                                           _%target188408188509%_
                                                           _%tl188410188511%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl188404188498%_))
                      (let ((_%e188428188456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl188404188498%_))))
                        (let ((_%tl188430188461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e188428188456%_)))
                              (_%hd188429188459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e188428188456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188430188461%_))
                              (_%__kont192224192225%_
                               _%hd188429188459%_
                               _%hd188403188496%_)
                              (let ()
                                (declare (not safe))
                                (_%g188395188435%_)))))
                      (let () (declare (not safe)) (_%g188395188435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl188404188498%_))
                                                      (let ((_%e188428188456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl188404188498%_))))
                (let ((_%tl188430188461%_
                       (let () (declare (not safe)) (##cdr _%e188428188456%_)))
                      (_%hd188429188459%_
                       (let ()
                         (declare (not safe))
                         (##car _%e188428188456%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188430188461%_))
                      (_%__kont192224192225%_
                       _%hd188429188459%_
                       _%hd188403188496%_)
                      (let () (declare (not safe)) (_%g188395188435%_)))))
              (let () (declare (not safe)) (_%g188395188435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188404188498%_))
                                                  (let ((_%e188428188456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188404188498%_))))
                                                    (let ((_%tl188430188461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188428188456%_)))
                                                          (_%hd188429188459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188428188456%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188430188461%_))
                                                          (_%__kont192224192225%_
                                                           _%hd188429188459%_
                                                           _%hd188403188496%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188395188435%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188395188435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl188404188498%_))
                                              (let ((_%e188428188456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl188404188498%_))))
                                                (let ((_%tl188430188461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e188428188456%_)))
                                                      (_%hd188429188459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e188428188456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188430188461%_))
                                                      (_%__kont192224192225%_
                                                       _%hd188429188459%_
                                                       _%hd188403188496%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188395188435%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188395188435%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188404188498%_))
                                      (let ((_%e188428188456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188404188498%_))))
                                        (let ((_%tl188430188461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188428188456%_)))
                                              (_%hd188429188459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188428188456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188430188461%_))
                                              (_%__kont192224192225%_
                                               _%hd188429188459%_
                                               _%hd188403188496%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188395188435%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188395188435%_))))))
                          (let () (declare (not safe)) (_%g188395188435%_)))))
                  (let () (declare (not safe)) (_%g188395188435%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx188369%_ _%expr188370%_ _%type188371%_)
        (let ((_%$e188373%_ (not _%type188371%_)))
          (if _%$e188373%_
              _%$e188373%_
              (let ((_%$e188376%_
                     (eq? (##structure-ref _%type188371%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e188376%_
                    _%$e188376%_
                    (let ((_%expr-type188380%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr188370%_))))
                      (if (not _%expr-type188380%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx188369%_
                             _%type188371%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type188380%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx188369%_
                                 _%type188371%_
                                 _%expr-type188380%_))
                              (let ((_%$e188384%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type188380%_
                                        'gxc#!abort::t))))
                                (if _%$e188384%_
                                    _%$e188384%_
                                    (let ((_%$e188387%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type188380%_
                                              _%type188371%_))))
                                      (if _%$e188387%_
                                          _%$e188387%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx188369%_
                                             _%type188371%_
                                             _%expr-type188380%_)))))))))))))))))
