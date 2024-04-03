(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712147683)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp189680 (list gxc#::basic-xform::t))
            (__tmp189679 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp189680
         '()
         __tmp189679
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189229%_
        (apply make-instance gxc#::optimize-call::t _%$args189229%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp189681
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
        (__make-promise __tmp189681)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189221%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189224%_
                (let ((__obj189671
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj189671))
               (__tmp189682
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189224%_ _%stx189221%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189682
           gxc#current-compile-method
           _%self189224%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp189684 (list gxc#::void::t))
            (__tmp189683 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp189684
         '()
         __tmp189683
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189218%_
        (apply make-instance gxc#::check-return-type::t _%$args189218%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp189685
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
        (__make-promise __tmp189685)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189210%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189213%_
                (let ((__obj189673
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj189673))
               (__tmp189686
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189213%_ _%stx189210%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189686
           gxc#current-compile-method
           _%self189213%_))))
    (define gxc#optimize-call%
      (lambda (_%self188820%_ _%stx188821%_)
        (let* ((_%__stx189284189285%_ _%stx188821%_)
               (_%g188824188870%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189284189285%_)))))
          (let ((_%__kont189286189287%_
                 (lambda (_%L189013%_ _%L189014%_)
                   (let* ((_%rator-id189034%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189014%_)))
                          (_%rator-type189036%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189034%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type189036%_))
                             (eq? (##structure-ref
                                   _%rator-type189036%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self188820%_ _%stx188821%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189036%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp189687
                                      (##structure-ref
                                       _%rator-type189036%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189034%_
                                  '" => "
                                  _%rator-type189036%_
                                  '" "
                                  __tmp189687))
                               (let* ((_%optimized189051%_
                                       (let ((__method189674
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189036%_
                                                 'optimize-call))))
                                         (if __method189674
                                             (__method189674
                                              _%rator-type189036%_
                                              _%self188820%_
                                              _%stx188821%_
                                              (let ((__tmp189688
                                                     (lambda (_%g189043189046%_
                                                              _%g189044189048%_)
                                                       (cons _%g189043189046%_
                                                             _%g189044189048%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp189688
                                                 '()
                                                 _%L189013%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189036%_
                                                      'optimize-call)))))
                                      (_%__stx189232189233%_
                                       _%optimized189051%_)
                                      (_%g189054189083%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189232189233%_)))))
                                 (let ((_%__kont189234189235%_
                                        (lambda (_%L189151%_ _%L189152%_)
                                          (let ((_%optimized-rator-id189179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189152%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type189036%_))
                                                         (eq? _%optimized-rator-id189179%_
                                                              _%rator-id189034%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189179%_
                                                              gxc#checked-primitives)))
                                                _%optimized189051%_
                                                (let ((__tmp189689
                                                       (let ((__tmp189690
                                                              (let ((__tmp189693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189152%_ '())))
                            (__tmp189691
                             (let ((__tmp189692
                                    (lambda (_%g189183189186%_
                                             _%g189184189188%_)
                                      (cons _%g189183189186%_
                                            _%g189184189188%_))))
                               (declare (not safe))
                               (__foldr1 __tmp189692 '() _%L189151%_))))
                        (declare (not safe))
                        (cons __tmp189693 __tmp189691))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp189690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp189689
                                                   _%stx188821%_))))))
                                       (_%__kont189238189239%_
                                        (lambda () _%optimized189051%_)))
                                   (let ((_%__match189281189282%_
                                          (lambda (_%e189060189095%_
                                                   _%hd189059189098%_
                                                   _%tl189058189100%_
                                                   _%e189063189103%_
                                                   _%hd189062189106%_
                                                   _%tl189061189108%_
                                                   _%e189066189111%_
                                                   _%hd189065189114%_
                                                   _%tl189064189116%_
                                                   _%e189069189119%_
                                                   _%hd189068189122%_
                                                   _%tl189067189124%_
                                                   _%__splice189236189237%_
                                                   _%target189070189127%_
                                                   _%tl189072189129%_)
                                            (letrec ((_%loop189073189132%_
                                                      (lambda (_%hd189071189135%_
                                                               _%arg189077189137%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189071189135%_))
                                                            (let ((_%e189074189140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189071189135%_))))
                      (let ((_%lp-tl189076189145%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189074189140%_)))
                            (_%lp-hd189075189143%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189074189140%_))))
                        (let ((__tmp189694
                               (cons _%lp-hd189075189143%_
                                     _%arg189077189137%_)))
                          (declare (not safe))
                          (_%loop189073189132%_
                           _%lp-tl189076189145%_
                           __tmp189694))))
                    (let ((_%arg189078189148%_ (reverse _%arg189077189137%_)))
                      (_%__kont189234189235%_
                       _%arg189078189148%_
                       _%hd189068189122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop189073189132%_
                                                 _%target189070189127%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189232189233%_))
                                         (let ((_%e189060189095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189232189233%_))))
                                           (let ((_%tl189058189100%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189060189095%_)))
                                                 (_%hd189059189098%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189060189095%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189059189098%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189059189098%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189058189100%_))
                                                         (let ((_%e189063189103%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189058189100%_))))
                   (let ((_%tl189061189108%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189063189103%_)))
                         (_%hd189062189106%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189063189103%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189062189106%_))
                         (let ((_%e189066189111%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189062189106%_))))
                           (let ((_%tl189064189116%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189066189111%_)))
                                 (_%hd189065189114%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189066189111%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189065189114%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189065189114%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189064189116%_))
                                         (let ((_%e189069189119%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189064189116%_))))
                                           (let ((_%tl189067189124%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189069189119%_)))
                                                 (_%hd189068189122%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189069189119%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189067189124%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189061189108%_))
                                                     (let ((_%__splice189236189237%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189061189108%_
                                                               '0))))
                                                       (let ((_%tl189072189129%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189236189237%_ '1)))
                     (_%target189070189127%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189236189237%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189072189129%_))
                     (_%__match189281189282%_
                      _%e189060189095%_
                      _%hd189059189098%_
                      _%tl189058189100%_
                      _%e189063189103%_
                      _%hd189062189106%_
                      _%tl189061189108%_
                      _%e189066189111%_
                      _%hd189065189114%_
                      _%tl189064189116%_
                      _%e189069189119%_
                      _%hd189068189122%_
                      _%tl189067189124%_
                      _%__splice189236189237%_
                      _%target189070189127%_
                      _%tl189072189129%_)
                     (_%__kont189238189239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189238189239%_))
                                                 (_%__kont189238189239%_))))
                                         (_%__kont189238189239%_))
                                     (_%__kont189238189239%_))
                                 (_%__kont189238189239%_))))
                         (_%__kont189238189239%_))))
                 (_%__kont189238189239%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189238189239%_))
                                                 (_%__kont189238189239%_))))
                                         (_%__kont189238189239%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189036%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189036%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp189695
                                        (let ((__tmp189696
                                               (let ((__tmp189699
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L189014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189697
                                                      (map (lambda (_%g189194189196%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self188820%_ _%g189194189196%_)))
                   (let ((__tmp189698
                          (lambda (_%g189198189201%_ _%g189199189203%_)
                            (cons _%g189198189201%_ _%g189199189203%_))))
                     (declare (not safe))
                     (__foldr1 __tmp189698 '() _%L189013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189699
                                                       __tmp189697))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp189696))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189695
                                    _%stx188821%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx188821%_
                                    _%rator-type189036%_))))))))
                (_%__kont189290189291%_
                 (lambda (_%L188915%_ _%L188916%_)
                   (let ((_%rator-type188933%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L188916%_))))
                     (if (and _%rator-type188933%_
                              (eq? (##structure-ref
                                    _%rator-type188933%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp189700
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type188933%_))))
                                (declare (not safe))
                                (not __tmp189700)))
                         (let ((__tmp189701
                                (let ((__tmp189702
                                       (let ((__tmp189705
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self188820%_
                                                 _%L188916%_)))
                                             (__tmp189703
                                              (map (lambda (_%g188935188937%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188820%_
                                                        _%g188935188937%_)))
                                                   (let ((__tmp189704
                                                          (lambda (_%g188939188942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g188940188944%_)
                    (cons _%g188939188942%_ _%g188940188944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp189704
                                                      '()
                                                      _%L188915%_)))))
                                         (declare (not safe))
                                         (cons __tmp189705 __tmp189703))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp189702))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp189701 _%stx188821%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type188933%_))
                                 (let ((__tmp189706
                                        (##structure-ref
                                         _%rator-type188933%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp189706 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self188820%_ _%stx188821%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx188821%_
                                _%rator-type188933%_))))))))
            (let* ((_%__match189351189352%_
                    (lambda (_%e188853188875%_
                             _%hd188852188878%_
                             _%tl188851188880%_
                             _%e188856188883%_
                             _%hd188855188886%_
                             _%tl188854188888%_
                             _%__splice189292189293%_
                             _%target188857188891%_
                             _%tl188859188893%_)
                      (letrec ((_%loop188860188896%_
                                (lambda (_%hd188858188899%_
                                         _%rand188864188901%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188858188899%_))
                                      (let ((_%e188861188904%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188858188899%_))))
                                        (let ((_%lp-tl188863188909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188861188904%_)))
                                              (_%lp-hd188862188907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188861188904%_))))
                                          (let ((__tmp189707
                                                 (cons _%lp-hd188862188907%_
                                                       _%rand188864188901%_)))
                                            (declare (not safe))
                                            (_%loop188860188896%_
                                             _%lp-tl188863188909%_
                                             __tmp189707))))
                                      (let ((_%rand188865188912%_
                                             (reverse _%rand188864188901%_)))
                                        (_%__kont189290189291%_
                                         _%rand188865188912%_
                                         _%hd188855188886%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188860188896%_ _%target188857188891%_ '())))))
                   (_%__match189331189332%_
                    (lambda (_%e188830188957%_
                             _%hd188829188960%_
                             _%tl188828188962%_
                             _%e188833188965%_
                             _%hd188832188968%_
                             _%tl188831188970%_
                             _%e188836188973%_
                             _%hd188835188976%_
                             _%tl188834188978%_
                             _%e188839188981%_
                             _%hd188838188984%_
                             _%tl188837188986%_
                             _%__splice189288189289%_
                             _%target188840188989%_
                             _%tl188842188991%_)
                      (letrec ((_%loop188843188994%_
                                (lambda (_%hd188841188997%_
                                         _%rand188847188999%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188841188997%_))
                                      (let ((_%e188844189002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188841188997%_))))
                                        (let ((_%lp-tl188846189007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188844189002%_)))
                                              (_%lp-hd188845189005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188844189002%_))))
                                          (let ((__tmp189708
                                                 (cons _%lp-hd188845189005%_
                                                       _%rand188847188999%_)))
                                            (declare (not safe))
                                            (_%loop188843188994%_
                                             _%lp-tl188846189007%_
                                             __tmp189708))))
                                      (let ((_%rand188848189010%_
                                             (reverse _%rand188847188999%_)))
                                        (_%__kont189286189287%_
                                         _%rand188848189010%_
                                         _%hd188838188984%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188843188994%_
                           _%target188840188989%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189284189285%_))
                  (let ((_%e188830188957%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189284189285%_))))
                    (let ((_%tl188828188962%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188830188957%_)))
                          (_%hd188829188960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188830188957%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188828188962%_))
                          (let ((_%e188833188965%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188828188962%_))))
                            (let ((_%tl188831188970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188833188965%_)))
                                  (_%hd188832188968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188833188965%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188832188968%_))
                                  (let ((_%e188836188973%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188832188968%_))))
                                    (let ((_%tl188834188978%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188836188973%_)))
                                          (_%hd188835188976%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188836188973%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188835188976%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188835188976%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188834188978%_))
                                                  (let ((_%e188839188981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188834188978%_))))
                                                    (let ((_%tl188837188986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188839188981%_)))
                                                          (_%hd188838188984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188839188981%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188837188986%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188831188970%_))
                      (let ((_%__splice189288189289%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188831188970%_
                                '0))))
                        (let ((_%tl188842188991%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189288189289%_ '1)))
                              (_%target188840188989%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189288189289%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188842188991%_))
                              (_%__match189331189332%_
                               _%e188830188957%_
                               _%hd188829188960%_
                               _%tl188828188962%_
                               _%e188833188965%_
                               _%hd188832188968%_
                               _%tl188831188970%_
                               _%e188836188973%_
                               _%hd188835188976%_
                               _%tl188834188978%_
                               _%e188839188981%_
                               _%hd188838188984%_
                               _%tl188837188986%_
                               _%__splice189288189289%_
                               _%target188840188989%_
                               _%tl188842188991%_)
                              (let ()
                                (declare (not safe))
                                (_%g188824188870%_)))))
                      (let () (declare (not safe)) (_%g188824188870%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl188831188970%_))
                      (let ((_%__splice189292189293%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188831188970%_
                                '0))))
                        (let ((_%tl188859188893%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189292189293%_ '1)))
                              (_%target188857188891%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189292189293%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188859188893%_))
                              (_%__match189351189352%_
                               _%e188830188957%_
                               _%hd188829188960%_
                               _%tl188828188962%_
                               _%e188833188965%_
                               _%hd188832188968%_
                               _%tl188831188970%_
                               _%__splice189292189293%_
                               _%target188857188891%_
                               _%tl188859188893%_)
                              (let ()
                                (declare (not safe))
                                (_%g188824188870%_)))))
                      (let () (declare (not safe)) (_%g188824188870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl188831188970%_))
                                                      (let ((_%__splice189292189293%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl188831188970%_ '0))))
                (let ((_%tl188859188893%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189292189293%_ '1)))
                      (_%target188857188891%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189292189293%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188859188893%_))
                      (_%__match189351189352%_
                       _%e188830188957%_
                       _%hd188829188960%_
                       _%tl188828188962%_
                       _%e188833188965%_
                       _%hd188832188968%_
                       _%tl188831188970%_
                       _%__splice189292189293%_
                       _%target188857188891%_
                       _%tl188859188893%_)
                      (let () (declare (not safe)) (_%g188824188870%_)))))
              (let () (declare (not safe)) (_%g188824188870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188831188970%_))
                                                  (let ((_%__splice189292189293%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188831188970%_
                                                            '0))))
                                                    (let ((_%tl188859188893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189292189293%_
                                                              '1)))
                                                          (_%target188857188891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189292189293%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188859188893%_))
                                                          (_%__match189351189352%_
                                                           _%e188830188957%_
                                                           _%hd188829188960%_
                                                           _%tl188828188962%_
                                                           _%e188833188965%_
                                                           _%hd188832188968%_
                                                           _%tl188831188970%_
                                                           _%__splice189292189293%_
                                                           _%target188857188891%_
                                                           _%tl188859188893%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188824188870%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188824188870%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl188831188970%_))
                                              (let ((_%__splice189292189293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl188831188970%_
                                                        '0))))
                                                (let ((_%tl188859188893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189292189293%_
                                                          '1)))
                                                      (_%target188857188891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189292189293%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188859188893%_))
                                                      (_%__match189351189352%_
                                                       _%e188830188957%_
                                                       _%hd188829188960%_
                                                       _%tl188828188962%_
                                                       _%e188833188965%_
                                                       _%hd188832188968%_
                                                       _%tl188831188970%_
                                                       _%__splice189292189293%_
                                                       _%target188857188891%_
                                                       _%tl188859188893%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188824188870%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188824188870%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188831188970%_))
                                      (let ((_%__splice189292189293%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188831188970%_
                                                '0))))
                                        (let ((_%tl188859188893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189292189293%_
                                                  '1)))
                                              (_%target188857188891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189292189293%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188859188893%_))
                                              (_%__match189351189352%_
                                               _%e188830188957%_
                                               _%hd188829188960%_
                                               _%tl188828188962%_
                                               _%e188833188965%_
                                               _%hd188832188968%_
                                               _%tl188831188970%_
                                               _%__splice189292189293%_
                                               _%target188857188891%_
                                               _%tl188859188893%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188824188870%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188824188870%_))))))
                          (let () (declare (not safe)) (_%g188824188870%_)))))
                  (let () (declare (not safe)) (_%g188824188870%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188782%_ _%ctx188783%_ _%stx188784%_ _%args188785%_)
        (let ((_%self188788%_ _%self188782%_))
          (if (let ((__method189675
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self188788%_ 'check-arguments))))
                (if __method189675
                    (__method189675
                     _%self188788%_
                     _%ctx188783%_
                     _%stx188784%_
                     _%args188785%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self188788%_
                             'check-arguments))))
              (let* ((_%signature188798%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self188788%_ '2 '#f '#f)))
                     (_%signature188800%_ _%signature188798%_)
                     (_%$e188810%_
                      (if _%signature188800%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature188800%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e188810%_
                    ((lambda (_%unchecked188813%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked188813%_))
                           (let ((__tmp189709
                                  (let ((__tmp189710
                                         (let ((__tmp189712
                                                (cons '%#ref
                                                      (cons _%unchecked188813%_
                                                            '())))
                                               (__tmp189711
                                                (map (lambda (_%g188814188816%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx188783%_
                                                          _%g188814188816%_)))
                                                     _%args188785%_)))
                                           (declare (not safe))
                                           (cons __tmp189712 __tmp189711))))
                                    (declare (not safe))
                                    (cons '%#call __tmp189710))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp189709 _%stx188784%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx188783%_ _%stx188784%_))))
                     _%$e188810%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx188783%_ _%stx188784%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx188783%_ _%stx188784%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188533%_ _%ctx188534%_ _%stx188535%_ _%args188536%_)
        (let ()
          (let* ((_%self188539%_ _%self188533%_)
                 (_%signature188548188550%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self188539%_ '2 '#f '#f))))
            (if _%signature188548188550%_
                (let* ((_%signature188553%_ _%signature188548188550%_)
                       (_%argument-types188554188556%_
                        (##direct-structure-ref
                         _%signature188553%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types188554188556%_
                      (let* ((_%argument-types188559%_
                              _%argument-types188554188556%_)
                             (_%argument-types188564%_
                              (let ((__tmp189713
                                     (lambda (_%t188562%_)
                                       (if _%t188562%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188535%_
                                              _%t188562%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp189713
                                 _%argument-types188559%_))))
                        (let _%loop188566%_ ((_%rest-args188568%_
                                              _%args188536%_)
                                             (_%rest-types188569%_
                                              _%argument-types188564%_)
                                             (_%result188570%_ '#t))
                          (let* ((_%rest-args188571188579%_
                                  _%rest-args188568%_)
                                 (_%else188573188587%_
                                  (lambda () _%result188570%_))
                                 (_%K188575188648%_
                                  (lambda (_%rest-args188590%_ _%arg188591%_)
                                    (let* ((_%rest-types188592188603%_
                                            _%rest-types188569%_)
                                           (_%E188596188607%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types188592188603%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K188599188636%_
                                             (lambda (_%rest-types188633%_
                                                      _%type188634%_)
                                               (let ((__tmp189714
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx188535%_
                                                             _%arg188591%_
                                                             _%type188634%_))
                                                          _%result188570%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop188566%_
                                                  _%rest-args188590%_
                                                  _%rest-types188633%_
                                                  __tmp189714))))
                                            (_%K188598188627%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx188535%_
                                                  _%argument-types188564%_))))
                                            (_%K188597188617%_
                                             (lambda (_%tail-type188611%_)
                                               (if (let ((__tmp189715
                                                          (lambda (_%g188612188614%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx188535%_
                                                               _%g188612188614%_
                                                               _%tail-type188611%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp189715
                                                      _%rest-args188590%_))
                                                   _%result188570%_
                                                   '#f))))
                                        (let ((_%try-match188594188630%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types188592188603%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K188598188627%_))
                                                     (let ((_%tail-type188620%_
                                                            _%rest-types188592188603%_))
                                                       (declare (not safe))
                                                       (_%K188597188617%_
                                                        _%tail-type188620%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types188592188603%_))
                                              (let ((_%tl188601188641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types188592188603%_)))
                                                    (_%hd188600188639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types188592188603%_))))
                                                (let ((_%type188644%_
                                                       _%hd188600188639%_)
                                                      (_%rest-types188646%_
                                                       _%tl188601188641%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K188599188636%_
                                                     _%rest-types188646%_
                                                     _%type188644%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match188594188630%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args188571188579%_))
                                (let ((_%hd188576188651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args188571188579%_)))
                                      (_%tl188577188653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args188571188579%_))))
                                  (let* ((_%arg188656%_ _%hd188576188651%_)
                                         (_%rest-args188658%_
                                          _%tl188577188653%_))
                                    (declare (not safe))
                                    (_%K188575188648%_
                                     _%rest-args188658%_
                                     _%arg188656%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else188573188587%_))))))
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
      (lambda (_%self188344%_ _%ctx188345%_ _%stx188346%_ _%args188347%_)
        (let ((_%self188350%_ _%self188344%_))
          (let* ((_%g188360188370%_
                  (lambda (_%g188361188367%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188361188367%_))))
                 (_%g188359188408%_
                  (lambda (_%g188361188373%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188361188373%_))
                        (let ((_%e188365188375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188361188373%_))))
                          (let ((_%hd188364188378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188365188375%_)))
                                (_%tl188363188380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188365188375%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188363188380%_))
                                ((lambda (_%L188383%_)
                                   (let* ((_%klass188395%_
                                           (let ((__tmp189716
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188350%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188346%_
                                              __tmp189716)))
                                          (_%object188397%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188345%_
                                              _%L188383%_)))
                                          (_%instance?188402%_
                                           (let ((_%$e188399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object188397%_
                                                     _%klass188395%_))))
                                             (if _%$e188399%_
                                                 _%$e188399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L188383%_
                                                    _%klass188395%_))))))
                                     (if _%instance?188402%_
                                         (let ((__tmp189717
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object188397%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L188383%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object188397%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189717
                                            _%stx188346%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx188345%_
                                            _%stx188346%_)))))
                                 _%hd188364188378%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188360188370%_ _%g188361188373%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188360188370%_ _%g188361188373%_))))))
            (declare (not safe))
            (_%g188359188408%_ _%args188347%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188140%_ _%ctx188141%_ _%stx188142%_ _%args188143%_)
        (let ((_%self188146%_ _%self188140%_))
          (let* ((_%g188156188166%_
                  (lambda (_%g188157188163%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188157188163%_))))
                 (_%g188155188219%_
                  (lambda (_%g188157188169%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188157188169%_))
                        (let ((_%e188161188171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188157188169%_))))
                          (let ((_%hd188160188174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188161188171%_)))
                                (_%tl188159188176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188161188171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188159188176%_))
                                ((lambda (_%L188179%_)
                                   (let* ((_%klass188191%_
                                           (let ((__tmp189718
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188146%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188142%_
                                              __tmp189718)))
                                          (_%object188193%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188141%_
                                              _%L188179%_)))
                                          (_%instance?188198%_
                                           (let ((_%$e188195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object188193%_
                                                     _%klass188191%_))))
                                             (if _%$e188195%_
                                                 _%$e188195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L188179%_
                                                    _%klass188191%_)))))
                                          (_%klass188201%_ _%klass188191%_))
                                     (if _%instance?188198%_
                                         (let ((__tmp189719
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object188193%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L188179%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object188193%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189719
                                            _%stx188142%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188201%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp189720
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass188201%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object188193%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189720
                                                _%stx188142%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188201%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp189721
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass188201%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object188193%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189721
                                                    _%stx188142%_))
                                                 (let ((__tmp189722
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188146%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object188193%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189722
                                                    _%stx188142%_)))))))
                                 _%hd188160188174%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188156188166%_ _%g188157188169%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188156188166%_ _%g188157188169%_))))))
            (declare (not safe))
            (_%g188155188219%_ _%args188143%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx187803%_)
        (let* ((_%__stx189361189362%_ _%stx187803%_)
               (_%g187808187849%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189361189362%_)))))
          (let ((_%__kont189363189364%_ (lambda () '#t))
                (_%__kont189365189366%_ (lambda () '#t))
                (_%__kont189367189368%_
                 (lambda (_%L187917%_ _%L187918%_)
                   (let ((_%rator-type187939187941%_
                          (let ((__tmp189723
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L187918%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp189723))))
                     (if _%rator-type187939187941%_
                         (let* ((_%rator-type187944%_
                                 _%rator-type187939187941%_)
                                (_%rator-signature187945187947%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type187944%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type187944%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature187945187947%_
                               (let* ((_%rator-signature187950%_
                                       _%rator-signature187945187947%_)
                                      (_%rator-effect187951187953%_
                                       (if _%rator-signature187950%_
                                           (##direct-structure-ref
                                            _%rator-signature187950%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect187951187953%_
                                     (let ((_%rator-effect187956%_
                                            _%rator-effect187951187953%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect187956%_)
                                               (equal? '(alloc)
                                                       _%rator-effect187956%_))
                                           (let ((__tmp189724
                                                  (let ((__tmp189725
                                                         (lambda (_%g187961187964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g187962187966%_)
                   (cons _%g187961187964%_ _%g187962187966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp189725
                                                     '()
                                                     _%L187917%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp189724))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189371189372%_ (lambda () '#f)))
            (let ((_%__match189450189451%_
                   (lambda (_%e187826187861%_
                            _%hd187825187864%_
                            _%tl187824187866%_
                            _%e187829187869%_
                            _%hd187828187872%_
                            _%tl187827187874%_
                            _%e187832187877%_
                            _%hd187831187880%_
                            _%tl187830187882%_
                            _%e187835187885%_
                            _%hd187834187888%_
                            _%tl187833187890%_
                            _%__splice189369189370%_
                            _%target187836187893%_
                            _%tl187838187895%_)
                     (letrec ((_%loop187839187898%_
                               (lambda (_%hd187837187901%_
                                        _%rand187843187903%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187837187901%_))
                                     (let ((_%e187840187906%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187837187901%_))))
                                       (let ((_%lp-tl187842187911%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187840187906%_)))
                                             (_%lp-hd187841187909%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187840187906%_))))
                                         (let ((__tmp189726
                                                (cons _%lp-hd187841187909%_
                                                      _%rand187843187903%_)))
                                           (declare (not safe))
                                           (_%loop187839187898%_
                                            _%lp-tl187842187911%_
                                            __tmp189726))))
                                     (let ((_%rand187844187914%_
                                            (reverse _%rand187843187903%_)))
                                       (_%__kont189367189368%_
                                        _%rand187844187914%_
                                        _%hd187834187888%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187839187898%_ _%target187836187893%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189361189362%_))
                  (let ((_%e187812187997%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189361189362%_))))
                    (let ((_%tl187810188002%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187812187997%_)))
                          (_%hd187811188000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187812187997%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187811188000%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187811188000%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187810188002%_))
                                  (let ((_%e187815188005%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187810188002%_))))
                                    (let ((_%tl187813188010%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187815188005%_)))
                                          (_%hd187814188008%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187815188005%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187813188010%_))
                                          (_%__kont189363189364%_)
                                          (_%__kont189371189372%_))))
                                  (_%__kont189371189372%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd187811188000%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187810188002%_))
                                      (let ((_%e187821187982%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187810188002%_))))
                                        (let ((_%tl187819187987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187821187982%_)))
                                              (_%hd187820187985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187821187982%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187819187987%_))
                                              (_%__kont189365189366%_)
                                              (_%__kont189371189372%_))))
                                      (_%__kont189371189372%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd187811188000%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187810188002%_))
                                          (let ((_%e187829187869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl187810188002%_))))
                                            (let ((_%tl187827187874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187829187869%_)))
                                                  (_%hd187828187872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187829187869%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187828187872%_))
                                                  (let ((_%e187832187877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187828187872%_))))
                                                    (let ((_%tl187830187882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187832187877%_)))
                                                          (_%hd187831187880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187832187877%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187831187880%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd187831187880%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187830187882%_))
                          (let ((_%e187835187885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187830187882%_))))
                            (let ((_%tl187833187890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187835187885%_)))
                                  (_%hd187834187888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187835187885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187833187890%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187827187874%_))
                                      (let ((_%__splice189369189370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187827187874%_
                                                '0))))
                                        (let ((_%tl187838187895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189369189370%_
                                                  '1)))
                                              (_%target187836187893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189369189370%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187838187895%_))
                                              (_%__match189450189451%_
                                               _%e187812187997%_
                                               _%hd187811188000%_
                                               _%tl187810188002%_
                                               _%e187829187869%_
                                               _%hd187828187872%_
                                               _%tl187827187874%_
                                               _%e187832187877%_
                                               _%hd187831187880%_
                                               _%tl187830187882%_
                                               _%e187835187885%_
                                               _%hd187834187888%_
                                               _%tl187833187890%_
                                               _%__splice189369189370%_
                                               _%target187836187893%_
                                               _%tl187838187895%_)
                                              (_%__kont189371189372%_))))
                                      (_%__kont189371189372%_))
                                  (_%__kont189371189372%_))))
                          (_%__kont189371189372%_))
                      (_%__kont189371189372%_))
                  (_%__kont189371189372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189371189372%_))))
                                          (_%__kont189371189372%_))
                                      (_%__kont189371189372%_))))
                          (_%__kont189371189372%_))))
                  (_%__kont189371189372%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx187798%_ _%klass187799%_)
        (let ((_%expr-type187801%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx187798%_))))
          (if _%expr-type187801%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type187801%_ _%klass187799%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx187776%_ _%expr187777%_ _%type187778%_)
        (if (let () (declare (not safe)) (not _%type187778%_))
            (let () '#f)
            (let ((_%$e187781%_
                   (eq? (##structure-ref _%type187778%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e187781%_
                  _%$e187781%_
                  (let ((_%expr-type187785%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr187777%_))))
                    (if (let () (declare (not safe)) (not _%expr-type187785%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type187785%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e187789%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type187785%_
                                      'gxc#!abort::t))))
                              (if _%$e187789%_
                                  _%$e187789%_
                                  (let ((_%$e187792%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type187785%_
                                            _%type187778%_))))
                                    (if _%$e187792%_
                                        _%$e187792%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type187778%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type187778%_
                                                   _%expr-type187785%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx187776%_
                                                   _%expr187777%_
                                                   _%expr-type187785%_
                                                   _%type187778%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187590%_ _%ctx187591%_ _%stx187592%_ _%args187593%_)
        (let ((_%self187596%_ _%self187590%_))
          (let* ((_%klass187606%_
                  (let ((__tmp189727
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187596%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx187592%_ __tmp189727)))
                 (_%fields187608%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass187606%_
                             '5
                             '#f
                             '#f))))
                 (_%args187614%_
                  (map (lambda (_%g187609187611%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx187591%_ _%g187609187611%_)))
                       _%args187593%_))
                 (_%inline-make-object187616%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187596%_
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
                             _%self187596%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields187608%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass187619%_ _%klass187606%_)
                   (_%$e187633%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass187619%_ '6 '#f '#f))))
              (if _%$e187633%_
                  ((lambda (_%ctor187636%_)
                     (let ((_%$obj187638%_
                            (let ((__tmp189728
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp189728)))
                           (_%ctor-impl187639%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass187619%_
                               _%ctor187636%_))))
                       (let ((__tmp189729
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj187638%_ '())
                                                      (cons _%inline-make-object187616%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl187639%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl187639%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj187638%_ '()))
                                          _%args187614%_)))
                        (let ((_%$ctor187641%_
                               (let ((__tmp189730
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp189730))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor187641%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187596%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187638%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor187636%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor187641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor187641%_ '()))
                                  (cons (cons '%#ref (cons _%$obj187638%_ '()))
                                        _%args187614%_)))
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
                                 _%self187596%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor187636%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj187638%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp189729 _%stx187592%_))))
                   _%$e187633%_)
                  (let ((_%$e187643%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187619%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e187643%_
                        ((lambda (_%metaclass187646%_)
                           (let* ((_%$obj187648%_
                                   (let ((__tmp189731
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp189731)))
                                  (_%metakons187650%_
                                   (let ((__tmp189732
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx187592%_
                                             _%metaclass187646%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp189732
                                      'instance-init!)))
                                  (__tmp189733
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj187648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object187616%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons187650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons187650%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187596%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj187648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args187614%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187596%_
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
                         (cons _%$obj187648%_ '()))
                   _%args187614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj187648%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp189733
                              _%stx187592%_)))
                         _%$e187643%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass187619%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp189734
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args187614%_))))
                                    (declare (not safe))
                                    (##fx= __tmp189734 _%fields187608%_))
                                  (let ((__tmp189735
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187596%_
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
                                                    _%self187596%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args187614%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp189735
                                     _%stx187592%_))
                                  (let ((__tmp189737
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187596%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp189736
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass187619%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx187592%_
                                     __tmp189737
                                     __tmp189736))))
                            (let ((_%$obj187655%_
                                   (let ((__tmp189738
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp189738))))
                              (let _%lp187657%_ ((_%rest187659%_
                                                  _%args187614%_)
                                                 (_%initializers187660%_ '()))
                                (let* ((_%__stx189453189454%_ _%rest187659%_)
                                       (_%g187664187685%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx189453189454%_)))))
                                  (let ((_%__kont189455189456%_
                                         (lambda (_%L187739%_
                                                  _%L187740%_
                                                  _%L187741%_)
                                           (let* ((_%slot187768%_
                                                   (let ((__tmp189739
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L187741%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp189739)))
                                                  (_%off187770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass187619%_
                                                      _%slot187768%_))))
                                             (if _%off187770%_
                                                 (let ((__tmp189740
                                                        (cons (cons _%off187770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L187740%_)
                      _%initializers187660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp187657%_
                                                    _%L187739%_
                                                    __tmp189740))
                                                 (let ((__tmp189741
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187596%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx187592%_
                                                    __tmp189741
                                                    _%slot187768%_))))))
                                        (_%__kont189457189458%_
                                         (lambda ()
                                           (let ((__tmp189742
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj187655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object187616%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp189745
                                         (cons (cons '%#ref
                                                     (cons _%$obj187655%_ '()))
                                               '()))
                                        (__tmp189743
                                         (let ((__tmp189744
                                                (lambda (_%i187699%_
                                                         _%r187700%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187596%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i187699%_) '()))
                                  (cons (cons '%#ref (cons _%$obj187655%_ '()))
                                        (cons (cdr _%i187699%_) '())))))
                _%r187700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp189744
                                            '()
                                            _%initializers187660%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp189745 __tmp189743)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp189742
                                              _%stx187592%_))))
                                        (_%__kont189459189460%_
                                         (lambda ()
                                           (let ((__tmp189746
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj187655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object187616%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj187655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args187614%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj187655%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp189746
                                              _%stx187592%_)))))
                                    (let* ((_%g187662187702%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx189453189454%_))
                                                  (_%__kont189457189458%_)
                                                  (_%__kont189459189460%_))))
                                           (_%__match189490189491%_
                                            (lambda (_%e187671187707%_
                                                     _%hd187670187710%_
                                                     _%tl187669187712%_
                                                     _%e187674187715%_
                                                     _%hd187673187718%_
                                                     _%tl187672187720%_
                                                     _%e187677187723%_
                                                     _%hd187676187726%_
                                                     _%tl187675187728%_
                                                     _%e187680187731%_
                                                     _%hd187679187734%_
                                                     _%tl187678187736%_)
                                              (let ((_%L187739%_
                                                     _%tl187678187736%_)
                                                    (_%L187740%_
                                                     _%hd187679187734%_)
                                                    (_%L187741%_
                                                     _%hd187676187726%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L187741%_))
                                                    (_%__kont189455189456%_
                                                     _%L187739%_
                                                     _%L187740%_
                                                     _%L187741%_)
                                                    (_%__kont189459189460%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx189453189454%_))
                                          (let ((_%e187671187707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx189453189454%_))))
                                            (let ((_%tl187669187712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187671187707%_)))
                                                  (_%hd187670187710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187671187707%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187670187710%_))
                                                  (let ((_%e187674187715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187670187710%_))))
                                                    (let ((_%tl187672187720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187674187715%_)))
                                                          (_%hd187673187718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187674187715%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187673187718%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd187673187718%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187672187720%_))
                          (let ((_%e187677187723%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187672187720%_))))
                            (let ((_%tl187675187728%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187677187723%_)))
                                  (_%hd187676187726%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187677187723%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187675187728%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187669187712%_))
                                      (let ((_%e187680187731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187669187712%_))))
                                        (let ((_%tl187678187736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187680187731%_)))
                                              (_%hd187679187734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187680187731%_))))
                                          (_%__match189490189491%_
                                           _%e187671187707%_
                                           _%hd187670187710%_
                                           _%tl187669187712%_
                                           _%e187674187715%_
                                           _%hd187673187718%_
                                           _%tl187672187720%_
                                           _%e187677187723%_
                                           _%hd187676187726%_
                                           _%tl187675187728%_
                                           _%e187680187731%_
                                           _%hd187679187734%_
                                           _%tl187678187736%_)))
                                      (_%__kont189459189460%_))
                                  (_%__kont189459189460%_))))
                          (_%__kont189459189460%_))
                      (_%__kont189459189460%_))
                  (_%__kont189459189460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189459189460%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g187662187702%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187373%_ _%ctx187374%_ _%stx187375%_ _%args187376%_)
        (let ((_%self187379%_ _%self187373%_))
          (let* ((_%arguments-ok?187389%_
                  (let ((__method189676
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self187379%_ 'check-arguments))))
                    (if __method189676
                        (__method189676
                         _%self187379%_
                         _%ctx187374%_
                         _%stx187375%_
                         _%args187376%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187379%_
                                 'check-arguments)))))
                 (_%g187391187401%_
                  (lambda (_%g187392187398%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g187392187398%_))))
                 (_%g187390187465%_
                  (lambda (_%g187392187404%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g187392187404%_))
                        (let ((_%e187396187406%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g187392187404%_))))
                          (let ((_%hd187395187409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187396187406%_)))
                                (_%tl187394187411%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187396187406%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl187394187411%_))
                                ((lambda (_%L187414%_)
                                   (let* ((_%klass187427%_
                                           (let ((__tmp189747
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187379%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx187375%_
                                              __tmp189747)))
                                          (_%field187429%_
                                           (let ((__tmp189748
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187379%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass187427%_
                                              __tmp189748)))
                                          (_%object187431%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx187374%_
                                              _%L187414%_)))
                                          (_%klass187434%_ _%klass187427%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass187434%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp189749
                                                (cons (if (or _%arguments-ok?187389%_
                                                              (let ((__tmp189750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187379%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp189750)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187379%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field187429%_ '()))
                          (cons _%object187431%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189749
                                            _%stx187375%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass187434%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp189751
                                                    (cons (if (or _%arguments-ok?187389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp189752
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187379%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp189752)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187379%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field187429%_ '()))
                              (cons _%object187431%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189751
                                                _%stx187375%_))
                                             (let ((_%$e187453%_
                                                    (let ((__tmp189753
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187379%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass187434%_
                                                       __tmp189753))))
                                               (if _%$e187453%_
                                                   ((lambda (_%klass187456%_)
                                                      (let ((__tmp189754
                                                             (cons (if (or _%arguments-ok?187389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp189755
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187379%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp189755)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self187379%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field187429%_ '()))
                                       (cons _%object187431%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp189754 _%stx187375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e187453%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187379%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp189756
                                                              (let ((_%$obj187462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp189757
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp189757))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj187462%_ '())
                                                (cons _%object187431%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass187434%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj187462%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187379%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187429%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj187462%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?187389%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187462%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187379%_
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
                                                               _%self187379%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187379%_
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
                 (gxc#xform-wrap-source __tmp189756 _%stx187375%_))
               (let ((__tmp189758
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object187431%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187379%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp189758 _%stx187375%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd187395187409%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g187391187401%_ _%g187392187404%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g187391187401%_ _%g187392187404%_))))))
            (declare (not safe))
            (_%g187390187465%_ _%args187376%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187137%_ _%ctx187138%_ _%stx187139%_ _%args187140%_)
        (let ((_%self187143%_ _%self187137%_))
          (let* ((_%arguments-ok?187153%_
                  (let ((__method189677
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self187143%_ 'check-arguments))))
                    (if __method189677
                        (__method189677
                         _%self187143%_
                         _%ctx187138%_
                         _%stx187139%_
                         _%args187140%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187143%_
                                 'check-arguments)))))
                 (_%g187155187169%_
                  (lambda (_%g187156187166%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g187156187166%_))))
                 (_%g187154187248%_
                  (lambda (_%g187156187172%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g187156187172%_))
                        (let ((_%e187161187174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g187156187172%_))))
                          (let ((_%hd187160187177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187161187174%_)))
                                (_%tl187159187179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187161187174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187159187179%_))
                                (let ((_%e187164187182%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187159187179%_))))
                                  (let ((_%hd187163187185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187164187182%_)))
                                        (_%tl187162187187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187164187182%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl187162187187%_))
                                        ((lambda (_%L187190%_ _%L187191%_)
                                           (let* ((_%klass187207%_
                                                   (let ((__tmp189759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187143%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx187139%_
                                                      __tmp189759)))
                                                  (_%field187209%_
                                                   (let ((__tmp189760
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187143%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass187207%_
                                                      __tmp189760)))
                                                  (_%object187211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187138%_
                                                      _%L187191%_)))
                                                  (_%value187213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187138%_
                                                      _%L187190%_)))
                                                  (_%klass187216%_
                                                   _%klass187207%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass187216%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp189761
                                                        (cons (if (or _%arguments-ok?187153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189762
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187143%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp189762)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187143%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187209%_ '()))
                                  (cons _%object187211%_
                                        (cons _%value187213%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189761
                                                    _%stx187139%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass187216%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp189763
                                                            (cons (if (or _%arguments-ok?187153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp189764
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187143%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp189764)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187143%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187209%_ '()))
                                      (cons _%object187211%_
                                            (cons _%value187213%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189763 _%stx187139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e187236%_
                                                            (let ((__tmp189765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self187143%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass187216%_
                       __tmp189765))))
               (if _%$e187236%_
                   ((lambda (_%klass187239%_)
                      (let ((__tmp189766
                             (cons (if (or _%arguments-ok?187153%_
                                           (let ((__tmp189767
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187143%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp189767)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187143%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field187209%_
                                                           '()))
                                               (cons _%object187211%_
                                                     (cons _%value187213%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp189766 _%stx187139%_)))
                    _%$e187236%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self187143%_ '4 '#f '#f))
                       (let ((__tmp189768
                              (let ((_%$obj187245%_
                                     (let ((__tmp189769
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189769))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187245%_
                                                              '())
                                                        (cons _%object187211%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187216%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187245%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187143%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187209%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187245%_
                                                                '()))
                                                    (cons _%value187213%_
                                                          '())))))
                            (cons (if _%arguments-ok?187153%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187143%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187213%_ '())))))
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
                               _%self187143%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187245%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187143%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value187213%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp189768 _%stx187139%_))
                       (let ((__tmp189770
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object187211%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187143%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value187213%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp189770
                          _%stx187139%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd187163187185%_
                                         _%hd187160187177%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g187155187169%_
                                           _%g187156187172%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g187155187169%_ _%g187156187172%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g187155187169%_ _%g187156187172%_))))))
            (declare (not safe))
            (_%g187154187248%_ _%args187140%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self186952%_ _%ctx186953%_ _%stx186954%_ _%args186955%_)
        (let ((_%self186958%_ _%self186952%_))
          (let* ((_%self186967186977%_ _%self186958%_)
                 (_%E186969186981%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self186967186977%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K186970186991%_
                  (lambda (_%inline186984%_ _%dispatch186985%_ _%arity186986%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self186958%_
                           _%args186955%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx186954%_
                           _%arity186986%_)))
                    (if _%inline186984%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp189771
                                 (let ((__tmp189772
                                        (_%inline186984%_ _%stx186954%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189772
                                    _%stx186954%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx186953%_ __tmp189771)))
                        (if (and _%dispatch186985%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch186985%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch186985%_))
                              (let ((__tmp189773
                                     (let ((__tmp189774
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch186985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args186955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp189774
                                        _%stx186954%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx186953%_ __tmp189773)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self186958%_
                               _%ctx186953%_
                               _%stx186954%_
                               _%args186955%_)))))))
            (if '#t
                (let* ((_%e186971186994%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186967186977%_
                           '1
                           '#f
                           '#f)))
                       (_%e186972186997%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186967186977%_
                           '2
                           '#f
                           '#f)))
                       (_%e186973187000%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186967186977%_
                           '3
                           '#f
                           '#f)))
                       (_%arity187003%_ _%e186973187000%_)
                       (_%e186974187005%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186967186977%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch187008%_ _%e186974187005%_)
                       (_%e186975187010%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186967186977%_
                           '5
                           '#f
                           '#f)))
                       (_%inline187013%_ _%e186975187010%_))
                  (declare (not safe))
                  (_%K186970186991%_
                   _%inline187013%_
                   _%dispatch187008%_
                   _%arity187003%_))
                (let () (declare (not safe)) (_%E186969186981%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self186804%_ _%ctx186805%_ _%stx186806%_ _%args186807%_)
        (let ()
          (let* ((_%self186810%_ _%self186804%_)
                 (_%$e186824%_
                  (let ((__tmp189776
                         (lambda (_%g186819186821%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g186819186821%_
                              _%args186807%_))))
                        (__tmp189775
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self186810%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp189776 __tmp189775))))
            (if _%$e186824%_
                ((lambda (_%clause186827%_)
                   (let ((__method189678
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause186827%_ 'optimize-call))))
                     (if __method189678
                         (__method189678
                          _%clause186827%_
                          _%ctx186805%_
                          _%stx186806%_
                          _%args186807%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause186827%_
                                  'optimize-call)))))
                 _%$e186824%_)
                (let ((__tmp189777
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186810%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx186806%_
                   __tmp189777)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186548%_ _%ctx186549%_ _%stx186550%_ _%args186551%_)
        (let ((_%self186554%_ _%self186548%_))
          (let* ((_%self186563186572%_ _%self186554%_)
                 (_%E186565186576%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self186563186572%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K186566186663%_
                  (lambda (_%dispatch186579%_ _%table186580%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch186579%_))
                        (let* ((_%g186581186590%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch186579%_)))
                               (_%else186583186598%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch186579%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx186549%_
                                     _%stx186550%_))))
                               (_%K186585186647%_
                                (lambda (_%main186601%_ _%keys186602%_)
                                  (let ((_g189778_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx186550%_
                                            _%args186551%_))))
                                    (begin
                                      (let ((_g189779_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g189778_)
                                                   (##vector-length _g189778_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g189779_ 2)))
                                            (error "Context expects 2 values"
                                                   _g189779_)))
                                      (let ((_%pargs186604%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g189778_ 0)))
                                            (_%kwargs186605%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g189778_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main186601%_))
                                          (if _%table186580%_
                                              (let ((_%xargs186613%_
                                                     (map (lambda (_%key186607%_)
                                                            (let ((_%$e186609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key186607%_ _%kwargs186605%_))))
                      (if _%$e186609%_
                          _%$e186609%_
                          (let () '(%#ref absent-value)))))
                  _%keys186602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw186615%_)
                                                   (if (memq (car _%kw186615%_)
                                                             _%keys186602%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx186550%_
                                                          _%keys186602%_
                                                          _%kw186615%_))))
                                                 _%kwargs186605%_)
                                                (let ((__tmp189780
                                                       (let ((__tmp189781
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main186601%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs186604%_
                                           _%xargs186613%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp189781 _%stx186550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx186549%_
                                                   __tmp189780)))
                                              (let* ((_%kwt186617%_
                                                      (let ((__tmp189782
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp189782)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars186621%_
                                                      (map (lambda (_%_186619%_)
                                                             (let ((__tmp189783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp189783)))
                   _%kwargs186605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind186626%_
                                                      (map (lambda (_%kw186623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar186624%_)
                     (cons (cons _%kwvar186624%_ '())
                           (cons (cdr _%kw186623%_) '())))
                   _%kwargs186605%_
                   _%kwvars186621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset186631%_
                                                      (map (lambda (_%kw186628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar186629%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt186617%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw186628%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar186629%_
                                                               '()))
                                                   '()))))))
                   _%kwargs186605%_
                   _%kwvars186621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs186636%_
                                                      (map (lambda (_%kw186633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar186634%_)
                     (cons (car _%kw186633%_)
                           (cons '%#ref (cons _%kwvar186634%_ '()))))
                   _%kwargs186605%_
                   _%kwvars186621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs186644%_
                                                      (map (lambda (_%key186638%_)
                                                             (let ((_%$e186640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key186638%_ _%xkwargs186636%_))))
                       (if _%$e186640%_
                           _%$e186640%_
                           (let () '(%#ref absent-value)))))
                   _%keys186602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189784
                                                      (let ((__tmp189785
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind186626%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt186617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp189786
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs186605%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp189786
                                _%stx186550%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp189787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp189788
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main186601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt186617%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs186604%_ _%xargs186644%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp189788
                                       _%stx186550%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp189787 _%kwset186631%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp189785 _%stx186550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx186549%_
                                                 __tmp189784))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g186581186590%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e186586186650%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186581186590%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e186587186653%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186581186590%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%keys186656%_ _%e186587186653%_)
                                     (_%e186588186658%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186581186590%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%main186661%_ _%e186588186658%_))
                                (declare (not safe))
                                (_%K186585186647%_
                                 _%main186661%_
                                 _%keys186656%_))
                              (let ()
                                (declare (not safe))
                                (_%else186583186598%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx186549%_ _%stx186550%_))))))
            (if '#t
                (let* ((_%e186567186666%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186563186572%_
                           '1
                           '#f
                           '#f)))
                       (_%e186568186669%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186563186572%_
                           '2
                           '#f
                           '#f)))
                       (_%e186569186672%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186563186572%_
                           '3
                           '#f
                           '#f)))
                       (_%table186675%_ _%e186569186672%_)
                       (_%e186570186677%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186563186572%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch186680%_ _%e186570186677%_))
                  (declare (not safe))
                  (_%K186566186663%_ _%dispatch186680%_ _%table186675%_))
                (let () (declare (not safe)) (_%E186565186576%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186161%_ _%args186162%_)
        (let _%lp186164%_ ((_%rest186166%_ _%args186162%_)
                           (_%pargs186167%_ '())
                           (_%kwargs186168%_ '()))
          (let* ((_%__stx189495189496%_ _%rest186166%_)
                 (_%g186174186226%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189495189496%_)))))
            (let ((_%__kont189497189498%_
                   (lambda (_%L186405%_ _%L186406%_)
                     (let ((__tmp189789 (cons _%L186406%_ _%pargs186167%_)))
                       (declare (not safe))
                       (_%lp186164%_
                        _%L186405%_
                        __tmp189789
                        _%kwargs186168%_))))
                  (_%__kont189499189500%_
                   (lambda (_%L186351%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186351%_ _%pargs186167%_))
                             (reverse _%kwargs186168%_))))
                  (_%__kont189501189502%_
                   (lambda (_%L186298%_ _%L186299%_ _%L186300%_)
                     (let ((_%kw186317%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186300%_))))
                       (if (assq _%kw186317%_ _%kwargs186168%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186161%_
                              _%kw186317%_))
                           (let ((__tmp189790
                                  (cons (cons _%kw186317%_ _%L186299%_)
                                        _%kwargs186168%_)))
                             (declare (not safe))
                             (_%lp186164%_
                              _%L186298%_
                              _%pargs186167%_
                              __tmp189790))))))
                  (_%__kont189503189504%_
                   (lambda (_%L186246%_ _%L186247%_)
                     (let ((__tmp189791 (cons _%L186247%_ _%pargs186167%_)))
                       (declare (not safe))
                       (_%lp186164%_
                        _%L186246%_
                        __tmp189791
                        _%kwargs186168%_))))
                  (_%__kont189505189506%_
                   (lambda ()
                     (values (reverse _%pargs186167%_)
                             (reverse _%kwargs186168%_)))))
              (let ((_%__match189602189603%_
                     (lambda (_%e186207186266%_
                              _%hd186206186269%_
                              _%tl186205186271%_
                              _%e186210186274%_
                              _%hd186209186277%_
                              _%tl186208186279%_
                              _%e186213186282%_
                              _%hd186212186285%_
                              _%tl186211186287%_
                              _%e186216186290%_
                              _%hd186215186293%_
                              _%tl186214186295%_)
                       (let ((_%L186298%_ _%tl186214186295%_)
                             (_%L186299%_ _%hd186215186293%_)
                             (_%L186300%_ _%hd186212186285%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186300%_))
                             (_%__kont189501189502%_
                              _%L186298%_
                              _%L186299%_
                              _%L186300%_)
                             (_%__kont189503189504%_
                              _%tl186205186271%_
                              _%hd186206186269%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189495189496%_))
                    (let ((_%e186180186370%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189495189496%_))))
                      (let ((_%tl186178186375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186180186370%_)))
                            (_%hd186179186373%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186180186370%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186179186373%_))
                            (let ((_%e186183186378%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186179186373%_))))
                              (let ((_%tl186181186383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186183186378%_)))
                                    (_%hd186182186381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186183186378%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186182186381%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186182186381%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186181186383%_))
                                            (let ((_%e186186186386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186181186383%_))))
                                              (let ((_%tl186184186391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186186186386%_)))
                                                    (_%hd186185186389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186186186386%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186185186389%_))
                                                    (let ((_%e186187186394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186185186389%_))))
                                                      (if (equal? _%e186187186394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186184186391%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186178186375%_))
                          (let ((_%e186190186397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186178186375%_))))
                            (let ((_%tl186188186402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186190186397%_)))
                                  (_%hd186189186400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186190186397%_))))
                              (_%__kont189497189498%_
                               _%tl186188186402%_
                               _%hd186189186400%_)))
                          (_%__kont189503189504%_
                           _%tl186178186375%_
                           _%hd186179186373%_))
                      (_%__kont189503189504%_
                       _%tl186178186375%_
                       _%hd186179186373%_))
                  (if (equal? _%e186187186394%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186184186391%_))
                          (_%__kont189499189500%_ _%tl186178186375%_)
                          (_%__kont189503189504%_
                           _%tl186178186375%_
                           _%hd186179186373%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186184186391%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186178186375%_))
                              (let ((_%e186216186290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186178186375%_))))
                                (let ((_%tl186214186295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186216186290%_)))
                                      (_%hd186215186293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186216186290%_))))
                                  (_%__match189602189603%_
                                   _%e186180186370%_
                                   _%hd186179186373%_
                                   _%tl186178186375%_
                                   _%e186183186378%_
                                   _%hd186182186381%_
                                   _%tl186181186383%_
                                   _%e186186186386%_
                                   _%hd186185186389%_
                                   _%tl186184186391%_
                                   _%e186216186290%_
                                   _%hd186215186293%_
                                   _%tl186214186295%_)))
                              (_%__kont189503189504%_
                               _%tl186178186375%_
                               _%hd186179186373%_))
                          (_%__kont189503189504%_
                           _%tl186178186375%_
                           _%hd186179186373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186184186391%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186178186375%_))
                                                            (let ((_%e186216186290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186178186375%_))))
                      (let ((_%tl186214186295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186216186290%_)))
                            (_%hd186215186293%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186216186290%_))))
                        (_%__match189602189603%_
                         _%e186180186370%_
                         _%hd186179186373%_
                         _%tl186178186375%_
                         _%e186183186378%_
                         _%hd186182186381%_
                         _%tl186181186383%_
                         _%e186186186386%_
                         _%hd186185186389%_
                         _%tl186184186391%_
                         _%e186216186290%_
                         _%hd186215186293%_
                         _%tl186214186295%_)))
                    (_%__kont189503189504%_
                     _%tl186178186375%_
                     _%hd186179186373%_))
                (_%__kont189503189504%_
                 _%tl186178186375%_
                 _%hd186179186373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189503189504%_
                                             _%tl186178186375%_
                                             _%hd186179186373%_))
                                        (_%__kont189503189504%_
                                         _%tl186178186375%_
                                         _%hd186179186373%_))
                                    (_%__kont189503189504%_
                                     _%tl186178186375%_
                                     _%hd186179186373%_))))
                            (_%__kont189503189504%_
                             _%tl186178186375%_
                             _%hd186179186373%_))))
                    (_%__kont189505189506%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186145%_ _%ctx186146%_ _%stx186147%_ _%args186148%_)
        (let ((_%self186151%_ _%self186145%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186146%_ _%stx186147%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self185833%_ _%stx185834%_)
        (let* ((_%__stx189611189612%_ _%stx185834%_)
               (_%g185837185877%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189611189612%_)))))
          (let ((_%__kont189613189614%_
                 (lambda (_%L185983%_ _%L185984%_)
                   (let ((_%$e186011%_
                          (member 'return:
                                  (let ((__tmp189792
                                         (lambda (_%g186003186006%_
                                                  _%g186004186008%_)
                                           (cons _%g186003186006%_
                                                 _%g186004186008%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp189792 '() _%L185984%_))
                                  gx#stx-eq?)))
                     (if _%$e186011%_
                         ((lambda (_%tail186014%_)
                            (let ((_%type186016%_
                                   (let ((__tmp189793
                                          (let ((__tmp189794
                                                 (cadr _%tail186014%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp189794))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx185834%_
                                      __tmp189793))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx185834%_
                                 _%L185983%_
                                 _%type186016%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self185833%_
                                 _%L185983%_))))
                          _%$e186011%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self185833%_ _%L185983%_))))))
                (_%__kont189617189618%_
                 (lambda (_%L185906%_ _%L185907%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185833%_ _%L185906%_)))))
            (let ((_%__match189648189649%_
                   (lambda (_%e185843185927%_
                            _%hd185842185930%_
                            _%tl185841185932%_
                            _%e185846185935%_
                            _%hd185845185938%_
                            _%tl185844185940%_
                            _%e185849185943%_
                            _%hd185848185946%_
                            _%tl185847185948%_
                            _%__splice189615189616%_
                            _%target185850185951%_
                            _%tl185852185953%_)
                     (letrec ((_%loop185853185956%_
                               (lambda (_%hd185851185959%_
                                        _%signature185857185961%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd185851185959%_))
                                     (let ((_%e185854185964%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd185851185959%_))))
                                       (let ((_%lp-tl185856185969%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e185854185964%_)))
                                             (_%lp-hd185855185967%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e185854185964%_))))
                                         (let ((__tmp189795
                                                (cons _%lp-hd185855185967%_
                                                      _%signature185857185961%_)))
                                           (declare (not safe))
                                           (_%loop185853185956%_
                                            _%lp-tl185856185969%_
                                            __tmp189795))))
                                     (let ((_%signature185858185972%_
                                            (reverse _%signature185857185961%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl185844185940%_))
                                           (let ((_%e185861185975%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl185844185940%_))))
                                             (let ((_%tl185859185980%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e185861185975%_)))
                                                   (_%hd185860185978%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e185861185975%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl185859185980%_))
                                                   (_%__kont189613189614%_
                                                    _%hd185860185978%_
                                                    _%signature185858185972%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g185837185877%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g185837185877%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop185853185956%_ _%target185850185951%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189611189612%_))
                  (let ((_%e185843185927%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189611189612%_))))
                    (let ((_%tl185841185932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185843185927%_)))
                          (_%hd185842185930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185843185927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185841185932%_))
                          (let ((_%e185846185935%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185841185932%_))))
                            (let ((_%tl185844185940%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185846185935%_)))
                                  (_%hd185845185938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185846185935%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd185845185938%_))
                                  (let ((_%e185849185943%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd185845185938%_))))
                                    (let ((_%tl185847185948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185849185943%_)))
                                          (_%hd185848185946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185849185943%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd185848185946%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd185848185946%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl185847185948%_))
                                                  (let ((_%__splice189615189616%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl185847185948%_
                                                            '0))))
                                                    (let ((_%tl185852185953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189615189616%_
                                                              '1)))
                                                          (_%target185850185951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189615189616%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185852185953%_))
                                                          (_%__match189648189649%_
                                                           _%e185843185927%_
                                                           _%hd185842185930%_
                                                           _%tl185841185932%_
                                                           _%e185846185935%_
                                                           _%hd185845185938%_
                                                           _%tl185844185940%_
                                                           _%e185849185943%_
                                                           _%hd185848185946%_
                                                           _%tl185847185948%_
                                                           _%__splice189615189616%_
                                                           _%target185850185951%_
                                                           _%tl185852185953%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl185844185940%_))
                      (let ((_%e185872185898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl185844185940%_))))
                        (let ((_%tl185870185903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185872185898%_)))
                              (_%hd185871185901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185872185898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl185870185903%_))
                              (_%__kont189617189618%_
                               _%hd185871185901%_
                               _%hd185845185938%_)
                              (let ()
                                (declare (not safe))
                                (_%g185837185877%_)))))
                      (let () (declare (not safe)) (_%g185837185877%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl185844185940%_))
                                                      (let ((_%e185872185898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl185844185940%_))))
                (let ((_%tl185870185903%_
                       (let () (declare (not safe)) (##cdr _%e185872185898%_)))
                      (_%hd185871185901%_
                       (let ()
                         (declare (not safe))
                         (##car _%e185872185898%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185870185903%_))
                      (_%__kont189617189618%_
                       _%hd185871185901%_
                       _%hd185845185938%_)
                      (let () (declare (not safe)) (_%g185837185877%_)))))
              (let () (declare (not safe)) (_%g185837185877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl185844185940%_))
                                                  (let ((_%e185872185898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl185844185940%_))))
                                                    (let ((_%tl185870185903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e185872185898%_)))
                                                          (_%hd185871185901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e185872185898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185870185903%_))
                                                          (_%__kont189617189618%_
                                                           _%hd185871185901%_
                                                           _%hd185845185938%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g185837185877%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g185837185877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185844185940%_))
                                              (let ((_%e185872185898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185844185940%_))))
                                                (let ((_%tl185870185903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185872185898%_)))
                                                      (_%hd185871185901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185872185898%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185870185903%_))
                                                      (_%__kont189617189618%_
                                                       _%hd185871185901%_
                                                       _%hd185845185938%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g185837185877%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g185837185877%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185844185940%_))
                                      (let ((_%e185872185898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185844185940%_))))
                                        (let ((_%tl185870185903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185872185898%_)))
                                              (_%hd185871185901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185872185898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185870185903%_))
                                              (_%__kont189617189618%_
                                               _%hd185871185901%_
                                               _%hd185845185938%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g185837185877%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g185837185877%_))))))
                          (let () (declare (not safe)) (_%g185837185877%_)))))
                  (let () (declare (not safe)) (_%g185837185877%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx185811%_ _%expr185812%_ _%type185813%_)
        (let ((_%$e185815%_
               (let () (declare (not safe)) (not _%type185813%_))))
          (if _%$e185815%_
              _%$e185815%_
              (let ((_%$e185818%_
                     (eq? (##structure-ref _%type185813%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e185818%_
                    _%$e185818%_
                    (let ((_%expr-type185822%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr185812%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type185822%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx185811%_
                             _%type185813%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type185822%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx185811%_
                                 _%type185813%_
                                 _%expr-type185822%_))
                              (let ((_%$e185826%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type185822%_
                                        'gxc#!abort::t))))
                                (if _%$e185826%_
                                    _%$e185826%_
                                    (let ((_%$e185829%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type185822%_
                                              _%type185813%_))))
                                      (if _%$e185829%_
                                          _%$e185829%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx185811%_
                                             _%type185813%_
                                             _%expr-type185822%_)))))))))))))))))
