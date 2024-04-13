(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712997793)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195396 (list gxc#::basic-xform::t))
            (__tmp195395 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195396
         '()
         __tmp195395
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args194673%_
        (apply make-instance gxc#::optimize-call::t _%$args194673%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195397
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
        (__make-promise __tmp195397)))
    (define gxc#apply-optimize-call
      (lambda (_%stx194665%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self194668%_
                (let ((__obj195387
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195387))
               (__tmp195398
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194668%_ _%stx194665%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195398
           gxc#current-compile-method
           _%self194668%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195400 (list gxc#::void::t))
            (__tmp195399 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195400
         '()
         __tmp195399
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args194662%_
        (apply make-instance gxc#::check-return-type::t _%$args194662%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195401
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
        (__make-promise __tmp195401)))
    (define gxc#apply-check-return-type
      (lambda (_%stx194654%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self194657%_
                (let ((__obj195389
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195389))
               (__tmp195402
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194657%_ _%stx194654%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195402
           gxc#current-compile-method
           _%self194657%_))))
    (define gxc#optimize-call%
      (lambda (_%self194255%_ _%stx194256%_)
        (let* ((_%__stx194742194743%_ _%stx194256%_)
               (_%g194259194305%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194742194743%_)))))
          (let ((_%__kont194744194745%_
                 (lambda (_%L194448%_ _%L194449%_)
                   (let* ((_%rator-id194469%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194449%_)))
                          (_%rator-type194471%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194469%_))))
                     (if (or (not _%rator-type194471%_)
                             (eq? (##structure-ref
                                   _%rator-type194471%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194255%_ _%stx194256%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194471%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195403
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194471%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194469%_
                                  '" => "
                                  _%rator-type194471%_
                                  '" "
                                  __tmp195403))
                               (let* ((_%optimized194486%_
                                       (let ((__method195390
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194471%_
                                                 'optimize-call))))
                                         (if __method195390
                                             (let ((__tmp195404
                                                    (let ((__tmp195405
                                                           (lambda (_%g194478194481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194479194483%_)
                     (cons _%g194478194481%_ _%g194479194483%_))))
              (declare (not safe))
              (__foldr1 __tmp195405 '() _%L194448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195390
                                                _%rator-type194471%_
                                                _%self194255%_
                                                _%stx194256%_
                                                __tmp195404))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194471%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx194690194691%_
                                       _%optimized194486%_)
                                      (_%g194489194518%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx194690194691%_)))))
                                 (let ((_%__kont194692194693%_
                                        (lambda (_%L194586%_ _%L194587%_)
                                          (let* ((_%optimized-rator-id194614%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194587%_)))
                                                 (_%rator-type194619%_
                                                  (let ((_%$e194616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id194614%_))))
                                                    (if _%$e194616%_
                                                        _%$e194616%_
                                                        _%rator-type194471%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type194619%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id194614%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type194619%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type194619%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194486%_
                                                (let ((__tmp195406
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194587%_ '()))
                           (let ((__tmp195407
                                  (lambda (_%g194627194630%_ _%g194628194632%_)
                                    (cons _%g194627194630%_
                                          _%g194628194632%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195407 '() _%L194586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195406
                                                   _%stx194256%_))))))
                                       (_%__kont194696194697%_
                                        (lambda () _%optimized194486%_)))
                                   (let ((_%__match194739194740%_
                                          (lambda (_%e194493194530%_
                                                   _%hd194494194533%_
                                                   _%tl194495194535%_
                                                   _%e194496194538%_
                                                   _%hd194497194541%_
                                                   _%tl194498194543%_
                                                   _%e194499194546%_
                                                   _%hd194500194549%_
                                                   _%tl194501194551%_
                                                   _%e194502194554%_
                                                   _%hd194503194557%_
                                                   _%tl194504194559%_
                                                   _%__splice194694194695%_
                                                   _%target194505194562%_
                                                   _%tl194507194564%_)
                                            (letrec ((_%loop194508194567%_
                                                      (lambda (_%hd194506194570%_
                                                               _%arg194512194572%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194506194570%_))
                                                            (let ((_%e194509194575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194506194570%_))))
                      (let ((_%lp-tl194511194580%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194509194575%_)))
                            (_%lp-hd194510194578%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194509194575%_))))
                        (_%loop194508194567%_
                         _%lp-tl194511194580%_
                         (cons _%lp-hd194510194578%_ _%arg194512194572%_))))
                    (let ((_%arg194513194583%_ (reverse _%arg194512194572%_)))
                      (_%__kont194692194693%_
                       _%arg194513194583%_
                       _%hd194503194557%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194508194567%_
                                               _%target194505194562%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx194690194691%_))
                                         (let ((_%e194493194530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx194690194691%_))))
                                           (let ((_%tl194495194535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194493194530%_)))
                                                 (_%hd194494194533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194493194530%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194494194533%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194494194533%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194495194535%_))
                                                         (let ((_%e194496194538%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194495194535%_))))
                   (let ((_%tl194498194543%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194496194538%_)))
                         (_%hd194497194541%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194496194538%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194497194541%_))
                         (let ((_%e194499194546%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194497194541%_))))
                           (let ((_%tl194501194551%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194499194546%_)))
                                 (_%hd194500194549%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194499194546%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194500194549%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194500194549%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194501194551%_))
                                         (let ((_%e194502194554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194501194551%_))))
                                           (let ((_%tl194504194559%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194502194554%_)))
                                                 (_%hd194503194557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194502194554%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194504194559%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194498194543%_))
                                                     (let ((_%__splice194694194695%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194498194543%_
                                                               '0))))
                                                       (let ((_%tl194507194564%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice194694194695%_ '1)))
                     (_%target194505194562%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice194694194695%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194507194564%_))
                     (_%__match194739194740%_
                      _%e194493194530%_
                      _%hd194494194533%_
                      _%tl194495194535%_
                      _%e194496194538%_
                      _%hd194497194541%_
                      _%tl194498194543%_
                      _%e194499194546%_
                      _%hd194500194549%_
                      _%tl194501194551%_
                      _%e194502194554%_
                      _%hd194503194557%_
                      _%tl194504194559%_
                      _%__splice194694194695%_
                      _%target194505194562%_
                      _%tl194507194564%_)
                     (_%__kont194696194697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194696194697%_))
                                                 (_%__kont194696194697%_))))
                                         (_%__kont194696194697%_))
                                     (_%__kont194696194697%_))
                                 (_%__kont194696194697%_))))
                         (_%__kont194696194697%_))))
                 (_%__kont194696194697%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont194696194697%_))
                                                 (_%__kont194696194697%_))))
                                         (_%__kont194696194697%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194471%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194471%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195408
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194449%_
                                                                '()))
                                                    (map (lambda (_%g194638194640%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194255%_
                                                              _%g194638194640%_)))
                                                         (let ((__tmp195409
                                                                (lambda (_%g194642194645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g194643194647%_)
                          (cons _%g194642194645%_ _%g194643194647%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195409 '() _%L194448%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195408
                                    _%stx194256%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194256%_
                                    _%rator-type194471%_))))))))
                (_%__kont194748194749%_
                 (lambda (_%L194350%_ _%L194351%_)
                   (let ((_%rator-type194368%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194351%_))))
                     (if (and _%rator-type194368%_
                              (eq? (##structure-ref
                                    _%rator-type194368%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194368%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194368%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194368%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195410
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194255%_
                                               _%L194351%_))
                                            (map (lambda (_%g194370194372%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194255%_
                                                      _%g194370194372%_)))
                                                 (let ((__tmp195411
                                                        (lambda (_%g194374194377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194375194379%_)
                  (cons _%g194374194377%_ _%g194375194379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195411
                                                    '()
                                                    _%L194350%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195410 _%stx194256%_))
                         (if (or (not _%rator-type194368%_)
                                 (let ((__tmp195412
                                        (##structure-ref
                                         _%rator-type194368%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195412 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194255%_ _%stx194256%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194256%_
                                _%rator-type194368%_))))))))
            (let* ((_%__match194809194810%_
                    (lambda (_%e194286194310%_
                             _%hd194287194313%_
                             _%tl194288194315%_
                             _%e194289194318%_
                             _%hd194290194321%_
                             _%tl194291194323%_
                             _%__splice194750194751%_
                             _%target194292194326%_
                             _%tl194294194328%_)
                      (letrec ((_%loop194295194331%_
                                (lambda (_%hd194293194334%_
                                         _%rand194299194336%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194293194334%_))
                                      (let ((_%e194296194339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194293194334%_))))
                                        (let ((_%lp-tl194298194344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194296194339%_)))
                                              (_%lp-hd194297194342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194296194339%_))))
                                          (_%loop194295194331%_
                                           _%lp-tl194298194344%_
                                           (cons _%lp-hd194297194342%_
                                                 _%rand194299194336%_))))
                                      (let ((_%rand194300194347%_
                                             (reverse _%rand194299194336%_)))
                                        (_%__kont194748194749%_
                                         _%rand194300194347%_
                                         _%hd194290194321%_))))))
                        (_%loop194295194331%_ _%target194292194326%_ '()))))
                   (_%__match194789194790%_
                    (lambda (_%e194263194392%_
                             _%hd194264194395%_
                             _%tl194265194397%_
                             _%e194266194400%_
                             _%hd194267194403%_
                             _%tl194268194405%_
                             _%e194269194408%_
                             _%hd194270194411%_
                             _%tl194271194413%_
                             _%e194272194416%_
                             _%hd194273194419%_
                             _%tl194274194421%_
                             _%__splice194746194747%_
                             _%target194275194424%_
                             _%tl194277194426%_)
                      (letrec ((_%loop194278194429%_
                                (lambda (_%hd194276194432%_
                                         _%rand194282194434%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194276194432%_))
                                      (let ((_%e194279194437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194276194432%_))))
                                        (let ((_%lp-tl194281194442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194279194437%_)))
                                              (_%lp-hd194280194440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194279194437%_))))
                                          (_%loop194278194429%_
                                           _%lp-tl194281194442%_
                                           (cons _%lp-hd194280194440%_
                                                 _%rand194282194434%_))))
                                      (let ((_%rand194283194445%_
                                             (reverse _%rand194282194434%_)))
                                        (_%__kont194744194745%_
                                         _%rand194283194445%_
                                         _%hd194273194419%_))))))
                        (_%loop194278194429%_ _%target194275194424%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194742194743%_))
                  (let ((_%e194263194392%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194742194743%_))))
                    (let ((_%tl194265194397%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194263194392%_)))
                          (_%hd194264194395%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194263194392%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194265194397%_))
                          (let ((_%e194266194400%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194265194397%_))))
                            (let ((_%tl194268194405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194266194400%_)))
                                  (_%hd194267194403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194266194400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194267194403%_))
                                  (let ((_%e194269194408%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194267194403%_))))
                                    (let ((_%tl194271194413%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194269194408%_)))
                                          (_%hd194270194411%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194269194408%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194270194411%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194270194411%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194271194413%_))
                                                  (let ((_%e194272194416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194271194413%_))))
                                                    (let ((_%tl194274194421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194272194416%_)))
                                                          (_%hd194273194419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194272194416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194274194421%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194268194405%_))
                      (let ((_%__splice194746194747%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194268194405%_
                                '0))))
                        (let ((_%tl194277194426%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194746194747%_ '1)))
                              (_%target194275194424%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194746194747%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194277194426%_))
                              (_%__match194789194790%_
                               _%e194263194392%_
                               _%hd194264194395%_
                               _%tl194265194397%_
                               _%e194266194400%_
                               _%hd194267194403%_
                               _%tl194268194405%_
                               _%e194269194408%_
                               _%hd194270194411%_
                               _%tl194271194413%_
                               _%e194272194416%_
                               _%hd194273194419%_
                               _%tl194274194421%_
                               _%__splice194746194747%_
                               _%target194275194424%_
                               _%tl194277194426%_)
                              (let ()
                                (declare (not safe))
                                (_%g194259194305%_)))))
                      (let () (declare (not safe)) (_%g194259194305%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194268194405%_))
                      (let ((_%__splice194750194751%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194268194405%_
                                '0))))
                        (let ((_%tl194294194328%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194750194751%_ '1)))
                              (_%target194292194326%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice194750194751%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194294194328%_))
                              (_%__match194809194810%_
                               _%e194263194392%_
                               _%hd194264194395%_
                               _%tl194265194397%_
                               _%e194266194400%_
                               _%hd194267194403%_
                               _%tl194268194405%_
                               _%__splice194750194751%_
                               _%target194292194326%_
                               _%tl194294194328%_)
                              (let ()
                                (declare (not safe))
                                (_%g194259194305%_)))))
                      (let () (declare (not safe)) (_%g194259194305%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194268194405%_))
                                                      (let ((_%__splice194750194751%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194268194405%_ '0))))
                (let ((_%tl194294194328%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194750194751%_ '1)))
                      (_%target194292194326%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice194750194751%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194294194328%_))
                      (_%__match194809194810%_
                       _%e194263194392%_
                       _%hd194264194395%_
                       _%tl194265194397%_
                       _%e194266194400%_
                       _%hd194267194403%_
                       _%tl194268194405%_
                       _%__splice194750194751%_
                       _%target194292194326%_
                       _%tl194294194328%_)
                      (let () (declare (not safe)) (_%g194259194305%_)))))
              (let () (declare (not safe)) (_%g194259194305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194268194405%_))
                                                  (let ((_%__splice194750194751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194268194405%_
                                                            '0))))
                                                    (let ((_%tl194294194328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194750194751%_
                                                              '1)))
                                                          (_%target194292194326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice194750194751%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194294194328%_))
                                                          (_%__match194809194810%_
                                                           _%e194263194392%_
                                                           _%hd194264194395%_
                                                           _%tl194265194397%_
                                                           _%e194266194400%_
                                                           _%hd194267194403%_
                                                           _%tl194268194405%_
                                                           _%__splice194750194751%_
                                                           _%target194292194326%_
                                                           _%tl194294194328%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194259194305%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194259194305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194268194405%_))
                                              (let ((_%__splice194750194751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194268194405%_
                                                        '0))))
                                                (let ((_%tl194294194328%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194750194751%_
                                                          '1)))
                                                      (_%target194292194326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice194750194751%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194294194328%_))
                                                      (_%__match194809194810%_
                                                       _%e194263194392%_
                                                       _%hd194264194395%_
                                                       _%tl194265194397%_
                                                       _%e194266194400%_
                                                       _%hd194267194403%_
                                                       _%tl194268194405%_
                                                       _%__splice194750194751%_
                                                       _%target194292194326%_
                                                       _%tl194294194328%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194259194305%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194259194305%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194268194405%_))
                                      (let ((_%__splice194750194751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194268194405%_
                                                '0))))
                                        (let ((_%tl194294194328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194750194751%_
                                                  '1)))
                                              (_%target194292194326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194750194751%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194294194328%_))
                                              (_%__match194809194810%_
                                               _%e194263194392%_
                                               _%hd194264194395%_
                                               _%tl194265194397%_
                                               _%e194266194400%_
                                               _%hd194267194403%_
                                               _%tl194268194405%_
                                               _%__splice194750194751%_
                                               _%target194292194326%_
                                               _%tl194294194328%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194259194305%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194259194305%_))))))
                          (let () (declare (not safe)) (_%g194259194305%_)))))
                  (let () (declare (not safe)) (_%g194259194305%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190634194215%_ _%ctx194217%_ _%stx194218%_ _%args194219%_)
        (let* ((_%self194221%_ _%self190634194215%_)
               (_%self194223%_ _%self194221%_))
          (if (let ((__method195391
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194223%_ 'check-arguments))))
                (if __method195391
                    (let ()
                      (declare (not safe))
                      (__method195391
                       _%self194223%_
                       _%ctx194217%_
                       _%stx194218%_
                       _%args194219%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194223%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194233%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194223%_ '2 '#f '#f)))
                     (_%signature194235%_ _%signature194233%_)
                     (_%$e194245%_
                      (if _%signature194235%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194235%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194245%_
                    ((lambda (_%unchecked194248%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194248%_))
                           (let ((__tmp195413
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194248%_
                                                          '()))
                                              (map (lambda (_%g194249194251%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194217%_
                                                        _%g194249194251%_)))
                                                   _%args194219%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195413
                              _%stx194218%_
                              _%ctx194217%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194217%_ _%stx194218%_))))
                     _%$e194245%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194217%_ _%stx194218%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194217%_ _%stx194218%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass194675 __method-table194676)
        (let ((__check-arguments194677
               (let ((__tmp195414
                      (lambda ()
                        (let ((__method194678
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194676
                                  'check-arguments
                                  '#f))))
                          (if __method194678
                              __method194678
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195414))))
          (lambda (_%self190634194215%_
                   _%ctx194217%_
                   _%stx194218%_
                   _%args194219%_)
            (let* ((_%self194221%_ _%self190634194215%_)
                   (_%self194223%_ _%self194221%_))
              (if ((force __check-arguments194677)
                   _%self194223%_
                   _%ctx194217%_
                   _%stx194218%_
                   _%args194219%_)
                  (let* ((_%signature194233%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194223%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194235%_ _%signature194233%_)
                         (_%$e194245%_
                          (if _%signature194235%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194235%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194245%_
                        ((lambda (_%unchecked194248%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194248%_))
                               (let ((__tmp195415
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194248%_
                                                              '()))
                                                  (map (lambda (_%g194249194251%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194217%_
                                                            _%g194249194251%_)))
                                                       _%args194219%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195415
                                  _%stx194218%_
                                  _%ctx194217%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194217%_
                                  _%stx194218%_))))
                         _%$e194245%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194217%_ _%stx194218%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194217%_ _%stx194218%_))))))))
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
      (lambda (_%self190635193964%_ _%ctx193966%_ _%stx193967%_ _%args193968%_)
        (let* ((_%self193970%_ _%self190635193964%_)
               (_%self193972%_ _%self193970%_)
               (_%signature193981193983%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self193972%_ '2 '#f '#f))))
          (if _%signature193981193983%_
              (let* ((_%signature193986%_ _%signature193981193983%_)
                     (_%argument-types193987193989%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature193986%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types193987193989%_
                    (let* ((_%argument-types193992%_
                            _%argument-types193987193989%_)
                           (_%argument-types193997%_
                            (let ((__tmp195416
                                   (lambda (_%t193995%_)
                                     (if _%t193995%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193967%_
                                            _%t193995%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195416
                               _%argument-types193992%_))))
                      (let _%loop193999%_ ((_%rest-args194001%_ _%args193968%_)
                                           (_%rest-types194002%_
                                            _%argument-types193997%_)
                                           (_%result194003%_ '#t))
                        (let* ((_%rest-args194004194012%_ _%rest-args194001%_)
                               (_%else194006194020%_
                                (lambda () _%result194003%_))
                               (_%K194008194081%_
                                (lambda (_%rest-args194023%_ _%arg194024%_)
                                  (let* ((_%rest-types194025194036%_
                                          _%rest-types194002%_)
                                         (_%E194029194040%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types194025194036%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K194032194069%_
                                           (lambda (_%rest-types194066%_
                                                    _%type194067%_)
                                             (_%loop193999%_
                                              _%rest-args194023%_
                                              _%rest-types194066%_
                                              (if (gxc#check-expression-type!
                                                   _%stx193967%_
                                                   _%arg194024%_
                                                   _%type194067%_)
                                                  _%result194003%_
                                                  '#f))))
                                          (_%K194031194060%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx193967%_
                                                _%argument-types193997%_))))
                                          (_%K194030194050%_
                                           (lambda (_%tail-type194044%_)
                                             (if (let ((__tmp195417
                                                        (lambda (_%g194045194047%_)
                                                          (gxc#check-expression-type!
                                                           _%stx193967%_
                                                           _%g194045194047%_
                                                           _%tail-type194044%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195417
                                                    _%rest-args194023%_))
                                                 _%result194003%_
                                                 '#f))))
                                      (let ((_%try-match194027194063%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types194025194036%_))
                                                   (_%K194031194060%_)
                                                   (let ((_%tail-type194053%_
                                                          _%rest-types194025194036%_))
                                                     (_%K194030194050%_
                                                      _%tail-type194053%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types194025194036%_))
                                            (let ((_%tl194034194074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types194025194036%_)))
                                                  (_%hd194033194072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types194025194036%_))))
                                              (let ((_%type194077%_
                                                     _%hd194033194072%_)
                                                    (_%rest-types194079%_
                                                     _%tl194034194074%_))
                                                (_%K194032194069%_
                                                 _%rest-types194079%_
                                                 _%type194077%_)))
                                            (_%try-match194027194063%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args194004194012%_))
                              (let ((_%hd194009194084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args194004194012%_)))
                                    (_%tl194010194086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args194004194012%_))))
                                (let* ((_%arg194089%_ _%hd194009194084%_)
                                       (_%rest-args194091%_
                                        _%tl194010194086%_))
                                  (_%K194008194081%_
                                   _%rest-args194091%_
                                   _%arg194089%_)))
                              (_%else194006194020%_)))))
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
      (lambda (_%self190636193773%_ _%ctx193775%_ _%stx193776%_ _%args193777%_)
        (let* ((_%self193779%_ _%self190636193773%_)
               (_%self193781%_ _%self193779%_)
               (_%g193791193801%_
                (lambda (_%g193792193798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193792193798%_))))
               (_%g193790193839%_
                (lambda (_%g193792193804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193792193804%_))
                      (let ((_%e193794193806%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193792193804%_))))
                        (let ((_%hd193795193809%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193794193806%_)))
                              (_%tl193796193811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193794193806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193796193811%_))
                              ((lambda (_%L193814%_)
                                 (let* ((_%klass193826%_
                                         (let ((__tmp195418
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193781%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193776%_
                                            __tmp195418)))
                                        (_%object193828%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193775%_
                                            _%L193814%_)))
                                        (_%instance?193833%_
                                         (let ((_%$e193830%_
                                                (gxc#expression-type?
                                                 _%object193828%_
                                                 _%klass193826%_)))
                                           (if _%$e193830%_
                                               _%$e193830%_
                                               (gxc#expression-type?
                                                _%L193814%_
                                                _%klass193826%_)))))
                                   (if _%instance?193833%_
                                       (let ((__tmp195419
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193828%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193814%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193828%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195419
                                          _%stx193776%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx193775%_
                                          _%stx193776%_)))))
                               _%hd193795193809%_)
                              (_%g193791193801%_ _%g193792193804%_))))
                      (_%g193791193801%_ _%g193792193804%_)))))
          (_%g193790193839%_ _%args193777%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self190637193567%_ _%ctx193569%_ _%stx193570%_ _%args193571%_)
        (let* ((_%self193573%_ _%self190637193567%_)
               (_%self193575%_ _%self193573%_)
               (_%g193585193595%_
                (lambda (_%g193586193592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193586193592%_))))
               (_%g193584193648%_
                (lambda (_%g193586193598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193586193598%_))
                      (let ((_%e193588193600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193586193598%_))))
                        (let ((_%hd193589193603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193588193600%_)))
                              (_%tl193590193605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193588193600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193590193605%_))
                              ((lambda (_%L193608%_)
                                 (let* ((_%klass193620%_
                                         (let ((__tmp195420
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193575%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193570%_
                                            __tmp195420)))
                                        (_%object193622%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193569%_
                                            _%L193608%_)))
                                        (_%instance?193627%_
                                         (let ((_%$e193624%_
                                                (gxc#expression-type?
                                                 _%object193622%_
                                                 _%klass193620%_)))
                                           (if _%$e193624%_
                                               _%$e193624%_
                                               (gxc#expression-type?
                                                _%L193608%_
                                                _%klass193620%_))))
                                        (_%klass193630%_ _%klass193620%_))
                                   (if _%instance?193627%_
                                       (let ((__tmp195421
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object193622%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L193608%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object193622%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195421
                                          _%stx193570%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193630%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195422
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass193630%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object193622%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195422
                                              _%stx193570%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193630%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195423
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass193630%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object193622%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195423
                                                  _%stx193570%_))
                                               (let ((__tmp195424
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193575%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object193622%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195424
                                                  _%stx193570%_)))))))
                               _%hd193589193603%_)
                              (_%g193585193595%_ _%g193586193598%_))))
                      (_%g193585193595%_ _%g193586193598%_)))))
          (_%g193584193648%_ _%args193571%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193230%_)
        (let* ((_%__stx194819194820%_ _%stx193230%_)
               (_%g193235193276%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194819194820%_)))))
          (let ((_%__kont194821194822%_ (lambda () '#t))
                (_%__kont194823194824%_ (lambda () '#t))
                (_%__kont194825194826%_
                 (lambda (_%L193344%_ _%L193345%_)
                   (let ((_%rator-type193366193368%_
                          (let ((__tmp195425
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193345%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195425))))
                     (if _%rator-type193366193368%_
                         (let* ((_%rator-type193371%_
                                 _%rator-type193366193368%_)
                                (_%rator-signature193372193374%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193371%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193371%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193372193374%_
                               (let* ((_%rator-signature193377%_
                                       _%rator-signature193372193374%_)
                                      (_%rator-effect193378193380%_
                                       (if _%rator-signature193377%_
                                           (##direct-structure-ref
                                            _%rator-signature193377%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193378193380%_
                                     (let ((_%rator-effect193383%_
                                            _%rator-effect193378193380%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193383%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193383%_))
                                           (let ((__tmp195426
                                                  (let ((__tmp195427
                                                         (lambda (_%g193388193391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193389193393%_)
                   (cons _%g193388193391%_ _%g193389193393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195427
                                                     '()
                                                     _%L193344%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195426))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont194829194830%_ (lambda () '#f)))
            (let ((_%__match194908194909%_
                   (lambda (_%e193251193288%_
                            _%hd193252193291%_
                            _%tl193253193293%_
                            _%e193254193296%_
                            _%hd193255193299%_
                            _%tl193256193301%_
                            _%e193257193304%_
                            _%hd193258193307%_
                            _%tl193259193309%_
                            _%e193260193312%_
                            _%hd193261193315%_
                            _%tl193262193317%_
                            _%__splice194827194828%_
                            _%target193263193320%_
                            _%tl193265193322%_)
                     (letrec ((_%loop193266193325%_
                               (lambda (_%hd193264193328%_
                                        _%rand193270193330%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193264193328%_))
                                     (let ((_%e193267193333%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193264193328%_))))
                                       (let ((_%lp-tl193269193338%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193267193333%_)))
                                             (_%lp-hd193268193336%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193267193333%_))))
                                         (_%loop193266193325%_
                                          _%lp-tl193269193338%_
                                          (cons _%lp-hd193268193336%_
                                                _%rand193270193330%_))))
                                     (let ((_%rand193271193341%_
                                            (reverse _%rand193270193330%_)))
                                       (_%__kont194825194826%_
                                        _%rand193271193341%_
                                        _%hd193261193315%_))))))
                       (_%loop193266193325%_ _%target193263193320%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194819194820%_))
                  (let ((_%e193237193424%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194819194820%_))))
                    (let ((_%tl193239193429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193237193424%_)))
                          (_%hd193238193427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193237193424%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193238193427%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193238193427%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193239193429%_))
                                  (let ((_%e193240193432%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193239193429%_))))
                                    (let ((_%tl193242193437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193240193432%_)))
                                          (_%hd193241193435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193240193432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193242193437%_))
                                          (_%__kont194821194822%_)
                                          (_%__kont194829194830%_))))
                                  (_%__kont194829194830%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193238193427%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193239193429%_))
                                      (let ((_%e193246193409%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193239193429%_))))
                                        (let ((_%tl193248193414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193246193409%_)))
                                              (_%hd193247193412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193246193409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193248193414%_))
                                              (_%__kont194823194824%_)
                                              (_%__kont194829194830%_))))
                                      (_%__kont194829194830%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193238193427%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193239193429%_))
                                          (let ((_%e193254193296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193239193429%_))))
                                            (let ((_%tl193256193301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193254193296%_)))
                                                  (_%hd193255193299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193254193296%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193255193299%_))
                                                  (let ((_%e193257193304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193255193299%_))))
                                                    (let ((_%tl193259193309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193257193304%_)))
                                                          (_%hd193258193307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193257193304%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193258193307%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193258193307%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193259193309%_))
                          (let ((_%e193260193312%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193259193309%_))))
                            (let ((_%tl193262193317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193260193312%_)))
                                  (_%hd193261193315%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193260193312%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193262193317%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193256193301%_))
                                      (let ((_%__splice194827194828%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193256193301%_
                                                '0))))
                                        (let ((_%tl193265193322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194827194828%_
                                                  '1)))
                                              (_%target193263193320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice194827194828%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193265193322%_))
                                              (_%__match194908194909%_
                                               _%e193237193424%_
                                               _%hd193238193427%_
                                               _%tl193239193429%_
                                               _%e193254193296%_
                                               _%hd193255193299%_
                                               _%tl193256193301%_
                                               _%e193257193304%_
                                               _%hd193258193307%_
                                               _%tl193259193309%_
                                               _%e193260193312%_
                                               _%hd193261193315%_
                                               _%tl193262193317%_
                                               _%__splice194827194828%_
                                               _%target193263193320%_
                                               _%tl193265193322%_)
                                              (_%__kont194829194830%_))))
                                      (_%__kont194829194830%_))
                                  (_%__kont194829194830%_))))
                          (_%__kont194829194830%_))
                      (_%__kont194829194830%_))
                  (_%__kont194829194830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194829194830%_))))
                                          (_%__kont194829194830%_))
                                      (_%__kont194829194830%_))))
                          (_%__kont194829194830%_))))
                  (_%__kont194829194830%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193225%_ _%klass193226%_)
        (let ((_%expr-type193228%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193225%_))))
          (if _%expr-type193228%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193228%_ _%klass193226%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193203%_ _%expr193204%_ _%type193205%_)
        (if (not _%type193205%_)
            '#f
            (let ((_%$e193208%_
                   (eq? (##structure-ref _%type193205%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193208%_
                  _%$e193208%_
                  (let ((_%expr-type193212%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193204%_))))
                    (if (not _%expr-type193212%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193212%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193216%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193212%_
                                      'gxc#!abort::t))))
                              (if _%$e193216%_
                                  _%$e193216%_
                                  (let ((_%$e193219%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193212%_
                                            _%type193205%_))))
                                    (if _%$e193219%_
                                        _%$e193219%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193205%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193205%_
                                                   _%expr-type193212%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193203%_
                                                   _%expr193204%_
                                                   _%expr-type193212%_
                                                   _%type193205%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self190638193015%_ _%ctx193017%_ _%stx193018%_ _%args193019%_)
        (let* ((_%self193021%_ _%self190638193015%_)
               (_%self193023%_ _%self193021%_)
               (_%klass193033%_
                (let ((__tmp195428
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193023%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx193018%_ __tmp195428)))
               (_%fields193035%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193033%_
                           '5
                           '#f
                           '#f))))
               (_%args193041%_
                (map (lambda (_%g193036193038%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx193017%_ _%g193036193038%_)))
                     _%args193019%_))
               (_%inline-make-object193043%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self193023%_
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
                           _%self193023%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields193035%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass193046%_ _%klass193033%_)
               (_%$e193060%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass193046%_ '6 '#f '#f))))
          (if _%$e193060%_
              ((lambda (_%ctor193063%_)
                 (let ((_%$obj193065%_
                        (let ((__tmp195429
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195429)))
                       (_%ctor-impl193066%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass193046%_
                           _%ctor193063%_))))
                   (let ((__tmp195430
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193065%_ '())
                                                  (cons _%inline-make-object193043%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl193066%_
                                                            (let ((__tmp195431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl193066%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj193065%_ '()))
                                             _%args193041%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195431
                       _%stx193018%_
                       _%ctx193017%_))
                    (let ((_%$ctor193068%_
                           (let ((__tmp195432
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195432))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor193068%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193023%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj193065%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor193063%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor193068%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor193068%_ '()))
                              (cons (cons '%#ref (cons _%$obj193065%_ '()))
                                    _%args193041%_)))
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
                             _%self193023%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor193063%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj193065%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195430 _%stx193018%_))))
               _%$e193060%_)
              (let ((_%$e193070%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass193046%_
                        '10
                        '#f
                        '#f))))
                (if _%$e193070%_
                    ((lambda (_%metaclass193073%_)
                       (let* ((_%$obj193075%_
                               (let ((__tmp195433
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195433)))
                              (_%metakons193077%_
                               (let ((__tmp195434
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx193018%_
                                         _%metaclass193073%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195434
                                  'instance-init!)))
                              (__tmp195435
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj193075%_
                                                             '())
                                                       (cons _%inline-make-object193043%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons193077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195436
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons193077%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self193023%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args193041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195436
                            _%stx193018%_
                            _%ctx193017%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193023%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj193075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args193041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj193075%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195435 _%stx193018%_)))
                     _%$e193070%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193046%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195437
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args193041%_))))
                              (declare (not safe))
                              (##fx= __tmp195437 _%fields193035%_))
                            (let ((__tmp195438
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self193023%_
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
                                              _%self193023%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args193041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195438
                               _%stx193018%_))
                            (let ((__tmp195440
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self193023%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195439
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass193046%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx193018%_
                               __tmp195440
                               __tmp195439)))
                        (let ((_%$obj193082%_
                               (let ((__tmp195441
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195441))))
                          (let _%lp193084%_ ((_%rest193086%_ _%args193041%_)
                                             (_%initializers193087%_ '()))
                            (let* ((_%__stx194911194912%_ _%rest193086%_)
                                   (_%g193091193112%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx194911194912%_)))))
                              (let ((_%__kont194913194914%_
                                     (lambda (_%L193166%_
                                              _%L193167%_
                                              _%L193168%_)
                                       (let* ((_%slot193195%_
                                               (let ((__tmp195442
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193168%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195442)))
                                              (_%off193197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass193046%_
                                                  _%slot193195%_))))
                                         (if _%off193197%_
                                             (_%lp193084%_
                                              _%L193166%_
                                              (cons (cons _%off193197%_
                                                          _%L193167%_)
                                                    _%initializers193087%_))
                                             (let ((__tmp195443
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193023%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx193018%_
                                                __tmp195443
                                                _%slot193195%_))))))
                                    (_%__kont194915194916%_
                                     (lambda ()
                                       (let ((__tmp195444
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193043%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195447
                                     (cons (cons '%#ref
                                                 (cons _%$obj193082%_ '()))
                                           '()))
                                    (__tmp195445
                                     (let ((__tmp195446
                                            (lambda (_%i193126%_ _%r193127%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193023%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193126%_) '()))
                              (cons (cons '%#ref (cons _%$obj193082%_ '()))
                                    (cons (cdr _%i193126%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193127%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195446
                                        '()
                                        _%initializers193087%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195447 __tmp195445)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195444
                                          _%stx193018%_))))
                                    (_%__kont194917194918%_
                                     (lambda ()
                                       (let ((__tmp195448
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193043%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args193041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj193082%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195448
                                          _%stx193018%_)))))
                                (let* ((_%g193089193129%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx194911194912%_))
                                              (_%__kont194915194916%_)
                                              (_%__kont194917194918%_))))
                                       (_%__match194948194949%_
                                        (lambda (_%e193096193134%_
                                                 _%hd193097193137%_
                                                 _%tl193098193139%_
                                                 _%e193099193142%_
                                                 _%hd193100193145%_
                                                 _%tl193101193147%_
                                                 _%e193102193150%_
                                                 _%hd193103193153%_
                                                 _%tl193104193155%_
                                                 _%e193105193158%_
                                                 _%hd193106193161%_
                                                 _%tl193107193163%_)
                                          (let ((_%L193166%_
                                                 _%tl193107193163%_)
                                                (_%L193167%_
                                                 _%hd193106193161%_)
                                                (_%L193168%_
                                                 _%hd193103193153%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193168%_))
                                                (_%__kont194913194914%_
                                                 _%L193166%_
                                                 _%L193167%_
                                                 _%L193168%_)
                                                (_%__kont194917194918%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx194911194912%_))
                                      (let ((_%e193096193134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx194911194912%_))))
                                        (let ((_%tl193098193139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193096193134%_)))
                                              (_%hd193097193137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193096193134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd193097193137%_))
                                              (let ((_%e193099193142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd193097193137%_))))
                                                (let ((_%tl193101193147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193099193142%_)))
                                                      (_%hd193100193145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193099193142%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd193100193145%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd193100193145%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193101193147%_))
                      (let ((_%e193102193150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193101193147%_))))
                        (let ((_%tl193104193155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193102193150%_)))
                              (_%hd193103193153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193102193150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193104193155%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193098193139%_))
                                  (let ((_%e193105193158%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193098193139%_))))
                                    (let ((_%tl193107193163%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193105193158%_)))
                                          (_%hd193106193161%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193105193158%_))))
                                      (_%__match194948194949%_
                                       _%e193096193134%_
                                       _%hd193097193137%_
                                       _%tl193098193139%_
                                       _%e193099193142%_
                                       _%hd193100193145%_
                                       _%tl193101193147%_
                                       _%e193102193150%_
                                       _%hd193103193153%_
                                       _%tl193104193155%_
                                       _%e193105193158%_
                                       _%hd193106193161%_
                                       _%tl193107193163%_)))
                                  (_%__kont194917194918%_))
                              (_%__kont194917194918%_))))
                      (_%__kont194917194918%_))
                  (_%__kont194917194918%_))
              (_%__kont194917194918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194917194918%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193089193129%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self190639192796%_ _%ctx192798%_ _%stx192799%_ _%args192800%_)
        (let* ((_%self192802%_ _%self190639192796%_)
               (_%self192804%_ _%self192802%_)
               (_%arguments-ok?192814%_
                (let ((__method195392
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192804%_ 'check-arguments))))
                  (if __method195392
                      (let ()
                        (declare (not safe))
                        (__method195392
                         _%self192804%_
                         _%ctx192798%_
                         _%stx192799%_
                         _%args192800%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192804%_
                                 'check-arguments))
                        '#!void))))
               (_%g192816192826%_
                (lambda (_%g192817192823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192817192823%_))))
               (_%g192815192890%_
                (lambda (_%g192817192829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192817192829%_))
                      (let ((_%e192819192831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192817192829%_))))
                        (let ((_%hd192820192834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192819192831%_)))
                              (_%tl192821192836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192819192831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl192821192836%_))
                              ((lambda (_%L192839%_)
                                 (let* ((_%klass192852%_
                                         (let ((__tmp195449
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192804%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx192799%_
                                            __tmp195449)))
                                        (_%field192854%_
                                         (let ((__tmp195450
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self192804%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass192852%_
                                            __tmp195450)))
                                        (_%object192856%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx192798%_
                                            _%L192839%_)))
                                        (_%klass192859%_ _%klass192852%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass192859%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195451
                                              (cons (if (or _%arguments-ok?192814%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192804%_
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
                                 _%self192804%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field192854%_ '()))
                        (cons _%object192856%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195451
                                          _%stx192799%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192859%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195452
                                                  (cons (if (or _%arguments-ok?192814%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192804%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192804%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192854%_ '()))
                            (cons _%object192856%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195452
                                              _%stx192799%_))
                                           (let ((_%$e192878%_
                                                  (let ((__tmp195453
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192804%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass192859%_
                                                     __tmp195453))))
                                             (if _%$e192878%_
                                                 ((lambda (_%klass192881%_)
                                                    (let ((__tmp195454
                                                           (cons (if (or _%arguments-ok?192814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192804%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self192804%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field192854%_ '()))
                                     (cons _%object192856%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195454 _%stx192799%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e192878%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self192804%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195455
                                                            (let ((_%$obj192887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195456
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195456))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj192887%_ '())
                                              (cons _%object192856%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass192859%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj192887%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192804%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192854%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192887%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?192814%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192887%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192804%_
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
                                                             _%self192804%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj192887%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self192804%_
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
               (gxc#xform-wrap-source __tmp195455 _%stx192799%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195457
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object192856%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192804%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195457 _%stx192799%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd192820192834%_)
                              (_%g192816192826%_ _%g192817192829%_))))
                      (_%g192816192826%_ _%g192817192829%_)))))
          (_%g192815192890%_ _%args192800%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass194679 __method-table194680)
        (let ((__check-arguments194681
               (let ((__tmp195458
                      (lambda ()
                        (let ((__method194682
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194680
                                  'check-arguments
                                  '#f))))
                          (if __method194682
                              __method194682
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195458)))
              (__slot194683
               (let ((__slot194684
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass194679 'slot))))
                 (if __slot194684
                     __slot194684
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self190639192796%_
                   _%ctx192798%_
                   _%stx192799%_
                   _%args192800%_)
            (let* ((_%self192802%_ _%self190639192796%_)
                   (_%self192804%_ _%self192802%_)
                   (_%arguments-ok?192814%_
                    ((force __check-arguments194681)
                     _%self192804%_
                     _%ctx192798%_
                     _%stx192799%_
                     _%args192800%_))
                   (_%g192816192826%_
                    (lambda (_%g192817192823%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192817192823%_))))
                   (_%g192815192890%_
                    (lambda (_%g192817192829%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192817192829%_))
                          (let ((_%e192819192831%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192817192829%_))))
                            (let ((_%hd192820192834%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192819192831%_)))
                                  (_%tl192821192836%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192819192831%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl192821192836%_))
                                  ((lambda (_%L192839%_)
                                     (let* ((_%klass192852%_
                                             (let ((__tmp195459
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192804%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx192799%_
                                                __tmp195459)))
                                            (_%field192854%_
                                             (let ((__tmp195460
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self192804%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass192852%_
                                                __tmp195460)))
                                            (_%object192856%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx192798%_
                                                _%L192839%_)))
                                            (_%klass192859%_ _%klass192852%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass192859%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195461
                                                  (cons (if (or _%arguments-ok?192814%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192804%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192804%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field192854%_ '()))
                            (cons _%object192856%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195461
                                              _%stx192799%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192859%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195462
                                                      (cons (if (or _%arguments-ok?192814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192804%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192804%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192854%_ '()))
                                (cons _%object192856%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195462
                                                  _%stx192799%_))
                                               (let ((_%$e192878%_
                                                      (let ((__tmp195463
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self192804%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass192859%_ __tmp195463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e192878%_
                                                     ((lambda (_%klass192881%_)
                                                        (let ((__tmp195464
                                                               (cons (if (or _%arguments-ok?192814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192804%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self192804%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field192854%_ '()))
                                         (cons _%object192856%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195464 _%stx192799%_)))
              _%$e192878%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self192804%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195465
                                                                (let ((_%$obj192887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195466
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195466))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj192887%_ '())
                                                  (cons _%object192856%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass192859%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj192887%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192804%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192854%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj192887%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?192814%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192887%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192804%_
                               __slot194683
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
                        (##unchecked-structure-ref _%self192804%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj192887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192804%_
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
                   (gxc#xform-wrap-source __tmp195465 _%stx192799%_))
                 (let ((__tmp195467
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object192856%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192804%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195467 _%stx192799%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd192820192834%_)
                                  (_%g192816192826%_ _%g192817192829%_))))
                          (_%g192816192826%_ _%g192817192829%_)))))
              (_%g192815192890%_ _%args192800%_))))))
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
      (lambda (_%self190640192558%_ _%ctx192560%_ _%stx192561%_ _%args192562%_)
        (let* ((_%self192564%_ _%self190640192558%_)
               (_%self192566%_ _%self192564%_)
               (_%arguments-ok?192576%_
                (let ((__method195393
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192566%_ 'check-arguments))))
                  (if __method195393
                      (let ()
                        (declare (not safe))
                        (__method195393
                         _%self192566%_
                         _%ctx192560%_
                         _%stx192561%_
                         _%args192562%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192566%_
                                 'check-arguments))
                        '#!void))))
               (_%g192578192592%_
                (lambda (_%g192579192589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192579192589%_))))
               (_%g192577192671%_
                (lambda (_%g192579192595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192579192595%_))
                      (let ((_%e192582192597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192579192595%_))))
                        (let ((_%hd192583192600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192582192597%_)))
                              (_%tl192584192602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192582192597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192584192602%_))
                              (let ((_%e192585192605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192584192602%_))))
                                (let ((_%hd192586192608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192585192605%_)))
                                      (_%tl192587192610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192585192605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192587192610%_))
                                      ((lambda (_%L192613%_ _%L192614%_)
                                         (let* ((_%klass192630%_
                                                 (let ((__tmp195468
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192566%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192561%_
                                                    __tmp195468)))
                                                (_%field192632%_
                                                 (let ((__tmp195469
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192566%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass192630%_
                                                    __tmp195469)))
                                                (_%object192634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192560%_
                                                    _%L192614%_)))
                                                (_%value192636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192560%_
                                                    _%L192613%_)))
                                                (_%klass192639%_
                                                 _%klass192630%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass192639%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195470
                                                      (cons (if (or _%arguments-ok?192576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192566%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192566%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field192632%_ '()))
                                (cons _%object192634%_
                                      (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195470
                                                  _%stx192561%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192639%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195471
                                                          (cons (if (or _%arguments-ok?192576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192566%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192566%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192632%_ '()))
                                    (cons _%object192634%_
                                          (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195471
                                                      _%stx192561%_))
                                                   (let ((_%$e192659%_
                                                          (let ((__tmp195472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192566%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass192639%_
                     __tmp195472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e192659%_
                                                         ((lambda (_%klass192662%_)
                                                            (let ((__tmp195473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192576%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192566%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192566%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field192632%_ '()))
                                             (cons _%object192634%_
                                                   (cons _%value192636%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195473 _%stx192561%_)))
                  _%$e192659%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192566%_ '4 '#f '#f))
                     (let ((__tmp195474
                            (let ((_%$obj192668%_
                                   (let ((__tmp195475
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195475))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj192668%_ '())
                                                      (cons _%object192634%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass192639%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj192668%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192566%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field192632%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj192668%_
                                                              '()))
                                                  (cons _%value192636%_
                                                        '())))))
                          (cons (if _%arguments-ok?192576%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192566%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value192636%_ '())))))
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
                             _%self192566%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj192668%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192566%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195474 _%stx192561%_))
                     (let ((__tmp195476
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object192634%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192566%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value192636%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195476
                        _%stx192561%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192586192608%_
                                       _%hd192583192600%_)
                                      (_%g192578192592%_ _%g192579192595%_))))
                              (_%g192578192592%_ _%g192579192595%_))))
                      (_%g192578192592%_ _%g192579192595%_)))))
          (_%g192577192671%_ _%args192562%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass194685 __method-table194686)
        (let ((__check-arguments194687
               (let ((__tmp195477
                      (lambda ()
                        (let ((__method194688
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table194686
                                  'check-arguments
                                  '#f))))
                          (if __method194688
                              __method194688
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195477))))
          (lambda (_%self190640192558%_
                   _%ctx192560%_
                   _%stx192561%_
                   _%args192562%_)
            (let* ((_%self192564%_ _%self190640192558%_)
                   (_%self192566%_ _%self192564%_)
                   (_%arguments-ok?192576%_
                    ((force __check-arguments194687)
                     _%self192566%_
                     _%ctx192560%_
                     _%stx192561%_
                     _%args192562%_))
                   (_%g192578192592%_
                    (lambda (_%g192579192589%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192579192589%_))))
                   (_%g192577192671%_
                    (lambda (_%g192579192595%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192579192595%_))
                          (let ((_%e192582192597%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192579192595%_))))
                            (let ((_%hd192583192600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192582192597%_)))
                                  (_%tl192584192602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192582192597%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192584192602%_))
                                  (let ((_%e192585192605%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192584192602%_))))
                                    (let ((_%hd192586192608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192585192605%_)))
                                          (_%tl192587192610%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192585192605%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192587192610%_))
                                          ((lambda (_%L192613%_ _%L192614%_)
                                             (let* ((_%klass192630%_
                                                     (let ((__tmp195478
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192566%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192561%_
                                                        __tmp195478)))
                                                    (_%field192632%_
                                                     (let ((__tmp195479
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192566%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass192630%_
                                                        __tmp195479)))
                                                    (_%object192634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192560%_
                                                        _%L192614%_)))
                                                    (_%value192636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192560%_
                                                        _%L192613%_)))
                                                    (_%klass192639%_
                                                     _%klass192630%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass192639%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195480
                                                          (cons (if (or _%arguments-ok?192576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192566%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192566%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field192632%_ '()))
                                    (cons _%object192634%_
                                          (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195480
                                                      _%stx192561%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass192639%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195481
                                                              (cons (if (or _%arguments-ok?192576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192566%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192566%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field192632%_ '()))
                                        (cons _%object192634%_
                                              (cons _%value192636%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195481 _%stx192561%_))
               (let ((_%$e192659%_
                      (let ((__tmp195482
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192566%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass192639%_
                         __tmp195482))))
                 (if _%$e192659%_
                     ((lambda (_%klass192662%_)
                        (let ((__tmp195483
                               (cons (if (or _%arguments-ok?192576%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192566%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192566%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field192632%_
                                                             '()))
                                                 (cons _%object192634%_
                                                       (cons _%value192636%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195483 _%stx192561%_)))
                      _%$e192659%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192566%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195484
                                (let ((_%$obj192668%_
                                       (let ((__tmp195485
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195485))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj192668%_
                                                                '())
                                                          (cons _%object192634%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass192639%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj192668%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192566%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field192632%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj192668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value192636%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192576%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj192668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192566%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value192636%_ '())))))
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
                                 _%self192566%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj192668%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192566%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195484 _%stx192561%_))
                         (let ((__tmp195486
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object192634%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192566%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value192636%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195486
                            _%stx192561%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192586192608%_
                                           _%hd192583192600%_)
                                          (_%g192578192592%_
                                           _%g192579192595%_))))
                                  (_%g192578192592%_ _%g192579192595%_))))
                          (_%g192578192592%_ _%g192579192595%_)))))
              (_%g192577192671%_ _%args192562%_))))))
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
      (lambda (_%self190641192371%_ _%ctx192373%_ _%stx192374%_ _%args192375%_)
        (let* ((_%self192377%_ _%self190641192371%_)
               (_%self192379%_ _%self192377%_)
               (_%self192388192398%_ _%self192379%_)
               (_%E192390192402%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192388192398%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192391192412%_
                (lambda (_%inline192405%_ _%dispatch192406%_ _%arity192407%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192379%_
                         _%args192375%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192374%_
                         _%arity192407%_)))
                  (if _%inline192405%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195487 (_%inline192405%_ _%stx192374%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195487
                           _%stx192374%_
                           _%ctx192373%_)))
                      (if (and _%dispatch192406%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192406%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192406%_))
                            (let ((__tmp195488
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192406%_
                                                           '()))
                                               _%args192375%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195488
                               _%stx192374%_
                               _%ctx192373%_)))
                          (gxc#!procedure::optimize-call
                           _%self192379%_
                           _%ctx192373%_
                           _%stx192374%_
                           _%args192375%_)))))
               (_%e192392192415%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192388192398%_ '1 '#f '#f)))
               (_%e192393192418%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192388192398%_ '2 '#f '#f)))
               (_%e192394192421%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192388192398%_ '3 '#f '#f)))
               (_%arity192424%_ _%e192394192421%_)
               (_%e192395192426%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192388192398%_ '4 '#f '#f)))
               (_%dispatch192429%_ _%e192395192426%_)
               (_%e192396192431%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192388192398%_ '5 '#f '#f)))
               (_%inline192434%_ _%e192396192431%_))
          (_%K192391192412%_
           _%inline192434%_
           _%dispatch192429%_
           _%arity192424%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self190642192221%_ _%ctx192223%_ _%stx192224%_ _%args192225%_)
        (let* ((_%self192227%_ _%self190642192221%_)
               (_%self192229%_ _%self192227%_)
               (_%$e192243%_
                (let ((__tmp195490
                       (lambda (_%g192238192240%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192238192240%_
                            _%args192225%_))))
                      (__tmp195489
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192229%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195490 __tmp195489))))
          (if _%$e192243%_
              ((lambda (_%clause192246%_)
                 (let ((__method195394
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192246%_ 'optimize-call))))
                   (if __method195394
                       (let ()
                         (declare (not safe))
                         (__method195394
                          _%clause192246%_
                          _%ctx192223%_
                          _%stx192224%_
                          _%args192225%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192246%_
                                  'optimize-call))
                         '#!void))))
               _%$e192243%_)
              (let ((__tmp195491
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192229%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192224%_
                 __tmp195491))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self190643191959%_ _%ctx191961%_ _%stx191962%_ _%args191963%_)
        (let* ((_%self191965%_ _%self190643191959%_)
               (_%self191967%_ _%self191965%_)
               (_%self191976191985%_ _%self191967%_)
               (_%E191978191989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191976191985%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K191979192080%_
                (lambda (_%dispatch191992%_ _%table191993%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch191992%_))
                      (let* ((_%g191994192004%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch191992%_)))
                             (_%else191996192012%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch191992%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx191961%_
                                   _%stx191962%_))))
                             (_%K191998192061%_
                              (lambda (_%main192015%_ _%keys192016%_)
                                (let ((_g195492_
                                       (gxc#!kw-lambda-split-args
                                        _%stx191962%_
                                        _%args191963%_)))
                                  (begin
                                    (let ((_g195493_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195492_)
                                                 (##vector-length _g195492_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195493_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195493_)))
                                    (let ((_%pargs192018%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195492_ 0)))
                                          (_%kwargs192019%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195492_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main192015%_))
                                        (if _%table191993%_
                                            (let ((_%xargs192027%_
                                                   (map (lambda (_%key192021%_)
                                                          (let ((_%$e192023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key192021%_ _%kwargs192019%_))))
                    (if _%$e192023%_ _%$e192023%_ '(%#ref absent-value))))
                _%keys192016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw192029%_)
                                                 (if (memq (car _%kw192029%_)
                                                           _%keys192016%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx191962%_
                                                        _%keys192016%_
                                                        _%kw192029%_))))
                                               _%kwargs192019%_)
                                              (let ((__tmp195494
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main192015%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs192018%_
                                  _%xargs192027%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195494
                                                 _%stx191962%_
                                                 _%ctx191961%_)))
                                            (let* ((_%kwt192031%_
                                                    (let ((__tmp195495
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195495)))
                                                   (_%kwvars192035%_
                                                    (map (lambda (_%_192033%_)
                                                           (let ((__tmp195496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195496)))
                 _%kwargs192019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind192040%_
                                                    (map (lambda (_%kw192037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192038%_)
                   (cons (cons _%kwvar192038%_ '())
                         (cons (cdr _%kw192037%_) '())))
                 _%kwargs192019%_
                 _%kwvars192035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset192045%_
                                                    (map (lambda (_%kw192042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192043%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt192031%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw192042%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar192043%_
                                                             '()))
                                                 '()))))))
                 _%kwargs192019%_
                 _%kwvars192035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs192050%_
                                                    (map (lambda (_%kw192047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192048%_)
                   (cons (car _%kw192047%_)
                         (cons '%#ref (cons _%kwvar192048%_ '()))))
                 _%kwargs192019%_
                 _%kwvars192035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs192058%_
                                                    (map (lambda (_%key192052%_)
                                                           (let ((_%$e192054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key192052%_ _%xkwargs192050%_))))
                     (if _%$e192054%_ _%$e192054%_ '(%#ref absent-value))))
                 _%keys192016%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195497
                                                    (cons '%#let-values
                                                          (cons _%kwbind192040%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt192031%_ '())
                                                      (cons (let ((__tmp195498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs192019%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195498 _%stx191962%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195499
                                                             (cons (let ((__tmp195500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main192015%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt192031%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs192018%_
                                                       _%xargs192058%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195500 _%stx191962%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195499 _%kwset192045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195497
                                               _%stx191962%_
                                               _%ctx191961%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g191994192004%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e191999192064%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191994192004%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e192000192067%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191994192004%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e192001192070%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191994192004%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys192073%_ _%e192001192070%_)
                                   (_%e192002192075%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g191994192004%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main192078%_ _%e192002192075%_))
                              (_%K191998192061%_
                               _%main192078%_
                               _%keys192073%_))
                            (_%else191996192012%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx191961%_ _%stx191962%_)))))
               (_%e191980192083%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191976191985%_ '1 '#f '#f)))
               (_%e191981192086%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191976191985%_ '2 '#f '#f)))
               (_%e191982192089%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191976191985%_ '3 '#f '#f)))
               (_%table192092%_ _%e191982192089%_)
               (_%e191983192094%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self191976191985%_ '4 '#f '#f)))
               (_%dispatch192097%_ _%e191983192094%_))
          (_%K191979192080%_ _%dispatch192097%_ _%table192092%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191572%_ _%args191573%_)
        (let _%lp191575%_ ((_%rest191577%_ _%args191573%_)
                           (_%pargs191578%_ '())
                           (_%kwargs191579%_ '()))
          (let* ((_%__stx194953194954%_ _%rest191577%_)
                 (_%g191585191637%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194953194954%_)))))
            (let ((_%__kont194955194956%_
                   (lambda (_%L191816%_ _%L191817%_)
                     (_%lp191575%_
                      _%L191816%_
                      (cons _%L191817%_ _%pargs191578%_)
                      _%kwargs191579%_)))
                  (_%__kont194957194958%_
                   (lambda (_%L191762%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L191762%_ _%pargs191578%_))
                             (reverse _%kwargs191579%_))))
                  (_%__kont194959194960%_
                   (lambda (_%L191709%_ _%L191710%_ _%L191711%_)
                     (let ((_%kw191728%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L191711%_))))
                       (if (assq _%kw191728%_ _%kwargs191579%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191572%_
                              _%kw191728%_))
                           (_%lp191575%_
                            _%L191709%_
                            _%pargs191578%_
                            (cons (cons _%kw191728%_ _%L191710%_)
                                  _%kwargs191579%_))))))
                  (_%__kont194961194962%_
                   (lambda (_%L191657%_ _%L191658%_)
                     (_%lp191575%_
                      _%L191657%_
                      (cons _%L191658%_ _%pargs191578%_)
                      _%kwargs191579%_)))
                  (_%__kont194963194964%_
                   (lambda ()
                     (values (reverse _%pargs191578%_)
                             (reverse _%kwargs191579%_)))))
              (let ((_%__match195060195061%_
                     (lambda (_%e191616191677%_
                              _%hd191617191680%_
                              _%tl191618191682%_
                              _%e191619191685%_
                              _%hd191620191688%_
                              _%tl191621191690%_
                              _%e191622191693%_
                              _%hd191623191696%_
                              _%tl191624191698%_
                              _%e191625191701%_
                              _%hd191626191704%_
                              _%tl191627191706%_)
                       (let ((_%L191709%_ _%tl191627191706%_)
                             (_%L191710%_ _%hd191626191704%_)
                             (_%L191711%_ _%hd191623191696%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L191711%_))
                             (_%__kont194959194960%_
                              _%L191709%_
                              _%L191710%_
                              _%L191711%_)
                             (_%__kont194961194962%_
                              _%tl191618191682%_
                              _%hd191617191680%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194953194954%_))
                    (let ((_%e191589191781%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194953194954%_))))
                      (let ((_%tl191591191786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191589191781%_)))
                            (_%hd191590191784%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191589191781%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191590191784%_))
                            (let ((_%e191592191789%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191590191784%_))))
                              (let ((_%tl191594191794%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191592191789%_)))
                                    (_%hd191593191792%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191592191789%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191593191792%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191593191792%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191594191794%_))
                                            (let ((_%e191595191797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191594191794%_))))
                                              (let ((_%tl191597191802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191595191797%_)))
                                                    (_%hd191596191800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191595191797%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191596191800%_))
                                                    (let ((_%e191598191805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191596191800%_))))
                                                      (if (equal? _%e191598191805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191597191802%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191591191786%_))
                          (let ((_%e191599191808%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191591191786%_))))
                            (let ((_%tl191601191813%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191599191808%_)))
                                  (_%hd191600191811%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191599191808%_))))
                              (_%__kont194955194956%_
                               _%tl191601191813%_
                               _%hd191600191811%_)))
                          (_%__kont194961194962%_
                           _%tl191591191786%_
                           _%hd191590191784%_))
                      (_%__kont194961194962%_
                       _%tl191591191786%_
                       _%hd191590191784%_))
                  (if (equal? _%e191598191805%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191597191802%_))
                          (_%__kont194957194958%_ _%tl191591191786%_)
                          (_%__kont194961194962%_
                           _%tl191591191786%_
                           _%hd191590191784%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191597191802%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191591191786%_))
                              (let ((_%e191625191701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191591191786%_))))
                                (let ((_%tl191627191706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191625191701%_)))
                                      (_%hd191626191704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191625191701%_))))
                                  (_%__match195060195061%_
                                   _%e191589191781%_
                                   _%hd191590191784%_
                                   _%tl191591191786%_
                                   _%e191592191789%_
                                   _%hd191593191792%_
                                   _%tl191594191794%_
                                   _%e191595191797%_
                                   _%hd191596191800%_
                                   _%tl191597191802%_
                                   _%e191625191701%_
                                   _%hd191626191704%_
                                   _%tl191627191706%_)))
                              (_%__kont194961194962%_
                               _%tl191591191786%_
                               _%hd191590191784%_))
                          (_%__kont194961194962%_
                           _%tl191591191786%_
                           _%hd191590191784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191597191802%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191591191786%_))
                                                            (let ((_%e191625191701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191591191786%_))))
                      (let ((_%tl191627191706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191625191701%_)))
                            (_%hd191626191704%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191625191701%_))))
                        (_%__match195060195061%_
                         _%e191589191781%_
                         _%hd191590191784%_
                         _%tl191591191786%_
                         _%e191592191789%_
                         _%hd191593191792%_
                         _%tl191594191794%_
                         _%e191595191797%_
                         _%hd191596191800%_
                         _%tl191597191802%_
                         _%e191625191701%_
                         _%hd191626191704%_
                         _%tl191627191706%_)))
                    (_%__kont194961194962%_
                     _%tl191591191786%_
                     _%hd191590191784%_))
                (_%__kont194961194962%_
                 _%tl191591191786%_
                 _%hd191590191784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont194961194962%_
                                             _%tl191591191786%_
                                             _%hd191590191784%_))
                                        (_%__kont194961194962%_
                                         _%tl191591191786%_
                                         _%hd191590191784%_))
                                    (_%__kont194961194962%_
                                     _%tl191591191786%_
                                     _%hd191590191784%_))))
                            (_%__kont194961194962%_
                             _%tl191591191786%_
                             _%hd191590191784%_))))
                    (_%__kont194963194964%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self190644191554%_ _%ctx191556%_ _%stx191557%_ _%args191558%_)
        (let* ((_%self191560%_ _%self190644191554%_)
               (_%self191562%_ _%self191560%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191556%_ _%stx191557%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191242%_ _%stx191243%_)
        (let* ((_%__stx195069195070%_ _%stx191243%_)
               (_%g191246191286%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195069195070%_)))))
          (let ((_%__kont195071195072%_
                 (lambda (_%L191392%_ _%L191393%_)
                   (let ((_%$e191420%_
                          (member 'return:
                                  (let ((__tmp195501
                                         (lambda (_%g191412191415%_
                                                  _%g191413191417%_)
                                           (cons _%g191412191415%_
                                                 _%g191413191417%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195501 '() _%L191393%_))
                                  gx#stx-eq?)))
                     (if _%$e191420%_
                         ((lambda (_%tail191423%_)
                            (let ((_%type191425%_
                                   (let ((__tmp195502
                                          (let ((__tmp195503
                                                 (cadr _%tail191423%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195503))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191243%_
                                      __tmp195502))))
                              (gxc#check-return-type!
                               _%stx191243%_
                               _%L191392%_
                               _%type191425%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191242%_
                                 _%L191392%_))))
                          _%$e191420%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191242%_ _%L191392%_))))))
                (_%__kont195075195076%_
                 (lambda (_%L191315%_ _%L191316%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191242%_ _%L191315%_)))))
            (let ((_%__match195106195107%_
                   (lambda (_%e191250191336%_
                            _%hd191251191339%_
                            _%tl191252191341%_
                            _%e191253191344%_
                            _%hd191254191347%_
                            _%tl191255191349%_
                            _%e191256191352%_
                            _%hd191257191355%_
                            _%tl191258191357%_
                            _%__splice195073195074%_
                            _%target191259191360%_
                            _%tl191261191362%_)
                     (letrec ((_%loop191262191365%_
                               (lambda (_%hd191260191368%_
                                        _%signature191266191370%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191260191368%_))
                                     (let ((_%e191263191373%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191260191368%_))))
                                       (let ((_%lp-tl191265191378%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191263191373%_)))
                                             (_%lp-hd191264191376%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191263191373%_))))
                                         (_%loop191262191365%_
                                          _%lp-tl191265191378%_
                                          (cons _%lp-hd191264191376%_
                                                _%signature191266191370%_))))
                                     (let ((_%signature191267191381%_
                                            (reverse _%signature191266191370%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191255191349%_))
                                           (let ((_%e191268191384%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191255191349%_))))
                                             (let ((_%tl191270191389%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191268191384%_)))
                                                   (_%hd191269191387%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191268191384%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191270191389%_))
                                                   (_%__kont195071195072%_
                                                    _%hd191269191387%_
                                                    _%signature191267191381%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191246191286%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191246191286%_))))))))
                       (_%loop191262191365%_ _%target191259191360%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195069195070%_))
                  (let ((_%e191250191336%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195069195070%_))))
                    (let ((_%tl191252191341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191250191336%_)))
                          (_%hd191251191339%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191250191336%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191252191341%_))
                          (let ((_%e191253191344%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191252191341%_))))
                            (let ((_%tl191255191349%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191253191344%_)))
                                  (_%hd191254191347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191253191344%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191254191347%_))
                                  (let ((_%e191256191352%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191254191347%_))))
                                    (let ((_%tl191258191357%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191256191352%_)))
                                          (_%hd191257191355%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191256191352%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191257191355%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191257191355%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191258191357%_))
                                                  (let ((_%__splice195073195074%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191258191357%_
                                                            '0))))
                                                    (let ((_%tl191261191362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195073195074%_
                                                              '1)))
                                                          (_%target191259191360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195073195074%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191261191362%_))
                                                          (_%__match195106195107%_
                                                           _%e191250191336%_
                                                           _%hd191251191339%_
                                                           _%tl191252191341%_
                                                           _%e191253191344%_
                                                           _%hd191254191347%_
                                                           _%tl191255191349%_
                                                           _%e191256191352%_
                                                           _%hd191257191355%_
                                                           _%tl191258191357%_
                                                           _%__splice195073195074%_
                                                           _%target191259191360%_
                                                           _%tl191261191362%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191255191349%_))
                      (let ((_%e191279191307%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191255191349%_))))
                        (let ((_%tl191281191312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191279191307%_)))
                              (_%hd191280191310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191279191307%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191281191312%_))
                              (_%__kont195075195076%_
                               _%hd191280191310%_
                               _%hd191254191347%_)
                              (let ()
                                (declare (not safe))
                                (_%g191246191286%_)))))
                      (let () (declare (not safe)) (_%g191246191286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191255191349%_))
                                                      (let ((_%e191279191307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191255191349%_))))
                (let ((_%tl191281191312%_
                       (let () (declare (not safe)) (##cdr _%e191279191307%_)))
                      (_%hd191280191310%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191279191307%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191281191312%_))
                      (_%__kont195075195076%_
                       _%hd191280191310%_
                       _%hd191254191347%_)
                      (let () (declare (not safe)) (_%g191246191286%_)))))
              (let () (declare (not safe)) (_%g191246191286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191255191349%_))
                                                  (let ((_%e191279191307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191255191349%_))))
                                                    (let ((_%tl191281191312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191279191307%_)))
                                                          (_%hd191280191310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191279191307%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191281191312%_))
                                                          (_%__kont195075195076%_
                                                           _%hd191280191310%_
                                                           _%hd191254191347%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191246191286%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191246191286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191255191349%_))
                                              (let ((_%e191279191307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191255191349%_))))
                                                (let ((_%tl191281191312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191279191307%_)))
                                                      (_%hd191280191310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191279191307%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191281191312%_))
                                                      (_%__kont195075195076%_
                                                       _%hd191280191310%_
                                                       _%hd191254191347%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191246191286%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191246191286%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191255191349%_))
                                      (let ((_%e191279191307%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191255191349%_))))
                                        (let ((_%tl191281191312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191279191307%_)))
                                              (_%hd191280191310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191279191307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191281191312%_))
                                              (_%__kont195075195076%_
                                               _%hd191280191310%_
                                               _%hd191254191347%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191246191286%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191246191286%_))))))
                          (let () (declare (not safe)) (_%g191246191286%_)))))
                  (let () (declare (not safe)) (_%g191246191286%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191220%_ _%expr191221%_ _%type191222%_)
        (let ((_%$e191224%_ (not _%type191222%_)))
          (if _%$e191224%_
              _%$e191224%_
              (let ((_%$e191227%_
                     (eq? (##structure-ref _%type191222%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191227%_
                    _%$e191227%_
                    (let ((_%expr-type191231%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191221%_))))
                      (if (not _%expr-type191231%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191220%_
                             _%type191222%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191231%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191220%_
                                 _%type191222%_
                                 _%expr-type191231%_))
                              (let ((_%$e191235%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191231%_
                                        'gxc#!abort::t))))
                                (if _%$e191235%_
                                    _%$e191235%_
                                    (let ((_%$e191238%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191231%_
                                              _%type191222%_))))
                                      (if _%$e191238%_
                                          _%$e191238%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191220%_
                                             _%type191222%_
                                             _%expr-type191231%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self190646%_ _%stx190647%_)
        (let* ((_%__stx195151195152%_ _%stx190647%_)
               (_%g190652190762%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195151195152%_)))))
          (let ((_%__kont195153195154%_
                 (lambda (_%L191194%_ _%L191195%_ _%L191196%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191196%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190646%_ _%L191195%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self190646%_ _%L191194%_)))))
                (_%__kont195155195156%_
                 (lambda (_%L191020%_ _%L191021%_ _%L191022%_ _%L191023%_)
                   (let ((_%$e191055%_
                          (let ((__tmp195504
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L191023%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195504))))
                     (if _%$e191055%_
                         ((lambda (_%pred-type191058%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191058%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191058%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test191063%_
                                        (let ((__tmp195505
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L191023%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L191022%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195505
                                           _%stx190647%_
                                           _%self190646%_)))
                                       (_%K191067%_
                                        (let ((__tmp195506
                                               (lambda ()
                                                 (let ((__tmp195509
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self190646%_
                                                             _%L191021%_))))
                                                       (__tmp195507
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L191022%_))
                            (let ((__tmp195508
                                   (##structure-ref
                                    _%pred-type191058%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx190647%_
                               __tmp195508)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195509
                                                    gxc#current-compile-path-type
                                                    __tmp195507)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195506)))
                                       (_%E191070%_
                                        (let ((__tmp195510
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self190646%_
                                                    _%L191020%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195510)))
                                       (_%__stx195129195130%_ _%test191063%_)
                                       (_%g191074191088%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195129195130%_)))))
                                  (let ((_%__kont195131195132%_
                                         (lambda (_%L191116%_ _%L191117%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L191116%_))
                                               (force _%K191067%_)
                                               (force _%E191070%_))))
                                        (_%__kont195133195134%_
                                         (lambda ()
                                           (let ((__tmp195511
                                                  (cons '%#if
                                                        (cons _%test191063%_
                                                              (cons (force _%K191067%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E191070%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195511
                                              _%stx190647%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195129195130%_))
                                        (let ((_%e191078191100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195129195130%_))))
                                          (let ((_%tl191080191105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191078191100%_)))
                                                (_%hd191079191103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191078191100%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191080191105%_))
                                                (let ((_%e191081191108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191080191105%_))))
                                                  (let ((_%tl191083191113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191081191108%_)))
                                                        (_%hd191082191111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191081191108%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191083191113%_))
                                                        (_%__kont195131195132%_
                                                         _%hd191082191111%_
                                                         _%hd191079191103%_)
                                                        (_%__kont195133195134%_))))
                                                (_%__kont195133195134%_))))
                                        (_%__kont195133195134%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self190646%_
                                   _%stx190647%_))))
                          _%$e191055%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self190646%_
                            _%stx190647%_))))))
                (_%__kont195157195158%_
                 (lambda (_%L190896%_ _%L190897%_ _%L190898%_ _%L190899%_)
                   (gxc#optimize-if%
                    _%self190646%_
                    (let ((__tmp195512
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L190898%_
                                       (cons _%L190896%_
                                             (cons _%L190897%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195512 _%stx190647%_)))))
                (_%__kont195159195160%_
                 (lambda (_%L190799%_ _%L190800%_ _%L190801%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self190646%_ _%stx190647%_)))))
            (let ((_%__match195358195359%_
                   (lambda (_%e190716190824%_
                            _%hd190717190827%_
                            _%tl190718190829%_
                            _%e190719190832%_
                            _%hd190720190835%_
                            _%tl190721190837%_
                            _%e190722190840%_
                            _%hd190723190843%_
                            _%tl190724190845%_
                            _%e190725190848%_
                            _%hd190726190851%_
                            _%tl190727190853%_
                            _%e190728190856%_
                            _%hd190729190859%_
                            _%tl190730190861%_
                            _%e190731190864%_
                            _%hd190732190867%_
                            _%tl190733190869%_
                            _%e190734190872%_
                            _%hd190735190875%_
                            _%tl190736190877%_
                            _%e190737190880%_
                            _%hd190738190883%_
                            _%tl190739190885%_
                            _%e190740190888%_
                            _%hd190741190891%_
                            _%tl190742190893%_)
                     (let ((_%L190896%_ _%hd190741190891%_)
                           (_%L190897%_ _%hd190738190883%_)
                           (_%L190898%_ _%hd190735190875%_)
                           (_%L190899%_ _%hd190732190867%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L190899%_ 'not))
                           (_%__kont195157195158%_
                            _%L190896%_
                            _%L190897%_
                            _%L190898%_
                            _%L190899%_)
                           (_%__kont195159195160%_
                            _%hd190741190891%_
                            _%hd190738190883%_
                            _%hd190720190835%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195151195152%_))
                  (let ((_%e190657191146%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195151195152%_))))
                    (let ((_%tl190659191151%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190657191146%_)))
                          (_%hd190658191149%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190657191146%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190659191151%_))
                          (let ((_%e190660191154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190659191151%_))))
                            (let ((_%tl190662191159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190660191154%_)))
                                  (_%hd190661191157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190660191154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190661191157%_))
                                  (let ((_%e190663191162%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190661191157%_))))
                                    (let ((_%tl190665191167%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190663191162%_)))
                                          (_%hd190664191165%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190663191162%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190664191165%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd190664191165%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190665191167%_))
                                                  (let ((_%e190666191170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190665191167%_))))
                                                    (let ((_%tl190668191175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190666191170%_)))
                                                          (_%hd190667191173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190666191170%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190668191175%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl190662191159%_))
                      (let ((_%e190669191178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190662191159%_))))
                        (let ((_%tl190671191183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190669191178%_)))
                              (_%hd190670191181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190669191178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190671191183%_))
                              (let ((_%e190672191186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190671191183%_))))
                                (let ((_%tl190674191191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190672191186%_)))
                                      (_%hd190673191189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190672191186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190674191191%_))
                                      (_%__kont195153195154%_
                                       _%hd190673191189%_
                                       _%hd190670191181%_
                                       _%hd190667191173%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190652190762%_)))))
                      (let () (declare (not safe)) (_%g190652190762%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190662191159%_))
                      (let ((_%e190752190783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190662191159%_))))
                        (let ((_%tl190754190788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190752190783%_)))
                              (_%hd190753190786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190752190783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190754190788%_))
                              (let ((_%e190755190791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl190754190788%_))))
                                (let ((_%tl190757190796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190755190791%_)))
                                      (_%hd190756190794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190755190791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190757190796%_))
                                      (_%__kont195159195160%_
                                       _%hd190756190794%_
                                       _%hd190753190786%_
                                       _%hd190661191157%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g190652190762%_)))))
                      (let () (declare (not safe)) (_%g190652190762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190662191159%_))
                                                      (let ((_%e190752190783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190662191159%_))))
                (let ((_%tl190754190788%_
                       (let () (declare (not safe)) (##cdr _%e190752190783%_)))
                      (_%hd190753190786%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190752190783%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190754190788%_))
                      (let ((_%e190755190791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190754190788%_))))
                        (let ((_%tl190757190796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190755190791%_)))
                              (_%hd190756190794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190755190791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190757190796%_))
                              (_%__kont195159195160%_
                               _%hd190756190794%_
                               _%hd190753190786%_
                               _%hd190661191157%_)
                              (let ()
                                (declare (not safe))
                                (_%g190652190762%_)))))
                      (let () (declare (not safe)) (_%g190652190762%_)))))
              (let () (declare (not safe)) (_%g190652190762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd190664191165%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190665191167%_))
                                                      (let ((_%e190688190956%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190665191167%_))))
                (let ((_%tl190690190961%_
                       (let () (declare (not safe)) (##cdr _%e190688190956%_)))
                      (_%hd190689190959%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190688190956%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd190689190959%_))
                      (let ((_%e190691190964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd190689190959%_))))
                        (let ((_%tl190693190969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190691190964%_)))
                              (_%hd190692190967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190691190964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd190692190967%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd190692190967%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190693190969%_))
                                      (let ((_%e190694190972%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190693190969%_))))
                                        (let ((_%tl190696190977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190694190972%_)))
                                              (_%hd190695190975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190694190972%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190696190977%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190690190961%_))
                                                  (let ((_%e190697190980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190690190961%_))))
                                                    (let ((_%tl190699190985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190697190980%_)))
                                                          (_%hd190698190983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190697190980%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd190698190983%_))
                                                          (let ((_%e190700190988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd190698190983%_))))
                    (let ((_%tl190702190993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190700190988%_)))
                          (_%hd190701190991%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190700190988%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd190701190991%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd190701190991%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190702190993%_))
                                  (let ((_%e190703190996%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190702190993%_))))
                                    (let ((_%tl190705191001%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190703190996%_)))
                                          (_%hd190704190999%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190703190996%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190705191001%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190699190985%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190662191159%_))
                                                  (let ((_%e190706191004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190662191159%_))))
                                                    (let ((_%tl190708191009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190706191004%_)))
                                                          (_%hd190707191007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190706191004%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190708191009%_))
                                                          (let ((_%e190709191012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190708191009%_))))
                    (let ((_%tl190711191017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190709191012%_)))
                          (_%hd190710191015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190709191012%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190711191017%_))
                          (_%__kont195155195156%_
                           _%hd190710191015%_
                           _%hd190707191007%_
                           _%hd190704190999%_
                           _%hd190695190975%_)
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190662191159%_))
                                                  (let ((_%e190752190783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190662191159%_))))
                                                    (let ((_%tl190754190788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190752190783%_)))
                                                          (_%hd190753190786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190752190783%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190754190788%_))
                                                          (let ((_%e190755190791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190754190788%_))))
                    (let ((_%tl190757190796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190755190791%_)))
                          (_%hd190756190794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190755190791%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190757190796%_))
                          (_%__kont195159195160%_
                           _%hd190756190794%_
                           _%hd190753190786%_
                           _%hd190661191157%_)
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190699190985%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190662191159%_))
                                                  (let ((_%e190737190880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190662191159%_))))
                                                    (let ((_%tl190739190885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190737190880%_)))
                                                          (_%hd190738190883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190737190880%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190739190885%_))
                                                          (let ((_%e190740190888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190739190885%_))))
                    (let ((_%tl190742190893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190740190888%_)))
                          (_%hd190741190891%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190740190888%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190742190893%_))
                          (_%__match195358195359%_
                           _%e190657191146%_
                           _%hd190658191149%_
                           _%tl190659191151%_
                           _%e190660191154%_
                           _%hd190661191157%_
                           _%tl190662191159%_
                           _%e190663191162%_
                           _%hd190664191165%_
                           _%tl190665191167%_
                           _%e190688190956%_
                           _%hd190689190959%_
                           _%tl190690190961%_
                           _%e190691190964%_
                           _%hd190692190967%_
                           _%tl190693190969%_
                           _%e190694190972%_
                           _%hd190695190975%_
                           _%tl190696190977%_
                           _%e190697190980%_
                           _%hd190698190983%_
                           _%tl190699190985%_
                           _%e190737190880%_
                           _%hd190738190883%_
                           _%tl190739190885%_
                           _%e190740190888%_
                           _%hd190741190891%_
                           _%tl190742190893%_)
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190662191159%_))
                                                  (let ((_%e190752190783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190662191159%_))))
                                                    (let ((_%tl190754190788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190752190783%_)))
                                                          (_%hd190753190786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190752190783%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190754190788%_))
                                                          (let ((_%e190755190791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190754190788%_))))
                    (let ((_%tl190757190796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190755190791%_)))
                          (_%hd190756190794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190755190791%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190757190796%_))
                          (_%__kont195159195160%_
                           _%hd190756190794%_
                           _%hd190753190786%_
                           _%hd190661191157%_)
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190699190985%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190662191159%_))
                                          (let ((_%e190737190880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190662191159%_))))
                                            (let ((_%tl190739190885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190737190880%_)))
                                                  (_%hd190738190883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190737190880%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190739190885%_))
                                                  (let ((_%e190740190888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190739190885%_))))
                                                    (let ((_%tl190742190893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190740190888%_)))
                                                          (_%hd190741190891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190740190888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190742190893%_))
                                                          (_%__match195358195359%_
                                                           _%e190657191146%_
                                                           _%hd190658191149%_
                                                           _%tl190659191151%_
                                                           _%e190660191154%_
                                                           _%hd190661191157%_
                                                           _%tl190662191159%_
                                                           _%e190663191162%_
                                                           _%hd190664191165%_
                                                           _%tl190665191167%_
                                                           _%e190688190956%_
                                                           _%hd190689190959%_
                                                           _%tl190690190961%_
                                                           _%e190691190964%_
                                                           _%hd190692190967%_
                                                           _%tl190693190969%_
                                                           _%e190694190972%_
                                                           _%hd190695190975%_
                                                           _%tl190696190977%_
                                                           _%e190697190980%_
                                                           _%hd190698190983%_
                                                           _%tl190699190985%_
                                                           _%e190737190880%_
                                                           _%hd190738190883%_
                                                           _%tl190739190885%_
                                                           _%e190740190888%_
                                                           _%hd190741190891%_
                                                           _%tl190742190893%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190652190762%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190662191159%_))
                                          (let ((_%e190752190783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190662191159%_))))
                                            (let ((_%tl190754190788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190752190783%_)))
                                                  (_%hd190753190786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190752190783%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190754190788%_))
                                                  (let ((_%e190755190791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190754190788%_))))
                                                    (let ((_%tl190757190796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190755190791%_)))
                                                          (_%hd190756190794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190755190791%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190757190796%_))
                                                          (_%__kont195159195160%_
                                                           _%hd190756190794%_
                                                           _%hd190753190786%_
                                                           _%hd190661191157%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190652190762%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190699190985%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190662191159%_))
                                      (let ((_%e190737190880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190662191159%_))))
                                        (let ((_%tl190739190885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190737190880%_)))
                                              (_%hd190738190883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190737190880%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190739190885%_))
                                              (let ((_%e190740190888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190739190885%_))))
                                                (let ((_%tl190742190893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190740190888%_)))
                                                      (_%hd190741190891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190740190888%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190742190893%_))
                                                      (_%__match195358195359%_
                                                       _%e190657191146%_
                                                       _%hd190658191149%_
                                                       _%tl190659191151%_
                                                       _%e190660191154%_
                                                       _%hd190661191157%_
                                                       _%tl190662191159%_
                                                       _%e190663191162%_
                                                       _%hd190664191165%_
                                                       _%tl190665191167%_
                                                       _%e190688190956%_
                                                       _%hd190689190959%_
                                                       _%tl190690190961%_
                                                       _%e190691190964%_
                                                       _%hd190692190967%_
                                                       _%tl190693190969%_
                                                       _%e190694190972%_
                                                       _%hd190695190975%_
                                                       _%tl190696190977%_
                                                       _%e190697190980%_
                                                       _%hd190698190983%_
                                                       _%tl190699190985%_
                                                       _%e190737190880%_
                                                       _%hd190738190883%_
                                                       _%tl190739190885%_
                                                       _%e190740190888%_
                                                       _%hd190741190891%_
                                                       _%tl190742190893%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190652190762%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190652190762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190662191159%_))
                                      (let ((_%e190752190783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190662191159%_))))
                                        (let ((_%tl190754190788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190752190783%_)))
                                              (_%hd190753190786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190752190783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190754190788%_))
                                              (let ((_%e190755190791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190754190788%_))))
                                                (let ((_%tl190757190796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190755190791%_)))
                                                      (_%hd190756190794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190755190791%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190757190796%_))
                                                      (_%__kont195159195160%_
                                                       _%hd190756190794%_
                                                       _%hd190753190786%_
                                                       _%hd190661191157%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190652190762%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190652190762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190699190985%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190662191159%_))
                                  (let ((_%e190737190880%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190662191159%_))))
                                    (let ((_%tl190739190885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190737190880%_)))
                                          (_%hd190738190883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190737190880%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190739190885%_))
                                          (let ((_%e190740190888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190739190885%_))))
                                            (let ((_%tl190742190893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190740190888%_)))
                                                  (_%hd190741190891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190740190888%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190742190893%_))
                                                  (_%__match195358195359%_
                                                   _%e190657191146%_
                                                   _%hd190658191149%_
                                                   _%tl190659191151%_
                                                   _%e190660191154%_
                                                   _%hd190661191157%_
                                                   _%tl190662191159%_
                                                   _%e190663191162%_
                                                   _%hd190664191165%_
                                                   _%tl190665191167%_
                                                   _%e190688190956%_
                                                   _%hd190689190959%_
                                                   _%tl190690190961%_
                                                   _%e190691190964%_
                                                   _%hd190692190967%_
                                                   _%tl190693190969%_
                                                   _%e190694190972%_
                                                   _%hd190695190975%_
                                                   _%tl190696190977%_
                                                   _%e190697190980%_
                                                   _%hd190698190983%_
                                                   _%tl190699190985%_
                                                   _%e190737190880%_
                                                   _%hd190738190883%_
                                                   _%tl190739190885%_
                                                   _%e190740190888%_
                                                   _%hd190741190891%_
                                                   _%tl190742190893%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190662191159%_))
                                  (let ((_%e190752190783%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190662191159%_))))
                                    (let ((_%tl190754190788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190752190783%_)))
                                          (_%hd190753190786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190752190783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190754190788%_))
                                          (let ((_%e190755190791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190754190788%_))))
                                            (let ((_%tl190757190796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190755190791%_)))
                                                  (_%hd190756190794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190755190791%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190757190796%_))
                                                  (_%__kont195159195160%_
                                                   _%hd190756190794%_
                                                   _%hd190753190786%_
                                                   _%hd190661191157%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190699190985%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190662191159%_))
                          (let ((_%e190737190880%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190662191159%_))))
                            (let ((_%tl190739190885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190737190880%_)))
                                  (_%hd190738190883%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190737190880%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190739190885%_))
                                  (let ((_%e190740190888%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190739190885%_))))
                                    (let ((_%tl190742190893%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190740190888%_)))
                                          (_%hd190741190891%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190740190888%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190742190893%_))
                                          (_%__match195358195359%_
                                           _%e190657191146%_
                                           _%hd190658191149%_
                                           _%tl190659191151%_
                                           _%e190660191154%_
                                           _%hd190661191157%_
                                           _%tl190662191159%_
                                           _%e190663191162%_
                                           _%hd190664191165%_
                                           _%tl190665191167%_
                                           _%e190688190956%_
                                           _%hd190689190959%_
                                           _%tl190690190961%_
                                           _%e190691190964%_
                                           _%hd190692190967%_
                                           _%tl190693190969%_
                                           _%e190694190972%_
                                           _%hd190695190975%_
                                           _%tl190696190977%_
                                           _%e190697190980%_
                                           _%hd190698190983%_
                                           _%tl190699190985%_
                                           _%e190737190880%_
                                           _%hd190738190883%_
                                           _%tl190739190885%_
                                           _%e190740190888%_
                                           _%hd190741190891%_
                                           _%tl190742190893%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))))
                          (let () (declare (not safe)) (_%g190652190762%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190662191159%_))
                          (let ((_%e190752190783%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190662191159%_))))
                            (let ((_%tl190754190788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190752190783%_)))
                                  (_%hd190753190786%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190752190783%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190754190788%_))
                                  (let ((_%e190755190791%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190754190788%_))))
                                    (let ((_%tl190757190796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190755190791%_)))
                                          (_%hd190756190794%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190755190791%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190757190796%_))
                                          (_%__kont195159195160%_
                                           _%hd190756190794%_
                                           _%hd190753190786%_
                                           _%hd190661191157%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g190652190762%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190662191159%_))
                                                      (let ((_%e190752190783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190662191159%_))))
                (let ((_%tl190754190788%_
                       (let () (declare (not safe)) (##cdr _%e190752190783%_)))
                      (_%hd190753190786%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190752190783%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190754190788%_))
                      (let ((_%e190755190791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190754190788%_))))
                        (let ((_%tl190757190796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190755190791%_)))
                              (_%hd190756190794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190755190791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190757190796%_))
                              (_%__kont195159195160%_
                               _%hd190756190794%_
                               _%hd190753190786%_
                               _%hd190661191157%_)
                              (let ()
                                (declare (not safe))
                                (_%g190652190762%_)))))
                      (let () (declare (not safe)) (_%g190652190762%_)))))
              (let () (declare (not safe)) (_%g190652190762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190662191159%_))
                                                  (let ((_%e190752190783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190662191159%_))))
                                                    (let ((_%tl190754190788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190752190783%_)))
                                                          (_%hd190753190786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190752190783%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl190754190788%_))
                                                          (let ((_%e190755190791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190754190788%_))))
                    (let ((_%tl190757190796%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190755190791%_)))
                          (_%hd190756190794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190755190791%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl190757190796%_))
                          (_%__kont195159195160%_
                           _%hd190756190794%_
                           _%hd190753190786%_
                           _%hd190661191157%_)
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190662191159%_))
                                          (let ((_%e190752190783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190662191159%_))))
                                            (let ((_%tl190754190788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190752190783%_)))
                                                  (_%hd190753190786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190752190783%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190754190788%_))
                                                  (let ((_%e190755190791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190754190788%_))))
                                                    (let ((_%tl190757190796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190755190791%_)))
                                                          (_%hd190756190794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190755190791%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190757190796%_))
                                                          (_%__kont195159195160%_
                                                           _%hd190756190794%_
                                                           _%hd190753190786%_
                                                           _%hd190661191157%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190652190762%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190662191159%_))
                                      (let ((_%e190752190783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190662191159%_))))
                                        (let ((_%tl190754190788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190752190783%_)))
                                              (_%hd190753190786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190752190783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190754190788%_))
                                              (let ((_%e190755190791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190754190788%_))))
                                                (let ((_%tl190757190796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190755190791%_)))
                                                      (_%hd190756190794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190755190791%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190757190796%_))
                                                      (_%__kont195159195160%_
                                                       _%hd190756190794%_
                                                       _%hd190753190786%_
                                                       _%hd190661191157%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190652190762%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190652190762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190662191159%_))
                                  (let ((_%e190752190783%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190662191159%_))))
                                    (let ((_%tl190754190788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190752190783%_)))
                                          (_%hd190753190786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190752190783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl190754190788%_))
                                          (let ((_%e190755190791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl190754190788%_))))
                                            (let ((_%tl190757190796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e190755190791%_)))
                                                  (_%hd190756190794%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e190755190791%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl190757190796%_))
                                                  (_%__kont195159195160%_
                                                   _%hd190756190794%_
                                                   _%hd190753190786%_
                                                   _%hd190661191157%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190652190762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190662191159%_))
                          (let ((_%e190752190783%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190662191159%_))))
                            (let ((_%tl190754190788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190752190783%_)))
                                  (_%hd190753190786%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190752190783%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl190754190788%_))
                                  (let ((_%e190755190791%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl190754190788%_))))
                                    (let ((_%tl190757190796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190755190791%_)))
                                          (_%hd190756190794%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190755190791%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl190757190796%_))
                                          (_%__kont195159195160%_
                                           _%hd190756190794%_
                                           _%hd190753190786%_
                                           _%hd190661191157%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g190652190762%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))))
                          (let () (declare (not safe)) (_%g190652190762%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl190662191159%_))
                  (let ((_%e190752190783%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl190662191159%_))))
                    (let ((_%tl190754190788%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190752190783%_)))
                          (_%hd190753190786%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190752190783%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190754190788%_))
                          (let ((_%e190755190791%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190754190788%_))))
                            (let ((_%tl190757190796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190755190791%_)))
                                  (_%hd190756190794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190755190791%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl190757190796%_))
                                  (_%__kont195159195160%_
                                   _%hd190756190794%_
                                   _%hd190753190786%_
                                   _%hd190661191157%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g190652190762%_)))))
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190662191159%_))
                                                      (let ((_%e190752190783%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190662191159%_))))
                (let ((_%tl190754190788%_
                       (let () (declare (not safe)) (##cdr _%e190752190783%_)))
                      (_%hd190753190786%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190752190783%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl190754190788%_))
                      (let ((_%e190755190791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl190754190788%_))))
                        (let ((_%tl190757190796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190755190791%_)))
                              (_%hd190756190794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190755190791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190757190796%_))
                              (_%__kont195159195160%_
                               _%hd190756190794%_
                               _%hd190753190786%_
                               _%hd190661191157%_)
                              (let ()
                                (declare (not safe))
                                (_%g190652190762%_)))))
                      (let () (declare (not safe)) (_%g190652190762%_)))))
              (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190662191159%_))
                                              (let ((_%e190752190783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190662191159%_))))
                                                (let ((_%tl190754190788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190752190783%_)))
                                                      (_%hd190753190786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190752190783%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl190754190788%_))
                                                      (let ((_%e190755190791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl190754190788%_))))
                (let ((_%tl190757190796%_
                       (let () (declare (not safe)) (##cdr _%e190755190791%_)))
                      (_%hd190756190794%_
                       (let ()
                         (declare (not safe))
                         (##car _%e190755190791%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190757190796%_))
                      (_%__kont195159195160%_
                       _%hd190756190794%_
                       _%hd190753190786%_
                       _%hd190661191157%_)
                      (let () (declare (not safe)) (_%g190652190762%_)))))
              (let () (declare (not safe)) (_%g190652190762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g190652190762%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl190662191159%_))
                                      (let ((_%e190752190783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl190662191159%_))))
                                        (let ((_%tl190754190788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190752190783%_)))
                                              (_%hd190753190786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190752190783%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl190754190788%_))
                                              (let ((_%e190755190791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl190754190788%_))))
                                                (let ((_%tl190757190796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e190755190791%_)))
                                                      (_%hd190756190794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e190755190791%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190757190796%_))
                                                      (_%__kont195159195160%_
                                                       _%hd190756190794%_
                                                       _%hd190753190786%_
                                                       _%hd190661191157%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190652190762%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190652190762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190652190762%_))))))
                          (let () (declare (not safe)) (_%g190652190762%_)))))
                  (let () (declare (not safe)) (_%g190652190762%_))))))))))
