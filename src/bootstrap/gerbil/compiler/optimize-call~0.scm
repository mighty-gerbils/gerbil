(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712093482)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp189670 (list gxc#::basic-xform::t))
            (__tmp189669 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp189670
         '()
         __tmp189669
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189219%_
        (apply make-instance gxc#::optimize-call::t _%$args189219%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp189671
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
        (__make-promise __tmp189671)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189211%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189214%_
                (let ((__obj189661
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj189661))
               (__tmp189672
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189214%_ _%stx189211%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189672
           gxc#current-compile-method
           _%self189214%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp189674 (list gxc#::void::t))
            (__tmp189673 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp189674
         '()
         __tmp189673
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189208%_
        (apply make-instance gxc#::check-return-type::t _%$args189208%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp189675
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
        (__make-promise __tmp189675)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189200%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189203%_
                (let ((__obj189663
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj189663))
               (__tmp189676
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189203%_ _%stx189200%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189676
           gxc#current-compile-method
           _%self189203%_))))
    (define gxc#optimize-call%
      (lambda (_%self188816%_ _%stx188817%_)
        (let* ((_%__stx189274189275%_ _%stx188817%_)
               (_%g188820188866%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189274189275%_)))))
          (let ((_%__kont189276189277%_
                 (lambda (_%L189003%_ _%L189004%_)
                   (let* ((_%rator-id189024%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189004%_)))
                          (_%rator-type189026%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189024%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type189026%_))
                             (eq? (##structure-ref
                                   _%rator-type189026%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%self188816%_ _%stx188817%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189026%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp189677
                                      (##structure-ref
                                       _%rator-type189026%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189024%_
                                  '" => "
                                  _%rator-type189026%_
                                  '" "
                                  __tmp189677))
                               (let* ((_%optimized189041%_
                                       (let ((__method189664
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189026%_
                                                 'optimize-call))))
                                         (if __method189664
                                             (__method189664
                                              _%rator-type189026%_
                                              _%self188816%_
                                              _%stx188817%_
                                              (let ((__tmp189678
                                                     (lambda (_%g189033189036%_
                                                              _%g189034189038%_)
                                                       (cons _%g189033189036%_
                                                             _%g189034189038%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp189678
                                                 '()
                                                 _%L189003%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189026%_
                                                      'optimize-call)))))
                                      (_%__stx189222189223%_
                                       _%optimized189041%_)
                                      (_%g189044189073%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189222189223%_)))))
                                 (let ((_%__kont189224189225%_
                                        (lambda (_%L189141%_ _%L189142%_)
                                          (let ((_%optimized-rator-id189169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189142%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type189026%_))
                                                         (eq? _%optimized-rator-id189169%_
                                                              _%rator-id189024%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189169%_
                                                              gxc#checked-primitives)))
                                                _%optimized189041%_
                                                (let ((__tmp189679
                                                       (let ((__tmp189680
                                                              (let ((__tmp189683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189142%_ '())))
                            (__tmp189681
                             (let ((__tmp189682
                                    (lambda (_%g189173189176%_
                                             _%g189174189178%_)
                                      (cons _%g189173189176%_
                                            _%g189174189178%_))))
                               (declare (not safe))
                               (__foldr1 __tmp189682 '() _%L189141%_))))
                        (declare (not safe))
                        (cons __tmp189683 __tmp189681))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp189680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp189679
                                                   _%stx188817%_))))))
                                       (_%__kont189228189229%_
                                        (lambda () _%optimized189041%_)))
                                   (let ((_%__match189271189272%_
                                          (lambda (_%e189050189085%_
                                                   _%hd189049189088%_
                                                   _%tl189048189090%_
                                                   _%e189053189093%_
                                                   _%hd189052189096%_
                                                   _%tl189051189098%_
                                                   _%e189056189101%_
                                                   _%hd189055189104%_
                                                   _%tl189054189106%_
                                                   _%e189059189109%_
                                                   _%hd189058189112%_
                                                   _%tl189057189114%_
                                                   _%__splice189226189227%_
                                                   _%target189060189117%_
                                                   _%tl189062189119%_)
                                            (letrec ((_%loop189063189122%_
                                                      (lambda (_%hd189061189125%_
                                                               _%arg189067189127%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189061189125%_))
                                                            (let ((_%e189064189130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189061189125%_))))
                      (let ((_%lp-tl189066189135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189064189130%_)))
                            (_%lp-hd189065189133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189064189130%_))))
                        (let ((__tmp189684
                               (cons _%lp-hd189065189133%_
                                     _%arg189067189127%_)))
                          (declare (not safe))
                          (_%loop189063189122%_
                           _%lp-tl189066189135%_
                           __tmp189684))))
                    (let ((_%arg189068189138%_ (reverse _%arg189067189127%_)))
                      (_%__kont189224189225%_
                       _%arg189068189138%_
                       _%hd189058189112%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop189063189122%_
                                                 _%target189060189117%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189222189223%_))
                                         (let ((_%e189050189085%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189222189223%_))))
                                           (let ((_%tl189048189090%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189050189085%_)))
                                                 (_%hd189049189088%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189050189085%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189049189088%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189049189088%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189048189090%_))
                                                         (let ((_%e189053189093%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189048189090%_))))
                   (let ((_%tl189051189098%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189053189093%_)))
                         (_%hd189052189096%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189053189093%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189052189096%_))
                         (let ((_%e189056189101%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189052189096%_))))
                           (let ((_%tl189054189106%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189056189101%_)))
                                 (_%hd189055189104%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189056189101%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189055189104%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189055189104%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189054189106%_))
                                         (let ((_%e189059189109%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189054189106%_))))
                                           (let ((_%tl189057189114%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189059189109%_)))
                                                 (_%hd189058189112%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189059189109%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189057189114%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189051189098%_))
                                                     (let ((_%__splice189226189227%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189051189098%_
                                                               '0))))
                                                       (let ((_%tl189062189119%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189226189227%_ '1)))
                     (_%target189060189117%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189226189227%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189062189119%_))
                     (_%__match189271189272%_
                      _%e189050189085%_
                      _%hd189049189088%_
                      _%tl189048189090%_
                      _%e189053189093%_
                      _%hd189052189096%_
                      _%tl189051189098%_
                      _%e189056189101%_
                      _%hd189055189104%_
                      _%tl189054189106%_
                      _%e189059189109%_
                      _%hd189058189112%_
                      _%tl189057189114%_
                      _%__splice189226189227%_
                      _%target189060189117%_
                      _%tl189062189119%_)
                     (_%__kont189228189229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189228189229%_))
                                                 (_%__kont189228189229%_))))
                                         (_%__kont189228189229%_))
                                     (_%__kont189228189229%_))
                                 (_%__kont189228189229%_))))
                         (_%__kont189228189229%_))))
                 (_%__kont189228189229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189228189229%_))
                                                 (_%__kont189228189229%_))))
                                         (_%__kont189228189229%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189026%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189026%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ()
                                   (let ((__tmp189685
                                          (let ((__tmp189686
                                                 (let ((__tmp189689
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%L189004%_ '())))
               (__tmp189687
                (map (lambda (_%g189184189186%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self188816%_ _%g189184189186%_)))
                     (let ((__tmp189688
                            (lambda (_%g189188189191%_ _%g189189189193%_)
                              (cons _%g189188189191%_ _%g189189189193%_))))
                       (declare (not safe))
                       (__foldr1 __tmp189688 '() _%L189003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp189689
                                                         __tmp189687))))
                                            (declare (not safe))
                                            (cons '%#call-unchecked
                                                  __tmp189686))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189685
                                      _%stx188817%_)))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"illegal application; not a procedure"
                                      _%stx188817%_
                                      _%rator-type189026%_)))))))))
                (_%__kont189280189281%_
                 (lambda (_%L188911%_ _%L188912%_)
                   (let ((_%rator-type188929%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L188912%_))))
                     (if (and _%rator-type188929%_
                              (eq? (##structure-ref
                                    _%rator-type188929%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp189690
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type188929%_))))
                                (declare (not safe))
                                (not __tmp189690)))
                         (let ((__tmp189691
                                (let ((__tmp189692
                                       (let ((__tmp189695
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self188816%_
                                                 _%L188912%_)))
                                             (__tmp189693
                                              (map (lambda (_%g188930188932%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188816%_
                                                        _%g188930188932%_)))
                                                   (let ((__tmp189694
                                                          (lambda (_%g188934188937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g188935188939%_)
                    (cons _%g188934188937%_ _%g188935188939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp189694
                                                      '()
                                                      _%L188911%_)))))
                                         (declare (not safe))
                                         (cons __tmp189695 __tmp189693))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp189692))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp189691 _%stx188817%_))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self188816%_ _%stx188817%_)))))))
            (let* ((_%__match189341189342%_
                    (lambda (_%e188849188871%_
                             _%hd188848188874%_
                             _%tl188847188876%_
                             _%e188852188879%_
                             _%hd188851188882%_
                             _%tl188850188884%_
                             _%__splice189282189283%_
                             _%target188853188887%_
                             _%tl188855188889%_)
                      (letrec ((_%loop188856188892%_
                                (lambda (_%hd188854188895%_
                                         _%rand188860188897%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188854188895%_))
                                      (let ((_%e188857188900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188854188895%_))))
                                        (let ((_%lp-tl188859188905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188857188900%_)))
                                              (_%lp-hd188858188903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188857188900%_))))
                                          (let ((__tmp189696
                                                 (cons _%lp-hd188858188903%_
                                                       _%rand188860188897%_)))
                                            (declare (not safe))
                                            (_%loop188856188892%_
                                             _%lp-tl188859188905%_
                                             __tmp189696))))
                                      (let ((_%rand188861188908%_
                                             (reverse _%rand188860188897%_)))
                                        (_%__kont189280189281%_
                                         _%rand188861188908%_
                                         _%hd188851188882%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188856188892%_ _%target188853188887%_ '())))))
                   (_%__match189321189322%_
                    (lambda (_%e188826188947%_
                             _%hd188825188950%_
                             _%tl188824188952%_
                             _%e188829188955%_
                             _%hd188828188958%_
                             _%tl188827188960%_
                             _%e188832188963%_
                             _%hd188831188966%_
                             _%tl188830188968%_
                             _%e188835188971%_
                             _%hd188834188974%_
                             _%tl188833188976%_
                             _%__splice189278189279%_
                             _%target188836188979%_
                             _%tl188838188981%_)
                      (letrec ((_%loop188839188984%_
                                (lambda (_%hd188837188987%_
                                         _%rand188843188989%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188837188987%_))
                                      (let ((_%e188840188992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188837188987%_))))
                                        (let ((_%lp-tl188842188997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188840188992%_)))
                                              (_%lp-hd188841188995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188840188992%_))))
                                          (let ((__tmp189697
                                                 (cons _%lp-hd188841188995%_
                                                       _%rand188843188989%_)))
                                            (declare (not safe))
                                            (_%loop188839188984%_
                                             _%lp-tl188842188997%_
                                             __tmp189697))))
                                      (let ((_%rand188844189000%_
                                             (reverse _%rand188843188989%_)))
                                        (_%__kont189276189277%_
                                         _%rand188844189000%_
                                         _%hd188834188974%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188839188984%_
                           _%target188836188979%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189274189275%_))
                  (let ((_%e188826188947%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189274189275%_))))
                    (let ((_%tl188824188952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188826188947%_)))
                          (_%hd188825188950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188826188947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188824188952%_))
                          (let ((_%e188829188955%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188824188952%_))))
                            (let ((_%tl188827188960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188829188955%_)))
                                  (_%hd188828188958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188829188955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188828188958%_))
                                  (let ((_%e188832188963%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188828188958%_))))
                                    (let ((_%tl188830188968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188832188963%_)))
                                          (_%hd188831188966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188832188963%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188831188966%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188831188966%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188830188968%_))
                                                  (let ((_%e188835188971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188830188968%_))))
                                                    (let ((_%tl188833188976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188835188971%_)))
                                                          (_%hd188834188974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188835188971%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188833188976%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188827188960%_))
                      (let ((_%__splice189278189279%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188827188960%_
                                '0))))
                        (let ((_%tl188838188981%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189278189279%_ '1)))
                              (_%target188836188979%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189278189279%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188838188981%_))
                              (_%__match189321189322%_
                               _%e188826188947%_
                               _%hd188825188950%_
                               _%tl188824188952%_
                               _%e188829188955%_
                               _%hd188828188958%_
                               _%tl188827188960%_
                               _%e188832188963%_
                               _%hd188831188966%_
                               _%tl188830188968%_
                               _%e188835188971%_
                               _%hd188834188974%_
                               _%tl188833188976%_
                               _%__splice189278189279%_
                               _%target188836188979%_
                               _%tl188838188981%_)
                              (let ()
                                (declare (not safe))
                                (_%g188820188866%_)))))
                      (let () (declare (not safe)) (_%g188820188866%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl188827188960%_))
                      (let ((_%__splice189282189283%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188827188960%_
                                '0))))
                        (let ((_%tl188855188889%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189282189283%_ '1)))
                              (_%target188853188887%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189282189283%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188855188889%_))
                              (_%__match189341189342%_
                               _%e188826188947%_
                               _%hd188825188950%_
                               _%tl188824188952%_
                               _%e188829188955%_
                               _%hd188828188958%_
                               _%tl188827188960%_
                               _%__splice189282189283%_
                               _%target188853188887%_
                               _%tl188855188889%_)
                              (let ()
                                (declare (not safe))
                                (_%g188820188866%_)))))
                      (let () (declare (not safe)) (_%g188820188866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl188827188960%_))
                                                      (let ((_%__splice189282189283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl188827188960%_ '0))))
                (let ((_%tl188855188889%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189282189283%_ '1)))
                      (_%target188853188887%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189282189283%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188855188889%_))
                      (_%__match189341189342%_
                       _%e188826188947%_
                       _%hd188825188950%_
                       _%tl188824188952%_
                       _%e188829188955%_
                       _%hd188828188958%_
                       _%tl188827188960%_
                       _%__splice189282189283%_
                       _%target188853188887%_
                       _%tl188855188889%_)
                      (let () (declare (not safe)) (_%g188820188866%_)))))
              (let () (declare (not safe)) (_%g188820188866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188827188960%_))
                                                  (let ((_%__splice189282189283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188827188960%_
                                                            '0))))
                                                    (let ((_%tl188855188889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189282189283%_
                                                              '1)))
                                                          (_%target188853188887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189282189283%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188855188889%_))
                                                          (_%__match189341189342%_
                                                           _%e188826188947%_
                                                           _%hd188825188950%_
                                                           _%tl188824188952%_
                                                           _%e188829188955%_
                                                           _%hd188828188958%_
                                                           _%tl188827188960%_
                                                           _%__splice189282189283%_
                                                           _%target188853188887%_
                                                           _%tl188855188889%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188820188866%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188820188866%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl188827188960%_))
                                              (let ((_%__splice189282189283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl188827188960%_
                                                        '0))))
                                                (let ((_%tl188855188889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189282189283%_
                                                          '1)))
                                                      (_%target188853188887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189282189283%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188855188889%_))
                                                      (_%__match189341189342%_
                                                       _%e188826188947%_
                                                       _%hd188825188950%_
                                                       _%tl188824188952%_
                                                       _%e188829188955%_
                                                       _%hd188828188958%_
                                                       _%tl188827188960%_
                                                       _%__splice189282189283%_
                                                       _%target188853188887%_
                                                       _%tl188855188889%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188820188866%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188820188866%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188827188960%_))
                                      (let ((_%__splice189282189283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188827188960%_
                                                '0))))
                                        (let ((_%tl188855188889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189282189283%_
                                                  '1)))
                                              (_%target188853188887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189282189283%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188855188889%_))
                                              (_%__match189341189342%_
                                               _%e188826188947%_
                                               _%hd188825188950%_
                                               _%tl188824188952%_
                                               _%e188829188955%_
                                               _%hd188828188958%_
                                               _%tl188827188960%_
                                               _%__splice189282189283%_
                                               _%target188853188887%_
                                               _%tl188855188889%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188820188866%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188820188866%_))))))
                          (let () (declare (not safe)) (_%g188820188866%_)))))
                  (let () (declare (not safe)) (_%g188820188866%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188778%_ _%ctx188779%_ _%stx188780%_ _%args188781%_)
        (let ()
          (let ((_%self188784%_ _%self188778%_))
            (let ()
              (if (let ((__method189665
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188784%_ 'check-arguments))))
                    (if __method189665
                        (__method189665
                         _%self188784%_
                         _%ctx188779%_
                         _%stx188780%_
                         _%args188781%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188784%_
                                 'check-arguments))))
                  (let* ((_%signature188794%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188784%_
                             '2
                             '#f
                             '#f)))
                         (_%signature188796%_ _%signature188794%_))
                    (let ((_%$e188806%_
                           (if _%signature188796%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%signature188796%_
                                  '4
                                  '#f
                                  '#f))
                               '#f)))
                      (if _%$e188806%_
                          ((lambda (_%unchecked188809%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%unchecked188809%_))
                                 (let ((__tmp189698
                                        (let ((__tmp189699
                                               (let ((__tmp189701
                                                      (cons '%#ref
                                                            (cons _%unchecked188809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189700
                                                      (map (lambda (_%g188810188812%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%ctx188779%_ _%g188810188812%_)))
                   _%args188781%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189701
                                                       __tmp189700))))
                                          (declare (not safe))
                                          (cons '%#call __tmp189699))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189698
                                    _%stx188780%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#xform-call%
                                    _%ctx188779%_
                                    _%stx188780%_))))
                           _%$e188806%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx188779%_
                               _%stx188780%_))))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx188779%_ _%stx188780%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188529%_ _%ctx188530%_ _%stx188531%_ _%args188532%_)
        (let ()
          (let ((_%self188535%_ _%self188529%_))
            (let ()
              (let ((_%signature188544188546%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188535%_ '2 '#f '#f))))
                (if _%signature188544188546%_
                    (let* ((_%signature188549%_ _%signature188544188546%_)
                           (_%argument-types188550188552%_
                            (##direct-structure-ref
                             _%signature188549%_
                             '3
                             gxc#!signature::t
                             '#f)))
                      (if _%argument-types188550188552%_
                          (let ((_%argument-types188555%_
                                 _%argument-types188550188552%_))
                            (let ((_%argument-types188560%_
                                   (let ((__tmp189702
                                          (lambda (_%t188558%_)
                                            (if _%t188558%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx188531%_
                                                   _%t188558%_))
                                                '#f))))
                                     (declare (not safe))
                                     (gxc#map*
                                      __tmp189702
                                      _%argument-types188555%_))))
                              (let _%loop188562%_ ((_%rest-args188564%_
                                                    _%args188532%_)
                                                   (_%rest-types188565%_
                                                    _%argument-types188560%_)
                                                   (_%result188566%_ '#t))
                                (let* ((_%rest-args188567188575%_
                                        _%rest-args188564%_)
                                       (_%else188569188583%_
                                        (lambda () _%result188566%_))
                                       (_%K188571188644%_
                                        (lambda (_%rest-args188586%_
                                                 _%arg188587%_)
                                          (let* ((_%rest-types188588188599%_
                                                  _%rest-types188565%_)
                                                 (_%E188592188603%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%rest-types188588188599%_
                                                             '([type
                                                                .
                                                                rest-types])
                                                             '([])
                                                             '(tail-type)))
                                                    '#!void)))
                                            (let ((_%K188595188632%_
                                                   (lambda (_%rest-types188629%_
                                                            _%type188630%_)
                                                     (let ((__tmp189703
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#check-expression-type!
                           _%stx188531%_
                           _%arg188587%_
                           _%type188630%_))
                        _%result188566%_
                        '#f)))
               (declare (not safe))
               (_%loop188562%_
                _%rest-args188586%_
                _%rest-types188629%_
                __tmp189703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%K188594188623%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"signature arity mismatch"
                                                        _%stx188531%_
                                                        _%argument-types188560%_))))
                                                  (_%K188593188613%_
                                                   (lambda (_%tail-type188607%_)
                                                     (if (let ((__tmp189704
                                                                (lambda (_%g188608188610%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#check-expression-type!
                             _%stx188531%_
                             _%g188608188610%_
                             _%tail-type188607%_)))))
                   (declare (not safe))
                   (__andmap1 __tmp189704 _%rest-args188586%_))
                 _%result188566%_
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%try-match188590188626%_
                                                     (lambda ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##null? _%rest-types188588188599%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%K188594188623%_))
                                                           (let ((_%tail-type188616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%rest-types188588188599%_))
                     (declare (not safe))
                     (_%K188593188613%_ _%tail-type188616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%rest-types188588188599%_))
                                                    (let ((_%tl188597188637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%rest-types188588188599%_)))
                                                          (_%hd188596188635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%rest-types188588188599%_))))
                                                      (let ((_%type188640%_
                                                             _%hd188596188635%_)
                                                            (_%rest-types188642%_
                                                             _%tl188597188637%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%K188595188632%_
                                                           _%rest-types188642%_
                                                           _%type188640%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match188590188626%_)))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%rest-args188567188575%_))
                                      (let ((_%hd188572188647%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%rest-args188567188575%_)))
                                            (_%tl188573188649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest-args188567188575%_))))
                                        (let* ((_%arg188652%_
                                                _%hd188572188647%_)
                                               (_%rest-args188654%_
                                                _%tl188573188649%_))
                                          (declare (not safe))
                                          (_%K188571188644%_
                                           _%rest-args188654%_
                                           _%arg188652%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else188569188583%_)))))))
                          '#f))
                    '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self188340%_ _%ctx188341%_ _%stx188342%_ _%args188343%_)
        (let ()
          (let ((_%self188346%_ _%self188340%_))
            (let ()
              (let* ((_%g188356188366%_
                      (lambda (_%g188357188363%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188357188363%_))))
                     (_%g188355188404%_
                      (lambda (_%g188357188369%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188357188369%_))
                            (let ((_%e188361188371%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188357188369%_))))
                              (let ((_%hd188360188374%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188361188371%_)))
                                    (_%tl188359188376%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188361188371%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188359188376%_))
                                    ((lambda (_%L188379%_)
                                       (let* ((_%klass188391%_
                                               (let ((__tmp189705
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188346%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188342%_
                                                  __tmp189705)))
                                              (_%object188393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188341%_
                                                  _%L188379%_)))
                                              (_%instance?188398%_
                                               (let ((_%$e188395%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188393%_
                                                         _%klass188391%_))))
                                                 (if _%$e188395%_
                                                     _%$e188395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188379%_
                                                        _%klass188391%_))))))
                                         (if _%instance?188398%_
                                             (let ((__tmp189706
                                                    (if (or (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%object188393%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%L188379%_)))
                                                        (cons '%#quote
                                                              (cons '#t '()))
                                                        (cons '%#begin
                                                              (cons _%object188393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189706
                                                _%stx188342%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#xform-call%
                                                _%ctx188341%_
                                                _%stx188342%_)))))
                                     _%hd188360188374%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188356188366%_ _%g188357188369%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188356188366%_ _%g188357188369%_))))))
                (declare (not safe))
                (_%g188355188404%_ _%args188343%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188136%_ _%ctx188137%_ _%stx188138%_ _%args188139%_)
        (let ()
          (let ((_%self188142%_ _%self188136%_))
            (let ()
              (let* ((_%g188152188162%_
                      (lambda (_%g188153188159%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188153188159%_))))
                     (_%g188151188215%_
                      (lambda (_%g188153188165%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188153188165%_))
                            (let ((_%e188157188167%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188153188165%_))))
                              (let ((_%hd188156188170%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188157188167%_)))
                                    (_%tl188155188172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188157188167%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188155188172%_))
                                    ((lambda (_%L188175%_)
                                       (let* ((_%klass188187%_
                                               (let ((__tmp189707
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188142%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188138%_
                                                  __tmp189707)))
                                              (_%object188189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188137%_
                                                  _%L188175%_)))
                                              (_%instance?188194%_
                                               (let ((_%$e188191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188189%_
                                                         _%klass188187%_))))
                                                 (if _%$e188191%_
                                                     _%$e188191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188175%_
                                                        _%klass188187%_))))))
                                         (let ((_%klass188197%_
                                                _%klass188187%_))
                                           (if _%instance?188194%_
                                               (let ()
                                                 (let ((__tmp189708
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%object188189%_))
                        (let ()
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%L188175%_)))
                    (cons '%#quote (cons '#t '()))
                    (cons '%#begin (cons _%object188189%_ (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189708
                                                    _%stx188138%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188197%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189709
                                                            (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass188197%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188189%_ '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189709 _%stx188138%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass188197%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189710
                                                                (cons '%#struct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass188197%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%object188189%_ '())))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189710 _%stx188138%_)))
               (let ()
                 (let ((__tmp189711
                        (cons '%#call
                              (cons (cons '%#ref (cons 'class-instance? '()))
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188142%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons _%object188189%_ '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189711 _%stx188138%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd188156188170%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188152188162%_ _%g188153188165%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188152188162%_ _%g188153188165%_))))))
                (declare (not safe))
                (_%g188151188215%_ _%args188139%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx187799%_)
        (let* ((_%__stx189351189352%_ _%stx187799%_)
               (_%g187804187845%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189351189352%_)))))
          (let ((_%__kont189353189354%_ (lambda () '#t))
                (_%__kont189355189356%_ (lambda () '#t))
                (_%__kont189357189358%_
                 (lambda (_%L187913%_ _%L187914%_)
                   (let ((_%rator-type187935187937%_
                          (let ((__tmp189712
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L187914%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp189712))))
                     (if _%rator-type187935187937%_
                         (let* ((_%rator-type187940%_
                                 _%rator-type187935187937%_)
                                (_%rator-signature187941187943%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type187940%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type187940%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature187941187943%_
                               (let* ((_%rator-signature187946%_
                                       _%rator-signature187941187943%_)
                                      (_%rator-effect187947187949%_
                                       (if _%rator-signature187946%_
                                           (##direct-structure-ref
                                            _%rator-signature187946%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect187947187949%_
                                     (let ((_%rator-effect187952%_
                                            _%rator-effect187947187949%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect187952%_)
                                               (equal? '(alloc)
                                                       _%rator-effect187952%_))
                                           (let ((__tmp189713
                                                  (let ((__tmp189714
                                                         (lambda (_%g187957187960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g187958187962%_)
                   (cons _%g187957187960%_ _%g187958187962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp189714
                                                     '()
                                                     _%L187913%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp189713))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189361189362%_ (lambda () '#f)))
            (let ((_%__match189440189441%_
                   (lambda (_%e187822187857%_
                            _%hd187821187860%_
                            _%tl187820187862%_
                            _%e187825187865%_
                            _%hd187824187868%_
                            _%tl187823187870%_
                            _%e187828187873%_
                            _%hd187827187876%_
                            _%tl187826187878%_
                            _%e187831187881%_
                            _%hd187830187884%_
                            _%tl187829187886%_
                            _%__splice189359189360%_
                            _%target187832187889%_
                            _%tl187834187891%_)
                     (letrec ((_%loop187835187894%_
                               (lambda (_%hd187833187897%_
                                        _%rand187839187899%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187833187897%_))
                                     (let ((_%e187836187902%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187833187897%_))))
                                       (let ((_%lp-tl187838187907%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187836187902%_)))
                                             (_%lp-hd187837187905%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187836187902%_))))
                                         (let ((__tmp189715
                                                (cons _%lp-hd187837187905%_
                                                      _%rand187839187899%_)))
                                           (declare (not safe))
                                           (_%loop187835187894%_
                                            _%lp-tl187838187907%_
                                            __tmp189715))))
                                     (let ((_%rand187840187910%_
                                            (reverse _%rand187839187899%_)))
                                       (_%__kont189357189358%_
                                        _%rand187840187910%_
                                        _%hd187830187884%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187835187894%_ _%target187832187889%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189351189352%_))
                  (let ((_%e187808187993%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189351189352%_))))
                    (let ((_%tl187806187998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187808187993%_)))
                          (_%hd187807187996%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187808187993%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187807187996%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187807187996%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187806187998%_))
                                  (let ((_%e187811188001%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187806187998%_))))
                                    (let ((_%tl187809188006%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187811188001%_)))
                                          (_%hd187810188004%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187811188001%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187809188006%_))
                                          (_%__kont189353189354%_)
                                          (_%__kont189361189362%_))))
                                  (_%__kont189361189362%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd187807187996%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187806187998%_))
                                      (let ((_%e187817187978%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187806187998%_))))
                                        (let ((_%tl187815187983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187817187978%_)))
                                              (_%hd187816187981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187817187978%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187815187983%_))
                                              (_%__kont189355189356%_)
                                              (_%__kont189361189362%_))))
                                      (_%__kont189361189362%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd187807187996%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187806187998%_))
                                          (let ((_%e187825187865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl187806187998%_))))
                                            (let ((_%tl187823187870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187825187865%_)))
                                                  (_%hd187824187868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187825187865%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187824187868%_))
                                                  (let ((_%e187828187873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187824187868%_))))
                                                    (let ((_%tl187826187878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187828187873%_)))
                                                          (_%hd187827187876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187828187873%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187827187876%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd187827187876%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187826187878%_))
                          (let ((_%e187831187881%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187826187878%_))))
                            (let ((_%tl187829187886%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187831187881%_)))
                                  (_%hd187830187884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187831187881%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187829187886%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187823187870%_))
                                      (let ((_%__splice189359189360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187823187870%_
                                                '0))))
                                        (let ((_%tl187834187891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189359189360%_
                                                  '1)))
                                              (_%target187832187889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189359189360%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187834187891%_))
                                              (_%__match189440189441%_
                                               _%e187808187993%_
                                               _%hd187807187996%_
                                               _%tl187806187998%_
                                               _%e187825187865%_
                                               _%hd187824187868%_
                                               _%tl187823187870%_
                                               _%e187828187873%_
                                               _%hd187827187876%_
                                               _%tl187826187878%_
                                               _%e187831187881%_
                                               _%hd187830187884%_
                                               _%tl187829187886%_
                                               _%__splice189359189360%_
                                               _%target187832187889%_
                                               _%tl187834187891%_)
                                              (_%__kont189361189362%_))))
                                      (_%__kont189361189362%_))
                                  (_%__kont189361189362%_))))
                          (_%__kont189361189362%_))
                      (_%__kont189361189362%_))
                  (_%__kont189361189362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189361189362%_))))
                                          (_%__kont189361189362%_))
                                      (_%__kont189361189362%_))))
                          (_%__kont189361189362%_))))
                  (_%__kont189361189362%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx187794%_ _%klass187795%_)
        (let ((_%expr-type187797%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx187794%_))))
          (if _%expr-type187797%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type187797%_ _%klass187795%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx187772%_ _%expr187773%_ _%type187774%_)
        (if (let () (declare (not safe)) (not _%type187774%_))
            (let () '#f)
            (let ((_%$e187777%_
                   (eq? (##structure-ref _%type187774%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e187777%_
                  _%$e187777%_
                  (let ()
                    (let ((_%expr-type187781%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187773%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187781%_))
                          (let () '#f)
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187781%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let () '#f)
                              (let ((_%$e187785%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187781%_
                                        'gxc#!abort::t))))
                                (if _%$e187785%_
                                    _%$e187785%_
                                    (let ((_%$e187788%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187781%_
                                              _%type187774%_))))
                                      (if _%$e187788%_
                                          _%$e187788%_
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type187774%_))
                                              (let () '#f)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type187774%_
                                                     _%expr-type187781%_))
                                                  (let () '#f)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#raise-compile-error
                                                       '"signature type mismatch"
                                                       _%stx187772%_
                                                       _%expr187773%_
                                                       _%expr-type187781%_
                                                       _%type187774%_))))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187586%_ _%ctx187587%_ _%stx187588%_ _%args187589%_)
        (let ()
          (let ((_%self187592%_ _%self187586%_))
            (let ()
              (let* ((_%klass187602%_
                      (let ((__tmp189716
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187592%_
                                '1
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#optimizer-resolve-class
                         _%stx187588%_
                         __tmp189716)))
                     (_%fields187604%_
                      (length (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass187602%_
                                 '5
                                 '#f
                                 '#f))))
                     (_%args187610%_
                      (map (lambda (_%g187605187607%_)
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%ctx187587%_
                                _%g187605187607%_)))
                           _%args187589%_))
                     (_%inline-make-object187612%_
                      (cons '%#begin-annotation
                            (cons (cons '@type
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187592%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons '##structure
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187592%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (make-list _%fields187604%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (let ((_%klass187615%_ _%klass187602%_))
                  (let ((_%$e187629%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187615%_
                            '6
                            '#f
                            '#f))))
                    (if _%$e187629%_
                        ((lambda (_%ctor187632%_)
                           (let ((_%$obj187634%_
                                  (let ((__tmp189717
                                         (let ()
                                           (declare (not safe))
                                           (##gensym '__obj))))
                                    (declare (not safe))
                                    (make-symbol__0 __tmp189717)))
                                 (_%ctor-impl187635%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!class-lookup-method
                                     _%klass187615%_
                                     _%ctor187632%_))))
                             (let ((__tmp189718
                                    (cons '%#let-values
                                          (cons (cons (cons (cons _%$obj187634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%inline-make-object187612%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#begin
                                                            (cons (if _%ctor-impl187635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _%ctor-impl187635%_ '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187634%_
                                                            '()))
                                                _%args187610%_)))
                              (let ((_%$ctor187637%_
                                     (let ((__tmp189719
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__constructor))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189719))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$ctor187637%_
                                                              '())
                                                        (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'direct-method-ref '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187592%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187634%_ '()))
                                              (cons (cons '%#quote
                                                          (cons _%ctor187632%_
                                                                '()))
                                                    '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$ctor187637%_ '()))
                      (cons (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _%$ctor187637%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187634%_ '()))
                                              _%args187610%_)))
                            (cons (cons '%#call
                                        (cons (cons '%#ref (cons 'error '()))
                                              (cons (cons '%#quote
                                                          (cons '"missing constructor method implementation"
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons 'class:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187592%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons 'method: '()))
                              (cons (cons '%#quote (cons _%ctor187632%_ '()))
                                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                          (cons (cons '%#ref (cons _%$obj187634%_ '())) '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp189718
                                _%stx187588%_))))
                         _%$e187629%_)
                        (let ((_%$e187639%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass187615%_
                                  '10
                                  '#f
                                  '#f))))
                          (if _%$e187639%_
                              ((lambda (_%metaclass187642%_)
                                 (let* ((_%$obj187644%_
                                         (let ((__tmp189720
                                                (let ()
                                                  (declare (not safe))
                                                  (##gensym '__obj))))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp189720)))
                                        (_%metakons187646%_
                                         (let ((__tmp189721
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx187588%_
                                                   _%metaclass187642%_))))
                                           (declare (not safe))
                                           (gxc#!class-lookup-method
                                            __tmp189721
                                            'instance-init!))))
                                   (let ((__tmp189722
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _%$obj187644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _%inline-make-object187612%_ '()))
                    '())
              (cons (cons '%#begin
                          (cons (if _%metakons187646%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons _%metakons187646%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187592%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187644%_ '())) _%args187610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'call-method '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187592%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187644%_ '()))
                          _%args187610%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons '%#ref (cons _%$obj187644%_ '()))
                                      '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189722
                                      _%stx187588%_))))
                               _%$e187639%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass187615%_
                                     '7
                                     '#f
                                     '#f))
                                  (let ()
                                    (if (let ((__tmp189723
                                               (let ()
                                                 (declare (not safe))
                                                 (##length _%args187610%_))))
                                          (declare (not safe))
                                          (##fx= __tmp189723 _%fields187604%_))
                                        (let ((__tmp189724
                                               (cons '%#begin-annotation
                                                     (cons (cons '@type
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self187592%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#call
                               (cons (cons '%#ref (cons '##structure '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187592%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           _%args187610%_)))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp189724
                                           _%stx187588%_))
                                        (let ((__tmp189726
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self187592%_
                                                  '1
                                                  '#f
                                                  '#f)))
                                              (__tmp189725
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187615%_
                                                  '5
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"illegal struct constructor application; arity mismatch"
                                           _%stx187588%_
                                           __tmp189726
                                           __tmp189725))))
                                  (let ()
                                    (let ((_%$obj187651%_
                                           (let ((__tmp189727
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__obj))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp189727))))
                                      (let _%lp187653%_ ((_%rest187655%_
                                                          _%args187610%_)
                                                         (_%initializers187656%_
                                                          '()))
                                        (let* ((_%__stx189443189444%_
                                                _%rest187655%_)
                                               (_%g187660187681%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx189443189444%_)))))
                                          (let ((_%__kont189445189446%_
                                                 (lambda (_%L187735%_
                                                          _%L187736%_
                                                          _%L187737%_)
                                                   (let* ((_%slot187764%_
                                                           (let ((__tmp189728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L187737%_))))
                     (declare (not safe))
                     (keyword->symbol __tmp189728)))
                  (_%off187766%_
                   (let ()
                     (declare (not safe))
                     (gxc#!class-slot->field-offset
                      _%klass187615%_
                      _%slot187764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%off187766%_
                                                         (let ((__tmp189729
                                                                (cons (cons _%off187766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%L187736%_)
                              _%initializers187656%_)))
                   (declare (not safe))
                   (_%lp187653%_ _%L187735%_ __tmp189729))
                 (let ((__tmp189730
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187592%_
                           '1
                           '#f
                           '#f))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"unknown slot"
                    _%stx187588%_
                    __tmp189730
                    _%slot187764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189447189448%_
                                                 (lambda ()
                                                   (let ((__tmp189731
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187612%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (let ((__tmp189734
                                                 (cons (cons '%#ref
                                                             (cons _%$obj187651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp189732
                                                 (let ((__tmp189733
                                                        (lambda (_%i187695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%r187696%_)
                  (cons (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187592%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons (car _%i187695%_) '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187651%_
                                                            '()))
                                                (cons (cdr _%i187695%_)
                                                      '())))))
                        _%r187696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldl1
                                                    __tmp189733
                                                    '()
                                                    _%initializers187656%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp189734
                                             __tmp189732)))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189731
                                                      _%stx187588%_))))
                                                (_%__kont189449189450%_
                                                 (lambda ()
                                                   (let ((__tmp189735
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187612%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (cons (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'class-instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187651%_ '()))
                          _%args187610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#ref
                                                            (cons _%$obj187651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189735
                                                      _%stx187588%_)))))
                                            (let* ((_%g187658187698%_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%__stx189443189444%_))
                                                          (_%__kont189447189448%_)
                                                          (_%__kont189449189450%_))))
                                                   (_%__match189480189481%_
                                                    (lambda (_%e187667187703%_
                                                             _%hd187666187706%_
                                                             _%tl187665187708%_
                                                             _%e187670187711%_
                                                             _%hd187669187714%_
                                                             _%tl187668187716%_
                                                             _%e187673187719%_
                                                             _%hd187672187722%_
                                                             _%tl187671187724%_
                                                             _%e187676187727%_
                                                             _%hd187675187730%_
                                                             _%tl187674187732%_)
                                                      (let ((_%L187735%_
                                                             _%tl187674187732%_)
                                                            (_%L187736%_
                                                             _%hd187675187730%_)
                                                            (_%L187737%_
                                                             _%hd187672187722%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-keyword?
                                                               _%L187737%_))
                                                            (_%__kont189445189446%_
                                                             _%L187735%_
                                                             _%L187736%_
                                                             _%L187737%_)
                                                            (_%__kont189449189450%_))))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189443189444%_))
                                                  (let ((_%e187667187703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189443189444%_))))
                                                    (let ((_%tl187665187708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187667187703%_)))
                                                          (_%hd187666187706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187667187703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187666187706%_))
                                                          (let ((_%e187670187711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187666187706%_))))
                    (let ((_%tl187668187716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187670187711%_)))
                          (_%hd187669187714%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187670187711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187669187714%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187669187714%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187668187716%_))
                                  (let ((_%e187673187719%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187668187716%_))))
                                    (let ((_%tl187671187724%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187673187719%_)))
                                          (_%hd187672187722%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187673187719%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187671187724%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187665187708%_))
                                              (let ((_%e187676187727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187665187708%_))))
                                                (let ((_%tl187674187732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187676187727%_)))
                                                      (_%hd187675187730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187676187727%_))))
                                                  (_%__match189480189481%_
                                                   _%e187667187703%_
                                                   _%hd187666187706%_
                                                   _%tl187665187708%_
                                                   _%e187670187711%_
                                                   _%hd187669187714%_
                                                   _%tl187668187716%_
                                                   _%e187673187719%_
                                                   _%hd187672187722%_
                                                   _%tl187671187724%_
                                                   _%e187676187727%_
                                                   _%hd187675187730%_
                                                   _%tl187674187732%_)))
                                              (_%__kont189449189450%_))
                                          (_%__kont189449189450%_))))
                                  (_%__kont189449189450%_))
                              (_%__kont189449189450%_))
                          (_%__kont189449189450%_))))
                  (_%__kont189449189450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187658187698%_)))))))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187369%_ _%ctx187370%_ _%stx187371%_ _%args187372%_)
        (let ()
          (let ((_%self187375%_ _%self187369%_))
            (let ()
              (let* ((_%arguments-ok?187385%_
                      (let ((__method189666
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187375%_
                                'check-arguments))))
                        (if __method189666
                            (__method189666
                             _%self187375%_
                             _%ctx187370%_
                             _%stx187371%_
                             _%args187372%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187375%_
                                     'check-arguments)))))
                     (_%g187387187397%_
                      (lambda (_%g187388187394%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187388187394%_))))
                     (_%g187386187461%_
                      (lambda (_%g187388187400%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187388187400%_))
                            (let ((_%e187392187402%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187388187400%_))))
                              (let ((_%hd187391187405%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187392187402%_)))
                                    (_%tl187390187407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187392187402%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl187390187407%_))
                                    ((lambda (_%L187410%_)
                                       (let* ((_%klass187423%_
                                               (let ((__tmp189736
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187375%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx187371%_
                                                  __tmp189736)))
                                              (_%field187425%_
                                               (let ((__tmp189737
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187375%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass187423%_
                                                  __tmp189737)))
                                              (_%object187427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx187370%_
                                                  _%L187410%_))))
                                         (let ((_%klass187430%_
                                                _%klass187423%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187430%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ()
                                                 (let ((__tmp189738
                                                        (cons (if (or _%arguments-ok?187385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189739
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187375%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp189739)))
                          '%#struct-unchecked-ref
                          '%#struct-direct-ref)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187375%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187425%_ '()))
                                  (cons _%object187427%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189738
                                                    _%stx187371%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187430%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189740
                                                            (cons (if (or _%arguments-ok?187385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp189741
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187375%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp189741)))
                              '%#struct-unchecked-ref
                              '%#struct-ref)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187375%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187425%_ '()))
                                      (cons _%object187427%_ '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189740 _%stx187371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$e187449%_
                                                          (let ((__tmp189742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187375%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187430%_
                     __tmp189742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187449%_
                                                         ((lambda (_%klass187452%_)
                                                            (let ((__tmp189743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187385%_
                                         (let ((__tmp189744
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187375%_
                                                   '4
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (not __tmp189744)))
                                     '%#struct-unchecked-ref
                                     '%#struct-ref)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187375%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187425%_ '()))
                                             (cons _%object187427%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189743 _%stx187371%_)))
                  _%$e187449%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187375%_ '4 '#f '#f))
                     (let ()
                       (let ((__tmp189745
                              (let ((_%$obj187458%_
                                     (let ((__tmp189746
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189746))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187458%_
                                                              '())
                                                        (cons _%object187427%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187430%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187458%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-ref
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187375%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187425%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187458%_
                                                                '()))
                                                    '()))))
                            (cons (if _%arguments-ok?187385%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187375%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self187375%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187458%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187375%_
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
                         (gxc#xform-wrap-source __tmp189745 _%stx187371%_)))
                     (let ()
                       (let ((__tmp189747
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons _%object187427%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187375%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp189747
                          _%stx187371%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd187391187405%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g187387187397%_ _%g187388187400%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187387187397%_ _%g187388187400%_))))))
                (declare (not safe))
                (_%g187386187461%_ _%args187372%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187133%_ _%ctx187134%_ _%stx187135%_ _%args187136%_)
        (let ()
          (let ((_%self187139%_ _%self187133%_))
            (let ()
              (let* ((_%arguments-ok?187149%_
                      (let ((__method189667
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187139%_
                                'check-arguments))))
                        (if __method189667
                            (__method189667
                             _%self187139%_
                             _%ctx187134%_
                             _%stx187135%_
                             _%args187136%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187139%_
                                     'check-arguments)))))
                     (_%g187151187165%_
                      (lambda (_%g187152187162%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187152187162%_))))
                     (_%g187150187244%_
                      (lambda (_%g187152187168%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187152187168%_))
                            (let ((_%e187157187170%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187152187168%_))))
                              (let ((_%hd187156187173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187157187170%_)))
                                    (_%tl187155187175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187157187170%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187155187175%_))
                                    (let ((_%e187160187178%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187155187175%_))))
                                      (let ((_%hd187159187181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187160187178%_)))
                                            (_%tl187158187183%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187160187178%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl187158187183%_))
                                            ((lambda (_%L187186%_ _%L187187%_)
                                               (let* ((_%klass187203%_
                                                       (let ((__tmp189748
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self187139%_
                         '1
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class _%stx187135%_ __tmp189748)))
              (_%field187205%_
               (let ((__tmp189749
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187139%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot->field-offset _%klass187203%_ __tmp189749)))
              (_%object187207%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187134%_ _%L187187%_)))
              (_%value187209%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187134%_ _%L187186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%klass187212%_
                                                        _%klass187203%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass187212%_
                                                          '8
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189750
                                                                (cons (if (or _%arguments-ok?187149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (let ((__tmp189751
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self187139%_
                                                '4
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (not __tmp189751)))
                                  '%#struct-unchecked-set!
                                  '%#struct-direct-set!)
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187139%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons _%field187205%_ '()))
                                          (cons _%object187207%_
                                                (cons _%value187209%_
                                                      '())))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189750 _%stx187135%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass187212%_ '7 '#f '#f))
                   (let ()
                     (let ((__tmp189752
                            (cons (if (or _%arguments-ok?187149%_
                                          (let ((__tmp189753
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self187139%_
                                                    '4
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (not __tmp189753)))
                                      '%#struct-unchecked-set!
                                      '%#struct-set!)
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187139%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187205%_ '()))
                                              (cons _%object187207%_
                                                    (cons _%value187209%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp189752 _%stx187135%_)))
                   (let ((_%$e187232%_
                          (let ((__tmp189754
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187139%_
                                    '3
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (gxc#!class-slot-find-struct
                             _%klass187212%_
                             __tmp189754))))
                     (if _%$e187232%_
                         ((lambda (_%klass187235%_)
                            (let ((__tmp189755
                                   (cons (if (or _%arguments-ok?187149%_
                                                 (let ((__tmp189756
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187139%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (not __tmp189756)))
                                             '%#struct-unchecked-set!
                                             '%#struct-set!)
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187139%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons _%field187205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%object187207%_
                                                           (cons _%value187209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp189755
                               _%stx187135%_)))
                          _%$e187232%_)
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187139%_
                                '4
                                '#f
                                '#f))
                             (let ()
                               (let ((__tmp189757
                                      (let ((_%$obj187241%_
                                             (let ((__tmp189758
                                                    (let ()
                                                      (declare (not safe))
                                                      (##gensym '__obj))))
                                               (declare (not safe))
                                               (make-symbol__0 __tmp189758))))
                                        (cons '%#let-values
                                              (cons (cons (cons (cons _%$obj187241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%object187207%_ '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#if
                                                                (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#quote
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%klass187212%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187241%_
                                                            '()))
                                                '())))
                              (cons (cons '%#struct-unchecked-set!
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self187139%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _%field187205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _%$obj187241%_ '()))
                    (cons _%value187209%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (if _%arguments-ok?187149%_
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'unchecked-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%$obj187241%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187139%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value187209%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187139%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187241%_ '()))
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187139%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%value187209%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189757
                                  _%stx187135%_)))
                             (let ()
                               (let ((__tmp189759
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons _%object187207%_
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187139%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187209%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189759
                                  _%stx187135%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd187159187181%_
                                             _%hd187156187173%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g187151187165%_
                                               _%g187152187168%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g187151187165%_ _%g187152187168%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187151187165%_ _%g187152187168%_))))))
                (declare (not safe))
                (_%g187150187244%_ _%args187136%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self186948%_ _%ctx186949%_ _%stx186950%_ _%args186951%_)
        (let ()
          (let ((_%self186954%_ _%self186948%_))
            (let ()
              (let* ((_%self186963186973%_ _%self186954%_)
                     (_%E186965186977%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186963186973%_
                                 '((!lambda _ _ arity dispatch inline))))
                        '#!void))
                     (_%K186966186987%_
                      (lambda (_%inline186980%_
                               _%dispatch186981%_
                               _%arity186982%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#!lambda-arity-match?
                               _%self186954%_
                               _%args186951%_))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal lambda application; arity mismatch"
                               _%stx186950%_
                               _%arity186982%_)))
                        (if _%inline186980%_
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose '"inline lambda"))
                              (let ((__tmp189760
                                     (let ((__tmp189761
                                            (_%inline186980%_ _%stx186950%_)))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp189761
                                        _%stx186950%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx186949%_ __tmp189760)))
                            (if (and _%dispatch186981%_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#symbol-in-local-scope?
                                        _%dispatch186981%_)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"dispatch lambda => "
                                     _%dispatch186981%_))
                                  (let ((__tmp189762
                                         (let ((__tmp189763
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%dispatch186981%_ '()))
                    _%args186951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189763
                                            _%stx186950%_))))
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%ctx186949%_
                                     __tmp189762)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!procedure::optimize-call
                                     _%self186954%_
                                     _%ctx186949%_
                                     _%stx186950%_
                                     _%args186951%_))))))))
                (if '#t
                    (let* ((_%e186967186990%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186963186973%_
                               '1
                               '#f
                               '#f)))
                           (_%e186968186993%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186963186973%_
                               '2
                               '#f
                               '#f)))
                           (_%e186969186996%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186963186973%_
                               '3
                               '#f
                               '#f)))
                           (_%arity186999%_ _%e186969186996%_)
                           (_%e186970187001%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186963186973%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch187004%_ _%e186970187001%_)
                           (_%e186971187006%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186963186973%_
                               '5
                               '#f
                               '#f)))
                           (_%inline187009%_ _%e186971187006%_))
                      (declare (not safe))
                      (_%K186966186987%_
                       _%inline187009%_
                       _%dispatch187004%_
                       _%arity186999%_))
                    (let () (declare (not safe)) (_%E186965186977%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self186800%_ _%ctx186801%_ _%stx186802%_ _%args186803%_)
        (let ()
          (let ((_%self186806%_ _%self186800%_))
            (let ()
              (let ((_%$e186820%_
                     (let ((__tmp189765
                            (lambda (_%g186815186817%_)
                              (let ()
                                (declare (not safe))
                                (gxc#!lambda-arity-match?
                                 _%g186815186817%_
                                 _%args186803%_))))
                           (__tmp189764
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186806%_
                               '3
                               '#f
                               '#f))))
                       (declare (not safe))
                       (__find __tmp189765 __tmp189764))))
                (if _%$e186820%_
                    ((lambda (_%clause186823%_)
                       (let ((__method189668
                              (let ()
                                (declare (not safe))
                                (__method-ref
                                 _%clause186823%_
                                 'optimize-call))))
                         (if __method189668
                             (__method189668
                              _%clause186823%_
                              _%ctx186801%_
                              _%stx186802%_
                              _%args186803%_)
                             (let ()
                               (declare (not safe))
                               (error '"Missing method"
                                      _%clause186823%_
                                      'optimize-call)))))
                     _%$e186820%_)
                    (let ()
                      (let ((__tmp189766
                             (map gxc#!lambda-arity
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self186806%_
                                     '3
                                     '#f
                                     '#f)))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _%stx186802%_
                         __tmp189766))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186544%_ _%ctx186545%_ _%stx186546%_ _%args186547%_)
        (let ()
          (let ((_%self186550%_ _%self186544%_))
            (let ()
              (let* ((_%self186559186568%_ _%self186550%_)
                     (_%E186561186572%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186559186568%_
                                 '((!kw-lambda _ _ table dispatch))))
                        '#!void))
                     (_%K186562186659%_
                      (lambda (_%dispatch186575%_ _%table186576%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%dispatch186575%_))
                            (let* ((_%g186577186586%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-lookup-type
                                       _%dispatch186575%_)))
                                   (_%else186579186594%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"unknown keyword dispatch lambda "
                                         _%dispatch186575%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#xform-call%
                                         _%ctx186545%_
                                         _%stx186546%_))))
                                   (_%K186581186643%_
                                    (lambda (_%main186597%_ _%keys186598%_)
                                      (let ((_g189767_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!kw-lambda-split-args
                                                _%stx186546%_
                                                _%args186547%_))))
                                        (begin
                                          (let ((_g189768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189767_)
                                                       (##vector-length
                                                        _g189767_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189768_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189768_)))
                                          (let ((_%pargs186600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189767_ 0)))
                                                (_%kwargs186601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189767_
                                                    1))))
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"dispatch kw-lambda => "
                                                 _%main186597%_))
                                              (if _%table186576%_
                                                  (let ((_%xargs186609%_
                                                         (map (lambda (_%key186603%_)
                                                                (let ((_%$e186605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 _%key186603%_ _%kwargs186601%_))))
                          (if _%$e186605%_
                              _%$e186605%_
                              (let () '(%#ref absent-value)))))
                      _%keys186598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (for-each
                                                     (lambda (_%kw186611%_)
                                                       (if (memq (car _%kw186611%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%keys186598%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Illegal keyword lambda application; unexpected keyword"
                      _%stx186546%_
                      _%keys186598%_
                      _%kw186611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs186601%_)
                                                    (let ((__tmp189769
                                                           (let ((__tmp189770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#call
                                (cons (cons '%#ref (cons _%main186597%_ '()))
                                      (cons (cons '%#quote (cons '#f '()))
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%pargs186600%_
                                               _%xargs186609%_)))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189770 _%stx186546%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186545%_ __tmp189769)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%kwt186613%_
                                                          (let ((__tmp189771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##gensym '__kwt))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189771)))
                 (_%kwvars186617%_
                  (map (lambda (_%_186615%_)
                         (let ((__tmp189772
                                (let ()
                                  (declare (not safe))
                                  (##gensym '__kw))))
                           (declare (not safe))
                           (make-symbol__0 __tmp189772)))
                       _%kwargs186601%_))
                 (_%kwbind186622%_
                  (map (lambda (_%kw186619%_ _%kwvar186620%_)
                         (cons (cons _%kwvar186620%_ '())
                               (cons (cdr _%kw186619%_) '())))
                       _%kwargs186601%_
                       _%kwvars186617%_))
                 (_%kwset186627%_
                  (map (lambda (_%kw186624%_ _%kwvar186625%_)
                         (cons '%#call
                               (cons '(%#ref symbolic-table-set!)
                                     (cons (cons '%#ref
                                                 (cons _%kwt186613%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (car _%kw186624%_)
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%kwvar186625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%kwargs186601%_
                       _%kwvars186617%_))
                 (_%xkwargs186632%_
                  (map (lambda (_%kw186629%_ _%kwvar186630%_)
                         (cons (car _%kw186629%_)
                               (cons '%#ref (cons _%kwvar186630%_ '()))))
                       _%kwargs186601%_
                       _%kwvars186617%_))
                 (_%xargs186640%_
                  (map (lambda (_%key186634%_)
                         (let ((_%$e186636%_
                                (let ()
                                  (declare (not safe))
                                  (agetq__0 _%key186634%_ _%xkwargs186632%_))))
                           (if _%$e186636%_
                               _%$e186636%_
                               (let () '(%#ref absent-value)))))
                       _%keys186598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp189773
                                                           (let ((__tmp189774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#let-values
                                (cons _%kwbind186622%_
                                      (cons (cons '%#let-values
                                                  (cons (cons (cons (cons _%kwt186613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ((__tmp189775
                                         (cons '%#call
                                               (cons '(%#ref make-symbolic-table)
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (length _%kwargs186601%_) '()))
                   (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp189775
                                     _%stx186546%_))
                                  '()))
                      '())
                (cons (cons '%#begin
                            (let ((__tmp189776
                                   (cons (let ((__tmp189777
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%main186597%_ '()))
                    (cons (cons '%#ref (cons _%kwt186613%_ '()))
                          (let ()
                            (declare (not safe))
                            (__foldr1
                             cons
                             _%pargs186600%_
                             _%xargs186640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189777
                                            _%stx186546%_))
                                         '())))
                              (declare (not safe))
                              (__foldr1 cons __tmp189776 _%kwset186627%_)))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189774 _%stx186546%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186545%_ __tmp189773)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%g186577186586%_
                                     'gxc#!kw-lambda-primary::t))
                                  (let* ((_%e186582186646%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186577186586%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%e186583186649%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186577186586%_
                                             '2
                                             '#f
                                             '#f)))
                                         (_%keys186652%_ _%e186583186649%_)
                                         (_%e186584186654%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186577186586%_
                                             '3
                                             '#f
                                             '#f)))
                                         (_%main186657%_ _%e186584186654%_))
                                    (declare (not safe))
                                    (_%K186581186643%_
                                     _%main186657%_
                                     _%keys186652%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else186579186594%_))))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx186545%_
                               _%stx186546%_))))))
                (if '#t
                    (let* ((_%e186563186662%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186559186568%_
                               '1
                               '#f
                               '#f)))
                           (_%e186564186665%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186559186568%_
                               '2
                               '#f
                               '#f)))
                           (_%e186565186668%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186559186568%_
                               '3
                               '#f
                               '#f)))
                           (_%table186671%_ _%e186565186668%_)
                           (_%e186566186673%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186559186568%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186676%_ _%e186566186673%_))
                      (declare (not safe))
                      (_%K186562186659%_ _%dispatch186676%_ _%table186671%_))
                    (let () (declare (not safe)) (_%E186561186572%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186157%_ _%args186158%_)
        (let _%lp186160%_ ((_%rest186162%_ _%args186158%_)
                           (_%pargs186163%_ '())
                           (_%kwargs186164%_ '()))
          (let* ((_%__stx189485189486%_ _%rest186162%_)
                 (_%g186170186222%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189485189486%_)))))
            (let ((_%__kont189487189488%_
                   (lambda (_%L186401%_ _%L186402%_)
                     (let ((__tmp189778 (cons _%L186402%_ _%pargs186163%_)))
                       (declare (not safe))
                       (_%lp186160%_
                        _%L186401%_
                        __tmp189778
                        _%kwargs186164%_))))
                  (_%__kont189489189490%_
                   (lambda (_%L186347%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186347%_ _%pargs186163%_))
                             (reverse _%kwargs186164%_))))
                  (_%__kont189491189492%_
                   (lambda (_%L186294%_ _%L186295%_ _%L186296%_)
                     (let ((_%kw186313%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186296%_))))
                       (if (assq _%kw186313%_ _%kwargs186164%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186157%_
                              _%kw186313%_))
                           (let ((__tmp189779
                                  (cons (cons _%kw186313%_ _%L186295%_)
                                        _%kwargs186164%_)))
                             (declare (not safe))
                             (_%lp186160%_
                              _%L186294%_
                              _%pargs186163%_
                              __tmp189779))))))
                  (_%__kont189493189494%_
                   (lambda (_%L186242%_ _%L186243%_)
                     (let ((__tmp189780 (cons _%L186243%_ _%pargs186163%_)))
                       (declare (not safe))
                       (_%lp186160%_
                        _%L186242%_
                        __tmp189780
                        _%kwargs186164%_))))
                  (_%__kont189495189496%_
                   (lambda ()
                     (values (reverse _%pargs186163%_)
                             (reverse _%kwargs186164%_)))))
              (let ((_%__match189592189593%_
                     (lambda (_%e186203186262%_
                              _%hd186202186265%_
                              _%tl186201186267%_
                              _%e186206186270%_
                              _%hd186205186273%_
                              _%tl186204186275%_
                              _%e186209186278%_
                              _%hd186208186281%_
                              _%tl186207186283%_
                              _%e186212186286%_
                              _%hd186211186289%_
                              _%tl186210186291%_)
                       (let ((_%L186294%_ _%tl186210186291%_)
                             (_%L186295%_ _%hd186211186289%_)
                             (_%L186296%_ _%hd186208186281%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186296%_))
                             (_%__kont189491189492%_
                              _%L186294%_
                              _%L186295%_
                              _%L186296%_)
                             (_%__kont189493189494%_
                              _%tl186201186267%_
                              _%hd186202186265%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189485189486%_))
                    (let ((_%e186176186366%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189485189486%_))))
                      (let ((_%tl186174186371%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186176186366%_)))
                            (_%hd186175186369%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186176186366%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186175186369%_))
                            (let ((_%e186179186374%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186175186369%_))))
                              (let ((_%tl186177186379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186179186374%_)))
                                    (_%hd186178186377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186179186374%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186178186377%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186178186377%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186177186379%_))
                                            (let ((_%e186182186382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186177186379%_))))
                                              (let ((_%tl186180186387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186182186382%_)))
                                                    (_%hd186181186385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186182186382%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186181186385%_))
                                                    (let ((_%e186183186390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186181186385%_))))
                                                      (if (equal? _%e186183186390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186180186387%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186174186371%_))
                          (let ((_%e186186186393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186174186371%_))))
                            (let ((_%tl186184186398%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186186186393%_)))
                                  (_%hd186185186396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186186186393%_))))
                              (_%__kont189487189488%_
                               _%tl186184186398%_
                               _%hd186185186396%_)))
                          (_%__kont189493189494%_
                           _%tl186174186371%_
                           _%hd186175186369%_))
                      (_%__kont189493189494%_
                       _%tl186174186371%_
                       _%hd186175186369%_))
                  (if (equal? _%e186183186390%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186180186387%_))
                          (_%__kont189489189490%_ _%tl186174186371%_)
                          (_%__kont189493189494%_
                           _%tl186174186371%_
                           _%hd186175186369%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186180186387%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186174186371%_))
                              (let ((_%e186212186286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186174186371%_))))
                                (let ((_%tl186210186291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186212186286%_)))
                                      (_%hd186211186289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186212186286%_))))
                                  (_%__match189592189593%_
                                   _%e186176186366%_
                                   _%hd186175186369%_
                                   _%tl186174186371%_
                                   _%e186179186374%_
                                   _%hd186178186377%_
                                   _%tl186177186379%_
                                   _%e186182186382%_
                                   _%hd186181186385%_
                                   _%tl186180186387%_
                                   _%e186212186286%_
                                   _%hd186211186289%_
                                   _%tl186210186291%_)))
                              (_%__kont189493189494%_
                               _%tl186174186371%_
                               _%hd186175186369%_))
                          (_%__kont189493189494%_
                           _%tl186174186371%_
                           _%hd186175186369%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186180186387%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186174186371%_))
                                                            (let ((_%e186212186286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186174186371%_))))
                      (let ((_%tl186210186291%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186212186286%_)))
                            (_%hd186211186289%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186212186286%_))))
                        (_%__match189592189593%_
                         _%e186176186366%_
                         _%hd186175186369%_
                         _%tl186174186371%_
                         _%e186179186374%_
                         _%hd186178186377%_
                         _%tl186177186379%_
                         _%e186182186382%_
                         _%hd186181186385%_
                         _%tl186180186387%_
                         _%e186212186286%_
                         _%hd186211186289%_
                         _%tl186210186291%_)))
                    (_%__kont189493189494%_
                     _%tl186174186371%_
                     _%hd186175186369%_))
                (_%__kont189493189494%_
                 _%tl186174186371%_
                 _%hd186175186369%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189493189494%_
                                             _%tl186174186371%_
                                             _%hd186175186369%_))
                                        (_%__kont189493189494%_
                                         _%tl186174186371%_
                                         _%hd186175186369%_))
                                    (_%__kont189493189494%_
                                     _%tl186174186371%_
                                     _%hd186175186369%_))))
                            (_%__kont189493189494%_
                             _%tl186174186371%_
                             _%hd186175186369%_))))
                    (_%__kont189495189496%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186141%_ _%ctx186142%_ _%stx186143%_ _%args186144%_)
        (let ()
          (let ((_%self186147%_ _%self186141%_))
            (let ()
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx186142%_ _%stx186143%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self185829%_ _%stx185830%_)
        (let* ((_%__stx189601189602%_ _%stx185830%_)
               (_%g185833185873%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189601189602%_)))))
          (let ((_%__kont189603189604%_
                 (lambda (_%L185979%_ _%L185980%_)
                   (let ((_%$e186007%_
                          (member 'return:
                                  (let ((__tmp189781
                                         (lambda (_%g185999186002%_
                                                  _%g186000186004%_)
                                           (cons _%g185999186002%_
                                                 _%g186000186004%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp189781 '() _%L185980%_))
                                  gx#stx-eq?)))
                     (if _%$e186007%_
                         ((lambda (_%tail186010%_)
                            (let ((_%type186012%_
                                   (let ((__tmp189782
                                          (let ((__tmp189783
                                                 (cadr _%tail186010%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp189783))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx185830%_
                                      __tmp189782))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx185830%_
                                 _%L185979%_
                                 _%type186012%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self185829%_
                                 _%L185979%_))))
                          _%$e186007%_)
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self185829%_
                              _%L185979%_)))))))
                (_%__kont189607189608%_
                 (lambda (_%L185902%_ _%L185903%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185829%_ _%L185902%_)))))
            (let ((_%__match189638189639%_
                   (lambda (_%e185839185923%_
                            _%hd185838185926%_
                            _%tl185837185928%_
                            _%e185842185931%_
                            _%hd185841185934%_
                            _%tl185840185936%_
                            _%e185845185939%_
                            _%hd185844185942%_
                            _%tl185843185944%_
                            _%__splice189605189606%_
                            _%target185846185947%_
                            _%tl185848185949%_)
                     (letrec ((_%loop185849185952%_
                               (lambda (_%hd185847185955%_
                                        _%signature185853185957%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd185847185955%_))
                                     (let ((_%e185850185960%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd185847185955%_))))
                                       (let ((_%lp-tl185852185965%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e185850185960%_)))
                                             (_%lp-hd185851185963%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e185850185960%_))))
                                         (let ((__tmp189784
                                                (cons _%lp-hd185851185963%_
                                                      _%signature185853185957%_)))
                                           (declare (not safe))
                                           (_%loop185849185952%_
                                            _%lp-tl185852185965%_
                                            __tmp189784))))
                                     (let ((_%signature185854185968%_
                                            (reverse _%signature185853185957%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl185840185936%_))
                                           (let ((_%e185857185971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl185840185936%_))))
                                             (let ((_%tl185855185976%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e185857185971%_)))
                                                   (_%hd185856185974%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e185857185971%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl185855185976%_))
                                                   (_%__kont189603189604%_
                                                    _%hd185856185974%_
                                                    _%signature185854185968%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g185833185873%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g185833185873%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop185849185952%_ _%target185846185947%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189601189602%_))
                  (let ((_%e185839185923%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189601189602%_))))
                    (let ((_%tl185837185928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185839185923%_)))
                          (_%hd185838185926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185839185923%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185837185928%_))
                          (let ((_%e185842185931%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185837185928%_))))
                            (let ((_%tl185840185936%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185842185931%_)))
                                  (_%hd185841185934%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185842185931%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd185841185934%_))
                                  (let ((_%e185845185939%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd185841185934%_))))
                                    (let ((_%tl185843185944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185845185939%_)))
                                          (_%hd185844185942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185845185939%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd185844185942%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd185844185942%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl185843185944%_))
                                                  (let ((_%__splice189605189606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl185843185944%_
                                                            '0))))
                                                    (let ((_%tl185848185949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189605189606%_
                                                              '1)))
                                                          (_%target185846185947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189605189606%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185848185949%_))
                                                          (_%__match189638189639%_
                                                           _%e185839185923%_
                                                           _%hd185838185926%_
                                                           _%tl185837185928%_
                                                           _%e185842185931%_
                                                           _%hd185841185934%_
                                                           _%tl185840185936%_
                                                           _%e185845185939%_
                                                           _%hd185844185942%_
                                                           _%tl185843185944%_
                                                           _%__splice189605189606%_
                                                           _%target185846185947%_
                                                           _%tl185848185949%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl185840185936%_))
                      (let ((_%e185868185894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl185840185936%_))))
                        (let ((_%tl185866185899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185868185894%_)))
                              (_%hd185867185897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185868185894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl185866185899%_))
                              (_%__kont189607189608%_
                               _%hd185867185897%_
                               _%hd185841185934%_)
                              (let ()
                                (declare (not safe))
                                (_%g185833185873%_)))))
                      (let () (declare (not safe)) (_%g185833185873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl185840185936%_))
                                                      (let ((_%e185868185894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl185840185936%_))))
                (let ((_%tl185866185899%_
                       (let () (declare (not safe)) (##cdr _%e185868185894%_)))
                      (_%hd185867185897%_
                       (let ()
                         (declare (not safe))
                         (##car _%e185868185894%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185866185899%_))
                      (_%__kont189607189608%_
                       _%hd185867185897%_
                       _%hd185841185934%_)
                      (let () (declare (not safe)) (_%g185833185873%_)))))
              (let () (declare (not safe)) (_%g185833185873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl185840185936%_))
                                                  (let ((_%e185868185894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl185840185936%_))))
                                                    (let ((_%tl185866185899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e185868185894%_)))
                                                          (_%hd185867185897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e185868185894%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185866185899%_))
                                                          (_%__kont189607189608%_
                                                           _%hd185867185897%_
                                                           _%hd185841185934%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g185833185873%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g185833185873%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185840185936%_))
                                              (let ((_%e185868185894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185840185936%_))))
                                                (let ((_%tl185866185899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185868185894%_)))
                                                      (_%hd185867185897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185868185894%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185866185899%_))
                                                      (_%__kont189607189608%_
                                                       _%hd185867185897%_
                                                       _%hd185841185934%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g185833185873%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g185833185873%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185840185936%_))
                                      (let ((_%e185868185894%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185840185936%_))))
                                        (let ((_%tl185866185899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185868185894%_)))
                                              (_%hd185867185897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185868185894%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185866185899%_))
                                              (_%__kont189607189608%_
                                               _%hd185867185897%_
                                               _%hd185841185934%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g185833185873%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g185833185873%_))))))
                          (let () (declare (not safe)) (_%g185833185873%_)))))
                  (let () (declare (not safe)) (_%g185833185873%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx185807%_ _%expr185808%_ _%type185809%_)
        (let ((_%$e185811%_
               (let () (declare (not safe)) (not _%type185809%_))))
          (if _%$e185811%_
              _%$e185811%_
              (let ((_%$e185814%_
                     (eq? (##structure-ref _%type185809%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e185814%_
                    _%$e185814%_
                    (let ()
                      (let ((_%expr-type185818%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-basic-expression-type
                                _%expr185808%_))))
                        (if (let ()
                              (declare (not safe))
                              (not _%expr-type185818%_))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; no type information"
                                 _%stx185807%_
                                 _%type185809%_)))
                            (if (eq? 't
                                     (##structure-ref
                                      _%expr-type185818%_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"cannot verify procedure return type; unspecific type"
                                     _%stx185807%_
                                     _%type185809%_
                                     _%expr-type185818%_)))
                                (let ((_%$e185822%_
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%expr-type185818%_
                                          'gxc#!abort::t))))
                                  (if _%$e185822%_
                                      _%$e185822%_
                                      (let ((_%$e185825%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!type-subtype?
                                                _%expr-type185818%_
                                                _%type185809%_))))
                                        (if _%$e185825%_
                                            _%$e185825%_
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"procedure return type does not match signature"
                                                 _%stx185807%_
                                                 _%type185809%_
                                                 _%expr-type185818%_)))))))))))))))))))
