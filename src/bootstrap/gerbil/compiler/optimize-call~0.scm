(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1713004417)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp195794 (list gxc#::basic-xform::t))
            (__tmp195793 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp195794
         '()
         __tmp195793
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args195071%_
        (apply make-instance gxc#::optimize-call::t _%$args195071%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp195795
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
        (__make-promise __tmp195795)))
    (define gxc#apply-optimize-call
      (lambda (_%stx195063%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self195066%_
                (let ((__obj195785
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj195785))
               (__tmp195796
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195066%_ _%stx195063%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195796
           gxc#current-compile-method
           _%self195066%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp195798 (list gxc#::void::t))
            (__tmp195797 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp195798
         '()
         __tmp195797
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args195060%_
        (apply make-instance gxc#::check-return-type::t _%$args195060%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp195799
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
        (__make-promise __tmp195799)))
    (define gxc#apply-check-return-type
      (lambda (_%stx195052%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self195055%_
                (let ((__obj195787
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj195787))
               (__tmp195800
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195055%_ _%stx195052%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195800
           gxc#current-compile-method
           _%self195055%_))))
    (define gxc#optimize-call%
      (lambda (_%self194653%_ _%stx194654%_)
        (let* ((_%__stx195140195141%_ _%stx194654%_)
               (_%g194657194703%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195140195141%_)))))
          (let ((_%__kont195142195143%_
                 (lambda (_%L194846%_ _%L194847%_)
                   (let* ((_%rator-id194867%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L194847%_)))
                          (_%rator-type194869%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id194867%_))))
                     (if (or (not _%rator-type194869%_)
                             (eq? (##structure-ref
                                   _%rator-type194869%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self194653%_ _%stx194654%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type194869%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp195801
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type194869%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id194867%_
                                  '" => "
                                  _%rator-type194869%_
                                  '" "
                                  __tmp195801))
                               (let* ((_%optimized194884%_
                                       (let ((__method195788
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type194869%_
                                                 'optimize-call))))
                                         (if __method195788
                                             (let ((__tmp195802
                                                    (let ((__tmp195803
                                                           (lambda (_%g194876194879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g194877194881%_)
                     (cons _%g194876194879%_ _%g194877194881%_))))
              (declare (not safe))
              (__foldr1 __tmp195803 '() _%L194846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method195788
                                                _%rator-type194869%_
                                                _%self194653%_
                                                _%stx194654%_
                                                __tmp195802))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type194869%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx195088195089%_
                                       _%optimized194884%_)
                                      (_%g194887194916%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx195088195089%_)))))
                                 (let ((_%__kont195090195091%_
                                        (lambda (_%L194984%_ _%L194985%_)
                                          (let* ((_%optimized-rator-id195012%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L194985%_)))
                                                 (_%rator-type195017%_
                                                  (let ((_%$e195014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id195012%_))))
                                                    (if _%$e195014%_
                                                        _%$e195014%_
                                                        _%rator-type194869%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type195017%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id195012%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type195017%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type195017%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized194884%_
                                                (let ((__tmp195804
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L194985%_ '()))
                           (let ((__tmp195805
                                  (lambda (_%g195025195028%_ _%g195026195030%_)
                                    (cons _%g195025195028%_
                                          _%g195026195030%_))))
                             (declare (not safe))
                             (__foldr1 __tmp195805 '() _%L194984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp195804
                                                   _%stx194654%_))))))
                                       (_%__kont195094195095%_
                                        (lambda () _%optimized194884%_)))
                                   (let ((_%__match195137195138%_
                                          (lambda (_%e194891194928%_
                                                   _%hd194892194931%_
                                                   _%tl194893194933%_
                                                   _%e194894194936%_
                                                   _%hd194895194939%_
                                                   _%tl194896194941%_
                                                   _%e194897194944%_
                                                   _%hd194898194947%_
                                                   _%tl194899194949%_
                                                   _%e194900194952%_
                                                   _%hd194901194955%_
                                                   _%tl194902194957%_
                                                   _%__splice195092195093%_
                                                   _%target194903194960%_
                                                   _%tl194905194962%_)
                                            (letrec ((_%loop194906194965%_
                                                      (lambda (_%hd194904194968%_
                                                               _%arg194910194970%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd194904194968%_))
                                                            (let ((_%e194907194973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd194904194968%_))))
                      (let ((_%lp-tl194909194978%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194907194973%_)))
                            (_%lp-hd194908194976%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194907194973%_))))
                        (_%loop194906194965%_
                         _%lp-tl194909194978%_
                         (cons _%lp-hd194908194976%_ _%arg194910194970%_))))
                    (let ((_%arg194911194981%_ (reverse _%arg194910194970%_)))
                      (_%__kont195090195091%_
                       _%arg194911194981%_
                       _%hd194901194955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop194906194965%_
                                               _%target194903194960%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx195088195089%_))
                                         (let ((_%e194891194928%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx195088195089%_))))
                                           (let ((_%tl194893194933%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194891194928%_)))
                                                 (_%hd194892194931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194891194928%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd194892194931%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd194892194931%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl194893194933%_))
                                                         (let ((_%e194894194936%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl194893194933%_))))
                   (let ((_%tl194896194941%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e194894194936%_)))
                         (_%hd194895194939%_
                          (let ()
                            (declare (not safe))
                            (##car _%e194894194936%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd194895194939%_))
                         (let ((_%e194897194944%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd194895194939%_))))
                           (let ((_%tl194899194949%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e194897194944%_)))
                                 (_%hd194898194947%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e194897194944%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd194898194947%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd194898194947%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl194899194949%_))
                                         (let ((_%e194900194952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl194899194949%_))))
                                           (let ((_%tl194902194957%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e194900194952%_)))
                                                 (_%hd194901194955%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e194900194952%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl194902194957%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl194896194941%_))
                                                     (let ((_%__splice195092195093%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl194896194941%_
                                                               '0))))
                                                       (let ((_%tl194905194962%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice195092195093%_ '1)))
                     (_%target194903194960%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice195092195093%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl194905194962%_))
                     (_%__match195137195138%_
                      _%e194891194928%_
                      _%hd194892194931%_
                      _%tl194893194933%_
                      _%e194894194936%_
                      _%hd194895194939%_
                      _%tl194896194941%_
                      _%e194897194944%_
                      _%hd194898194947%_
                      _%tl194899194949%_
                      _%e194900194952%_
                      _%hd194901194955%_
                      _%tl194902194957%_
                      _%__splice195092195093%_
                      _%target194903194960%_
                      _%tl194905194962%_)
                     (_%__kont195094195095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195094195095%_))
                                                 (_%__kont195094195095%_))))
                                         (_%__kont195094195095%_))
                                     (_%__kont195094195095%_))
                                 (_%__kont195094195095%_))))
                         (_%__kont195094195095%_))))
                 (_%__kont195094195095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont195094195095%_))
                                                 (_%__kont195094195095%_))))
                                         (_%__kont195094195095%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type194869%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type194869%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp195806
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L194847%_
                                                                '()))
                                                    (map (lambda (_%g195036195038%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self194653%_
                                                              _%g195036195038%_)))
                                                         (let ((__tmp195807
                                                                (lambda (_%g195040195043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g195041195045%_)
                          (cons _%g195040195043%_ _%g195041195045%_))))
                   (declare (not safe))
                   (__foldr1 __tmp195807 '() _%L194846%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp195806
                                    _%stx194654%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx194654%_
                                    _%rator-type194869%_))))))))
                (_%__kont195146195147%_
                 (lambda (_%L194748%_ _%L194749%_)
                   (let ((_%rator-type194766%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L194749%_))))
                     (if (and _%rator-type194766%_
                              (eq? (##structure-ref
                                    _%rator-type194766%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type194766%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type194766%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type194766%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp195808
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self194653%_
                                               _%L194749%_))
                                            (map (lambda (_%g194768194770%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194653%_
                                                      _%g194768194770%_)))
                                                 (let ((__tmp195809
                                                        (lambda (_%g194772194775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g194773194777%_)
                  (cons _%g194772194775%_ _%g194773194777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp195809
                                                    '()
                                                    _%L194748%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195808 _%stx194654%_))
                         (if (or (not _%rator-type194766%_)
                                 (let ((__tmp195810
                                        (##structure-ref
                                         _%rator-type194766%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp195810 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self194653%_ _%stx194654%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx194654%_
                                _%rator-type194766%_))))))))
            (let* ((_%__match195207195208%_
                    (lambda (_%e194684194708%_
                             _%hd194685194711%_
                             _%tl194686194713%_
                             _%e194687194716%_
                             _%hd194688194719%_
                             _%tl194689194721%_
                             _%__splice195148195149%_
                             _%target194690194724%_
                             _%tl194692194726%_)
                      (letrec ((_%loop194693194729%_
                                (lambda (_%hd194691194732%_
                                         _%rand194697194734%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194691194732%_))
                                      (let ((_%e194694194737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194691194732%_))))
                                        (let ((_%lp-tl194696194742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194694194737%_)))
                                              (_%lp-hd194695194740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194694194737%_))))
                                          (_%loop194693194729%_
                                           _%lp-tl194696194742%_
                                           (cons _%lp-hd194695194740%_
                                                 _%rand194697194734%_))))
                                      (let ((_%rand194698194745%_
                                             (reverse _%rand194697194734%_)))
                                        (_%__kont195146195147%_
                                         _%rand194698194745%_
                                         _%hd194688194719%_))))))
                        (_%loop194693194729%_ _%target194690194724%_ '()))))
                   (_%__match195187195188%_
                    (lambda (_%e194661194790%_
                             _%hd194662194793%_
                             _%tl194663194795%_
                             _%e194664194798%_
                             _%hd194665194801%_
                             _%tl194666194803%_
                             _%e194667194806%_
                             _%hd194668194809%_
                             _%tl194669194811%_
                             _%e194670194814%_
                             _%hd194671194817%_
                             _%tl194672194819%_
                             _%__splice195144195145%_
                             _%target194673194822%_
                             _%tl194675194824%_)
                      (letrec ((_%loop194676194827%_
                                (lambda (_%hd194674194830%_
                                         _%rand194680194832%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194674194830%_))
                                      (let ((_%e194677194835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194674194830%_))))
                                        (let ((_%lp-tl194679194840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194677194835%_)))
                                              (_%lp-hd194678194838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194677194835%_))))
                                          (_%loop194676194827%_
                                           _%lp-tl194679194840%_
                                           (cons _%lp-hd194678194838%_
                                                 _%rand194680194832%_))))
                                      (let ((_%rand194681194843%_
                                             (reverse _%rand194680194832%_)))
                                        (_%__kont195142195143%_
                                         _%rand194681194843%_
                                         _%hd194671194817%_))))))
                        (_%loop194676194827%_ _%target194673194822%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195140195141%_))
                  (let ((_%e194661194790%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195140195141%_))))
                    (let ((_%tl194663194795%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194661194790%_)))
                          (_%hd194662194793%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194661194790%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194663194795%_))
                          (let ((_%e194664194798%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194663194795%_))))
                            (let ((_%tl194666194803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194664194798%_)))
                                  (_%hd194665194801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194664194798%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194665194801%_))
                                  (let ((_%e194667194806%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194665194801%_))))
                                    (let ((_%tl194669194811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194667194806%_)))
                                          (_%hd194668194809%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194667194806%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194668194809%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194668194809%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194669194811%_))
                                                  (let ((_%e194670194814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194669194811%_))))
                                                    (let ((_%tl194672194819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194670194814%_)))
                                                          (_%hd194671194817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194670194814%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194672194819%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194666194803%_))
                      (let ((_%__splice195144195145%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194666194803%_
                                '0))))
                        (let ((_%tl194675194824%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195144195145%_ '1)))
                              (_%target194673194822%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195144195145%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194675194824%_))
                              (_%__match195187195188%_
                               _%e194661194790%_
                               _%hd194662194793%_
                               _%tl194663194795%_
                               _%e194664194798%_
                               _%hd194665194801%_
                               _%tl194666194803%_
                               _%e194667194806%_
                               _%hd194668194809%_
                               _%tl194669194811%_
                               _%e194670194814%_
                               _%hd194671194817%_
                               _%tl194672194819%_
                               _%__splice195144195145%_
                               _%target194673194822%_
                               _%tl194675194824%_)
                              (let ()
                                (declare (not safe))
                                (_%g194657194703%_)))))
                      (let () (declare (not safe)) (_%g194657194703%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl194666194803%_))
                      (let ((_%__splice195148195149%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl194666194803%_
                                '0))))
                        (let ((_%tl194692194726%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195148195149%_ '1)))
                              (_%target194690194724%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice195148195149%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194692194726%_))
                              (_%__match195207195208%_
                               _%e194661194790%_
                               _%hd194662194793%_
                               _%tl194663194795%_
                               _%e194664194798%_
                               _%hd194665194801%_
                               _%tl194666194803%_
                               _%__splice195148195149%_
                               _%target194690194724%_
                               _%tl194692194726%_)
                              (let ()
                                (declare (not safe))
                                (_%g194657194703%_)))))
                      (let () (declare (not safe)) (_%g194657194703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194666194803%_))
                                                      (let ((_%__splice195148195149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl194666194803%_ '0))))
                (let ((_%tl194692194726%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195148195149%_ '1)))
                      (_%target194690194724%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice195148195149%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194692194726%_))
                      (_%__match195207195208%_
                       _%e194661194790%_
                       _%hd194662194793%_
                       _%tl194663194795%_
                       _%e194664194798%_
                       _%hd194665194801%_
                       _%tl194666194803%_
                       _%__splice195148195149%_
                       _%target194690194724%_
                       _%tl194692194726%_)
                      (let () (declare (not safe)) (_%g194657194703%_)))))
              (let () (declare (not safe)) (_%g194657194703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl194666194803%_))
                                                  (let ((_%__splice195148195149%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl194666194803%_
                                                            '0))))
                                                    (let ((_%tl194692194726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195148195149%_
                                                              '1)))
                                                          (_%target194690194724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195148195149%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194692194726%_))
                                                          (_%__match195207195208%_
                                                           _%e194661194790%_
                                                           _%hd194662194793%_
                                                           _%tl194663194795%_
                                                           _%e194664194798%_
                                                           _%hd194665194801%_
                                                           _%tl194666194803%_
                                                           _%__splice195148195149%_
                                                           _%target194690194724%_
                                                           _%tl194692194726%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194657194703%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g194657194703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl194666194803%_))
                                              (let ((_%__splice195148195149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl194666194803%_
                                                        '0))))
                                                (let ((_%tl194692194726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195148195149%_
                                                          '1)))
                                                      (_%target194690194724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice195148195149%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194692194726%_))
                                                      (_%__match195207195208%_
                                                       _%e194661194790%_
                                                       _%hd194662194793%_
                                                       _%tl194663194795%_
                                                       _%e194664194798%_
                                                       _%hd194665194801%_
                                                       _%tl194666194803%_
                                                       _%__splice195148195149%_
                                                       _%target194690194724%_
                                                       _%tl194692194726%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194657194703%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g194657194703%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194666194803%_))
                                      (let ((_%__splice195148195149%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl194666194803%_
                                                '0))))
                                        (let ((_%tl194692194726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195148195149%_
                                                  '1)))
                                              (_%target194690194724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195148195149%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194692194726%_))
                                              (_%__match195207195208%_
                                               _%e194661194790%_
                                               _%hd194662194793%_
                                               _%tl194663194795%_
                                               _%e194664194798%_
                                               _%hd194665194801%_
                                               _%tl194666194803%_
                                               _%__splice195148195149%_
                                               _%target194690194724%_
                                               _%tl194692194726%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g194657194703%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g194657194703%_))))))
                          (let () (declare (not safe)) (_%g194657194703%_)))))
                  (let () (declare (not safe)) (_%g194657194703%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self191032194613%_ _%ctx194615%_ _%stx194616%_ _%args194617%_)
        (let* ((_%self194619%_ _%self191032194613%_)
               (_%self194621%_ _%self194619%_))
          (if (let ((__method195789
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self194621%_ 'check-arguments))))
                (if __method195789
                    (let ()
                      (declare (not safe))
                      (__method195789
                       _%self194621%_
                       _%ctx194615%_
                       _%stx194616%_
                       _%args194617%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self194621%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature194631%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194621%_ '2 '#f '#f)))
                     (_%signature194633%_ _%signature194631%_)
                     (_%$e194643%_
                      (if _%signature194633%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature194633%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e194643%_
                    ((lambda (_%unchecked194646%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked194646%_))
                           (let ((__tmp195811
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked194646%_
                                                          '()))
                                              (map (lambda (_%g194647194649%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx194615%_
                                                        _%g194647194649%_)))
                                                   _%args194617%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp195811
                              _%stx194616%_
                              _%ctx194615%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx194615%_ _%stx194616%_))))
                     _%$e194643%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx194615%_ _%stx194616%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx194615%_ _%stx194616%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass195073 __method-table195074)
        (let ((__check-arguments195075
               (let ((__tmp195812
                      (lambda ()
                        (let ((__method195076
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195074
                                  'check-arguments
                                  '#f))))
                          (if __method195076
                              __method195076
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195812))))
          (lambda (_%self191032194613%_
                   _%ctx194615%_
                   _%stx194616%_
                   _%args194617%_)
            (let* ((_%self194619%_ _%self191032194613%_)
                   (_%self194621%_ _%self194619%_))
              (if ((force __check-arguments195075)
                   _%self194621%_
                   _%ctx194615%_
                   _%stx194616%_
                   _%args194617%_)
                  (let* ((_%signature194631%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self194621%_
                             '2
                             '#f
                             '#f)))
                         (_%signature194633%_ _%signature194631%_)
                         (_%$e194643%_
                          (if _%signature194633%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature194633%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e194643%_
                        ((lambda (_%unchecked194646%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked194646%_))
                               (let ((__tmp195813
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked194646%_
                                                              '()))
                                                  (map (lambda (_%g194647194649%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx194615%_
                                                            _%g194647194649%_)))
                                                       _%args194617%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp195813
                                  _%stx194616%_
                                  _%ctx194615%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx194615%_
                                  _%stx194616%_))))
                         _%$e194643%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx194615%_ _%stx194616%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx194615%_ _%stx194616%_))))))))
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
      (lambda (_%self191033194362%_ _%ctx194364%_ _%stx194365%_ _%args194366%_)
        (let* ((_%self194368%_ _%self191033194362%_)
               (_%self194370%_ _%self194368%_)
               (_%signature194379194381%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self194370%_ '2 '#f '#f))))
          (if _%signature194379194381%_
              (let* ((_%signature194384%_ _%signature194379194381%_)
                     (_%argument-types194385194387%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature194384%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types194385194387%_
                    (let* ((_%argument-types194390%_
                            _%argument-types194385194387%_)
                           (_%argument-types194395%_
                            (let ((__tmp195814
                                   (lambda (_%t194393%_)
                                     (if _%t194393%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194365%_
                                            _%t194393%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp195814
                               _%argument-types194390%_))))
                      (let _%loop194397%_ ((_%rest-args194399%_ _%args194366%_)
                                           (_%rest-types194400%_
                                            _%argument-types194395%_)
                                           (_%result194401%_ '#t))
                        (let* ((_%rest-args194402194410%_ _%rest-args194399%_)
                               (_%else194404194418%_
                                (lambda () _%result194401%_))
                               (_%K194406194479%_
                                (lambda (_%rest-args194421%_ _%arg194422%_)
                                  (let* ((_%rest-types194423194434%_
                                          _%rest-types194400%_)
                                         (_%E194427194438%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types194423194434%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K194430194467%_
                                           (lambda (_%rest-types194464%_
                                                    _%type194465%_)
                                             (_%loop194397%_
                                              _%rest-args194421%_
                                              _%rest-types194464%_
                                              (if (gxc#check-expression-type!
                                                   _%stx194365%_
                                                   _%arg194422%_
                                                   _%type194465%_)
                                                  _%result194401%_
                                                  '#f))))
                                          (_%K194429194458%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx194365%_
                                                _%argument-types194395%_))))
                                          (_%K194428194448%_
                                           (lambda (_%tail-type194442%_)
                                             (if (let ((__tmp195815
                                                        (lambda (_%g194443194445%_)
                                                          (gxc#check-expression-type!
                                                           _%stx194365%_
                                                           _%g194443194445%_
                                                           _%tail-type194442%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp195815
                                                    _%rest-args194421%_))
                                                 _%result194401%_
                                                 '#f))))
                                      (let ((_%try-match194425194461%_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##null? _%rest-types194423194434%_))
                                                   (_%K194429194458%_)
                                                   (let ((_%tail-type194451%_
                                                          _%rest-types194423194434%_))
                                                     (_%K194428194448%_
                                                      _%tail-type194451%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%rest-types194423194434%_))
                                            (let ((_%tl194432194472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types194423194434%_)))
                                                  (_%hd194431194470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types194423194434%_))))
                                              (let ((_%type194475%_
                                                     _%hd194431194470%_)
                                                    (_%rest-types194477%_
                                                     _%tl194432194472%_))
                                                (_%K194430194467%_
                                                 _%rest-types194477%_
                                                 _%type194475%_)))
                                            (_%try-match194425194461%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest-args194402194410%_))
                              (let ((_%hd194407194482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args194402194410%_)))
                                    (_%tl194408194484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args194402194410%_))))
                                (let* ((_%arg194487%_ _%hd194407194482%_)
                                       (_%rest-args194489%_
                                        _%tl194408194484%_))
                                  (_%K194406194479%_
                                   _%rest-args194489%_
                                   _%arg194487%_)))
                              (_%else194404194418%_)))))
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
      (lambda (_%self191034194171%_ _%ctx194173%_ _%stx194174%_ _%args194175%_)
        (let* ((_%self194177%_ _%self191034194171%_)
               (_%self194179%_ _%self194177%_)
               (_%g194189194199%_
                (lambda (_%g194190194196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194190194196%_))))
               (_%g194188194237%_
                (lambda (_%g194190194202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194190194202%_))
                      (let ((_%e194192194204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194190194202%_))))
                        (let ((_%hd194193194207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194192194204%_)))
                              (_%tl194194194209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194192194204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194194194209%_))
                              ((lambda (_%L194212%_)
                                 (let* ((_%klass194224%_
                                         (let ((__tmp195816
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self194179%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx194174%_
                                            __tmp195816)))
                                        (_%object194226%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx194173%_
                                            _%L194212%_)))
                                        (_%instance?194231%_
                                         (let ((_%$e194228%_
                                                (gxc#expression-type?
                                                 _%object194226%_
                                                 _%klass194224%_)))
                                           (if _%$e194228%_
                                               _%$e194228%_
                                               (gxc#expression-type?
                                                _%L194212%_
                                                _%klass194224%_)))))
                                   (if _%instance?194231%_
                                       (let ((__tmp195817
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194226%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194212%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194226%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195817
                                          _%stx194174%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx194173%_
                                          _%stx194174%_)))))
                               _%hd194193194207%_)
                              (_%g194189194199%_ _%g194190194202%_))))
                      (_%g194189194199%_ _%g194190194202%_)))))
          (_%g194188194237%_ _%args194175%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self191035193965%_ _%ctx193967%_ _%stx193968%_ _%args193969%_)
        (let* ((_%self193971%_ _%self191035193965%_)
               (_%self193973%_ _%self193971%_)
               (_%g193983193993%_
                (lambda (_%g193984193990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193984193990%_))))
               (_%g193982194046%_
                (lambda (_%g193984193996%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193984193996%_))
                      (let ((_%e193986193998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193984193996%_))))
                        (let ((_%hd193987194001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193986193998%_)))
                              (_%tl193988194003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193986193998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193988194003%_))
                              ((lambda (_%L194006%_)
                                 (let* ((_%klass194018%_
                                         (let ((__tmp195818
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193973%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193968%_
                                            __tmp195818)))
                                        (_%object194020%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193967%_
                                            _%L194006%_)))
                                        (_%instance?194025%_
                                         (let ((_%$e194022%_
                                                (gxc#expression-type?
                                                 _%object194020%_
                                                 _%klass194018%_)))
                                           (if _%$e194022%_
                                               _%$e194022%_
                                               (gxc#expression-type?
                                                _%L194006%_
                                                _%klass194018%_))))
                                        (_%klass194028%_ _%klass194018%_))
                                   (if _%instance?194025%_
                                       (let ((__tmp195819
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object194020%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L194006%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object194020%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195819
                                          _%stx193968%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass194028%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195820
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass194028%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object194020%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195820
                                              _%stx193968%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass194028%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195821
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass194028%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object194020%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195821
                                                  _%stx193968%_))
                                               (let ((__tmp195822
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self193973%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object194020%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195822
                                                  _%stx193968%_)))))))
                               _%hd193987194001%_)
                              (_%g193983193993%_ _%g193984193996%_))))
                      (_%g193983193993%_ _%g193984193996%_)))))
          (_%g193982194046%_ _%args193969%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx193628%_)
        (let* ((_%__stx195217195218%_ _%stx193628%_)
               (_%g193633193674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195217195218%_)))))
          (let ((_%__kont195219195220%_ (lambda () '#t))
                (_%__kont195221195222%_ (lambda () '#t))
                (_%__kont195223195224%_
                 (lambda (_%L193742%_ _%L193743%_)
                   (let ((_%rator-type193764193766%_
                          (let ((__tmp195823
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L193743%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp195823))))
                     (if _%rator-type193764193766%_
                         (let* ((_%rator-type193769%_
                                 _%rator-type193764193766%_)
                                (_%rator-signature193770193772%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type193769%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type193769%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature193770193772%_
                               (let* ((_%rator-signature193775%_
                                       _%rator-signature193770193772%_)
                                      (_%rator-effect193776193778%_
                                       (if _%rator-signature193775%_
                                           (##direct-structure-ref
                                            _%rator-signature193775%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect193776193778%_
                                     (let ((_%rator-effect193781%_
                                            _%rator-effect193776193778%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect193781%_)
                                               (equal? '(alloc)
                                                       _%rator-effect193781%_))
                                           (let ((__tmp195824
                                                  (let ((__tmp195825
                                                         (lambda (_%g193786193789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g193787193791%_)
                   (cons _%g193786193789%_ _%g193787193791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp195825
                                                     '()
                                                     _%L193742%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp195824))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont195227195228%_ (lambda () '#f)))
            (let ((_%__match195306195307%_
                   (lambda (_%e193649193686%_
                            _%hd193650193689%_
                            _%tl193651193691%_
                            _%e193652193694%_
                            _%hd193653193697%_
                            _%tl193654193699%_
                            _%e193655193702%_
                            _%hd193656193705%_
                            _%tl193657193707%_
                            _%e193658193710%_
                            _%hd193659193713%_
                            _%tl193660193715%_
                            _%__splice195225195226%_
                            _%target193661193718%_
                            _%tl193663193720%_)
                     (letrec ((_%loop193664193723%_
                               (lambda (_%hd193662193726%_
                                        _%rand193668193728%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd193662193726%_))
                                     (let ((_%e193665193731%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd193662193726%_))))
                                       (let ((_%lp-tl193667193736%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e193665193731%_)))
                                             (_%lp-hd193666193734%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e193665193731%_))))
                                         (_%loop193664193723%_
                                          _%lp-tl193667193736%_
                                          (cons _%lp-hd193666193734%_
                                                _%rand193668193728%_))))
                                     (let ((_%rand193669193739%_
                                            (reverse _%rand193668193728%_)))
                                       (_%__kont195223195224%_
                                        _%rand193669193739%_
                                        _%hd193659193713%_))))))
                       (_%loop193664193723%_ _%target193661193718%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195217195218%_))
                  (let ((_%e193635193822%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195217195218%_))))
                    (let ((_%tl193637193827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193635193822%_)))
                          (_%hd193636193825%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193635193822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193636193825%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193636193825%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193637193827%_))
                                  (let ((_%e193638193830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193637193827%_))))
                                    (let ((_%tl193640193835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193638193830%_)))
                                          (_%hd193639193833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193638193830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193640193835%_))
                                          (_%__kont195219195220%_)
                                          (_%__kont195227195228%_))))
                                  (_%__kont195227195228%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193636193825%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193637193827%_))
                                      (let ((_%e193644193807%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193637193827%_))))
                                        (let ((_%tl193646193812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193644193807%_)))
                                              (_%hd193645193810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193644193807%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193646193812%_))
                                              (_%__kont195221195222%_)
                                              (_%__kont195227195228%_))))
                                      (_%__kont195227195228%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd193636193825%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193637193827%_))
                                          (let ((_%e193652193694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193637193827%_))))
                                            (let ((_%tl193654193699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193652193694%_)))
                                                  (_%hd193653193697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193652193694%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd193653193697%_))
                                                  (let ((_%e193655193702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd193653193697%_))))
                                                    (let ((_%tl193657193707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193655193702%_)))
                                                          (_%hd193656193705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193655193702%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd193656193705%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd193656193705%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193657193707%_))
                          (let ((_%e193658193710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193657193707%_))))
                            (let ((_%tl193660193715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193658193710%_)))
                                  (_%hd193659193713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193658193710%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193660193715%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl193654193699%_))
                                      (let ((_%__splice195225195226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl193654193699%_
                                                '0))))
                                        (let ((_%tl193663193720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195225195226%_
                                                  '1)))
                                              (_%target193661193718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice195225195226%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193663193720%_))
                                              (_%__match195306195307%_
                                               _%e193635193822%_
                                               _%hd193636193825%_
                                               _%tl193637193827%_
                                               _%e193652193694%_
                                               _%hd193653193697%_
                                               _%tl193654193699%_
                                               _%e193655193702%_
                                               _%hd193656193705%_
                                               _%tl193657193707%_
                                               _%e193658193710%_
                                               _%hd193659193713%_
                                               _%tl193660193715%_
                                               _%__splice195225195226%_
                                               _%target193661193718%_
                                               _%tl193663193720%_)
                                              (_%__kont195227195228%_))))
                                      (_%__kont195227195228%_))
                                  (_%__kont195227195228%_))))
                          (_%__kont195227195228%_))
                      (_%__kont195227195228%_))
                  (_%__kont195227195228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195227195228%_))))
                                          (_%__kont195227195228%_))
                                      (_%__kont195227195228%_))))
                          (_%__kont195227195228%_))))
                  (_%__kont195227195228%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx193623%_ _%klass193624%_)
        (let ((_%expr-type193626%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx193623%_))))
          (if _%expr-type193626%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type193626%_ _%klass193624%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx193601%_ _%expr193602%_ _%type193603%_)
        (if (not _%type193603%_)
            '#f
            (let ((_%$e193606%_
                   (eq? (##structure-ref _%type193603%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e193606%_
                  _%$e193606%_
                  (let ((_%expr-type193610%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr193602%_))))
                    (if (not _%expr-type193610%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type193610%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e193614%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type193610%_
                                      'gxc#!abort::t))))
                              (if _%$e193614%_
                                  _%$e193614%_
                                  (let ((_%$e193617%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type193610%_
                                            _%type193603%_))))
                                    (if _%$e193617%_
                                        _%$e193617%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type193603%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type193603%_
                                                   _%expr-type193610%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx193601%_
                                                   _%expr193602%_
                                                   _%expr-type193610%_
                                                   _%type193603%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self191036193413%_ _%ctx193415%_ _%stx193416%_ _%args193417%_)
        (let* ((_%self193419%_ _%self191036193413%_)
               (_%self193421%_ _%self193419%_)
               (_%klass193431%_
                (let ((__tmp195826
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self193421%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx193416%_ __tmp195826)))
               (_%fields193433%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193431%_
                           '5
                           '#f
                           '#f))))
               (_%args193439%_
                (map (lambda (_%g193434193436%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx193415%_ _%g193434193436%_)))
                     _%args193417%_))
               (_%inline-make-object193441%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self193421%_
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
                           _%self193421%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields193433%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass193444%_ _%klass193431%_)
               (_%$e193458%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass193444%_ '6 '#f '#f))))
          (if _%$e193458%_
              ((lambda (_%ctor193461%_)
                 (let ((_%$obj193463%_
                        (let ((__tmp195827
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp195827)))
                       (_%ctor-impl193464%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass193444%_
                           _%ctor193461%_))))
                   (let ((__tmp195828
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193463%_ '())
                                                  (cons _%inline-make-object193441%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl193464%_
                                                            (let ((__tmp195829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl193464%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj193463%_ '()))
                                             _%args193439%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp195829
                       _%stx193416%_
                       _%ctx193415%_))
                    (let ((_%$ctor193466%_
                           (let ((__tmp195830
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195830))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor193466%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193421%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj193463%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor193461%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor193466%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor193466%_ '()))
                              (cons (cons '%#ref (cons _%$obj193463%_ '()))
                                    _%args193439%_)))
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
                             _%self193421%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor193461%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj193463%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp195828 _%stx193416%_))))
               _%$e193458%_)
              (let ((_%$e193468%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass193444%_
                        '10
                        '#f
                        '#f))))
                (if _%$e193468%_
                    ((lambda (_%metaclass193471%_)
                       (let* ((_%$obj193473%_
                               (let ((__tmp195831
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195831)))
                              (_%metakons193475%_
                               (let ((__tmp195832
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx193416%_
                                         _%metaclass193471%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp195832
                                  'instance-init!)))
                              (__tmp195833
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj193473%_
                                                             '())
                                                       (cons _%inline-make-object193441%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons193475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195834
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons193475%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self193421%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args193439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp195834
                            _%stx193416%_
                            _%ctx193415%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self193421%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj193473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args193439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj193473%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp195833 _%stx193416%_)))
                     _%$e193468%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass193444%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp195835
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args193439%_))))
                              (declare (not safe))
                              (##fx= __tmp195835 _%fields193433%_))
                            (let ((__tmp195836
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self193421%_
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
                                              _%self193421%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args193439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp195836
                               _%stx193416%_))
                            (let ((__tmp195838
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self193421%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp195837
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass193444%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx193416%_
                               __tmp195838
                               __tmp195837)))
                        (let ((_%$obj193480%_
                               (let ((__tmp195839
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195839))))
                          (let _%lp193482%_ ((_%rest193484%_ _%args193439%_)
                                             (_%initializers193485%_ '()))
                            (let* ((_%__stx195309195310%_ _%rest193484%_)
                                   (_%g193489193510%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx195309195310%_)))))
                              (let ((_%__kont195311195312%_
                                     (lambda (_%L193564%_
                                              _%L193565%_
                                              _%L193566%_)
                                       (let* ((_%slot193593%_
                                               (let ((__tmp195840
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L193566%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp195840)))
                                              (_%off193595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass193444%_
                                                  _%slot193593%_))))
                                         (if _%off193595%_
                                             (_%lp193482%_
                                              _%L193564%_
                                              (cons (cons _%off193595%_
                                                          _%L193565%_)
                                                    _%initializers193485%_))
                                             (let ((__tmp195841
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193421%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx193416%_
                                                __tmp195841
                                                _%slot193593%_))))))
                                    (_%__kont195313195314%_
                                     (lambda ()
                                       (let ((__tmp195842
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193441%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp195845
                                     (cons (cons '%#ref
                                                 (cons _%$obj193480%_ '()))
                                           '()))
                                    (__tmp195843
                                     (let ((__tmp195844
                                            (lambda (_%i193524%_ _%r193525%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self193421%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i193524%_) '()))
                              (cons (cons '%#ref (cons _%$obj193480%_ '()))
                                    (cons (cdr _%i193524%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r193525%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp195844
                                        '()
                                        _%initializers193485%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp195845 __tmp195843)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195842
                                          _%stx193416%_))))
                                    (_%__kont195315195316%_
                                     (lambda ()
                                       (let ((__tmp195846
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj193480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object193441%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args193439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj193480%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195846
                                          _%stx193416%_)))))
                                (let* ((_%g193487193527%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx195309195310%_))
                                              (_%__kont195313195314%_)
                                              (_%__kont195315195316%_))))
                                       (_%__match195346195347%_
                                        (lambda (_%e193494193532%_
                                                 _%hd193495193535%_
                                                 _%tl193496193537%_
                                                 _%e193497193540%_
                                                 _%hd193498193543%_
                                                 _%tl193499193545%_
                                                 _%e193500193548%_
                                                 _%hd193501193551%_
                                                 _%tl193502193553%_
                                                 _%e193503193556%_
                                                 _%hd193504193559%_
                                                 _%tl193505193561%_)
                                          (let ((_%L193564%_
                                                 _%tl193505193561%_)
                                                (_%L193565%_
                                                 _%hd193504193559%_)
                                                (_%L193566%_
                                                 _%hd193501193551%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L193566%_))
                                                (_%__kont195311195312%_
                                                 _%L193564%_
                                                 _%L193565%_
                                                 _%L193566%_)
                                                (_%__kont195315195316%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx195309195310%_))
                                      (let ((_%e193494193532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx195309195310%_))))
                                        (let ((_%tl193496193537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193494193532%_)))
                                              (_%hd193495193535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193494193532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd193495193535%_))
                                              (let ((_%e193497193540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd193495193535%_))))
                                                (let ((_%tl193499193545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193497193540%_)))
                                                      (_%hd193498193543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193497193540%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd193498193543%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd193498193543%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193499193545%_))
                      (let ((_%e193500193548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193499193545%_))))
                        (let ((_%tl193502193553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193500193548%_)))
                              (_%hd193501193551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193500193548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193502193553%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193496193537%_))
                                  (let ((_%e193503193556%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193496193537%_))))
                                    (let ((_%tl193505193561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193503193556%_)))
                                          (_%hd193504193559%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193503193556%_))))
                                      (_%__match195346195347%_
                                       _%e193494193532%_
                                       _%hd193495193535%_
                                       _%tl193496193537%_
                                       _%e193497193540%_
                                       _%hd193498193543%_
                                       _%tl193499193545%_
                                       _%e193500193548%_
                                       _%hd193501193551%_
                                       _%tl193502193553%_
                                       _%e193503193556%_
                                       _%hd193504193559%_
                                       _%tl193505193561%_)))
                                  (_%__kont195315195316%_))
                              (_%__kont195315195316%_))))
                      (_%__kont195315195316%_))
                  (_%__kont195315195316%_))
              (_%__kont195315195316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195315195316%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g193487193527%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self191037193194%_ _%ctx193196%_ _%stx193197%_ _%args193198%_)
        (let* ((_%self193200%_ _%self191037193194%_)
               (_%self193202%_ _%self193200%_)
               (_%arguments-ok?193212%_
                (let ((__method195790
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self193202%_ 'check-arguments))))
                  (if __method195790
                      (let ()
                        (declare (not safe))
                        (__method195790
                         _%self193202%_
                         _%ctx193196%_
                         _%stx193197%_
                         _%args193198%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self193202%_
                                 'check-arguments))
                        '#!void))))
               (_%g193214193224%_
                (lambda (_%g193215193221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193215193221%_))))
               (_%g193213193288%_
                (lambda (_%g193215193227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193215193227%_))
                      (let ((_%e193217193229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193215193227%_))))
                        (let ((_%hd193218193232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193217193229%_)))
                              (_%tl193219193234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193217193229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl193219193234%_))
                              ((lambda (_%L193237%_)
                                 (let* ((_%klass193250%_
                                         (let ((__tmp195847
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193202%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx193197%_
                                            __tmp195847)))
                                        (_%field193252%_
                                         (let ((__tmp195848
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self193202%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass193250%_
                                            __tmp195848)))
                                        (_%object193254%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx193196%_
                                            _%L193237%_)))
                                        (_%klass193257%_ _%klass193250%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass193257%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp195849
                                              (cons (if (or _%arguments-ok?193212%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self193202%_
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
                                 _%self193202%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field193252%_ '()))
                        (cons _%object193254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp195849
                                          _%stx193197%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193257%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp195850
                                                  (cons (if (or _%arguments-ok?193212%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193202%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193202%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193252%_ '()))
                            (cons _%object193254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195850
                                              _%stx193197%_))
                                           (let ((_%$e193276%_
                                                  (let ((__tmp195851
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193202%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass193257%_
                                                     __tmp195851))))
                                             (if _%$e193276%_
                                                 ((lambda (_%klass193279%_)
                                                    (let ((__tmp195852
                                                           (cons (if (or _%arguments-ok?193212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193202%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self193202%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field193252%_ '()))
                                     (cons _%object193254%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp195852 _%stx193197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193276%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self193202%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp195853
                                                            (let ((_%$obj193285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp195854
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp195854))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj193285%_ '())
                                              (cons _%object193254%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass193257%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj193285%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193202%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193252%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193285%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?193212%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193285%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self193202%_
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
                                                             _%self193202%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj193285%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self193202%_
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
               (gxc#xform-wrap-source __tmp195853 _%stx193197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp195855
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object193254%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self193202%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp195855 _%stx193197%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd193218193232%_)
                              (_%g193214193224%_ _%g193215193227%_))))
                      (_%g193214193224%_ _%g193215193227%_)))))
          (_%g193213193288%_ _%args193198%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass195077 __method-table195078)
        (let ((__check-arguments195079
               (let ((__tmp195856
                      (lambda ()
                        (let ((__method195080
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195078
                                  'check-arguments
                                  '#f))))
                          (if __method195080
                              __method195080
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195856)))
              (__slot195081
               (let ((__slot195082
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass195077 'slot))))
                 (if __slot195082
                     __slot195082
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self191037193194%_
                   _%ctx193196%_
                   _%stx193197%_
                   _%args193198%_)
            (let* ((_%self193200%_ _%self191037193194%_)
                   (_%self193202%_ _%self193200%_)
                   (_%arguments-ok?193212%_
                    ((force __check-arguments195079)
                     _%self193202%_
                     _%ctx193196%_
                     _%stx193197%_
                     _%args193198%_))
                   (_%g193214193224%_
                    (lambda (_%g193215193221%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g193215193221%_))))
                   (_%g193213193288%_
                    (lambda (_%g193215193227%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g193215193227%_))
                          (let ((_%e193217193229%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g193215193227%_))))
                            (let ((_%hd193218193232%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193217193229%_)))
                                  (_%tl193219193234%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193217193229%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl193219193234%_))
                                  ((lambda (_%L193237%_)
                                     (let* ((_%klass193250%_
                                             (let ((__tmp195857
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193202%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx193197%_
                                                __tmp195857)))
                                            (_%field193252%_
                                             (let ((__tmp195858
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self193202%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass193250%_
                                                __tmp195858)))
                                            (_%object193254%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx193196%_
                                                _%L193237%_)))
                                            (_%klass193257%_ _%klass193250%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass193257%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp195859
                                                  (cons (if (or _%arguments-ok?193212%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self193202%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193202%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field193252%_ '()))
                            (cons _%object193254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195859
                                              _%stx193197%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193257%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195860
                                                      (cons (if (or _%arguments-ok?193212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self193202%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self193202%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193252%_ '()))
                                (cons _%object193254%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195860
                                                  _%stx193197%_))
                                               (let ((_%$e193276%_
                                                      (let ((__tmp195861
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self193202%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass193257%_ __tmp195861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e193276%_
                                                     ((lambda (_%klass193279%_)
                                                        (let ((__tmp195862
                                                               (cons (if (or _%arguments-ok?193212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self193202%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self193202%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field193252%_ '()))
                                         (cons _%object193254%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp195862 _%stx193197%_)))
              _%$e193276%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self193202%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp195863
                                                                (let ((_%$obj193285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp195864
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp195864))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj193285%_ '())
                                                  (cons _%object193254%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass193257%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj193285%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self193202%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193252%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj193285%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?193212%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193285%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193202%_
                               __slot195081
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
                        (##unchecked-structure-ref _%self193202%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj193285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193202%_
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
                   (gxc#xform-wrap-source __tmp195863 _%stx193197%_))
                 (let ((__tmp195865
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object193254%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self193202%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp195865 _%stx193197%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd193218193232%_)
                                  (_%g193214193224%_ _%g193215193227%_))))
                          (_%g193214193224%_ _%g193215193227%_)))))
              (_%g193213193288%_ _%args193198%_))))))
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
      (lambda (_%self191038192956%_ _%ctx192958%_ _%stx192959%_ _%args192960%_)
        (let* ((_%self192962%_ _%self191038192956%_)
               (_%self192964%_ _%self192962%_)
               (_%arguments-ok?192974%_
                (let ((__method195791
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self192964%_ 'check-arguments))))
                  (if __method195791
                      (let ()
                        (declare (not safe))
                        (__method195791
                         _%self192964%_
                         _%ctx192958%_
                         _%stx192959%_
                         _%args192960%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self192964%_
                                 'check-arguments))
                        '#!void))))
               (_%g192976192990%_
                (lambda (_%g192977192987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192977192987%_))))
               (_%g192975193069%_
                (lambda (_%g192977192993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192977192993%_))
                      (let ((_%e192980192995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192977192993%_))))
                        (let ((_%hd192981192998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192980192995%_)))
                              (_%tl192982193000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192980192995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192982193000%_))
                              (let ((_%e192983193003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192982193000%_))))
                                (let ((_%hd192984193006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192983193003%_)))
                                      (_%tl192985193008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192983193003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl192985193008%_))
                                      ((lambda (_%L193011%_ _%L193012%_)
                                         (let* ((_%klass193028%_
                                                 (let ((__tmp195866
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192964%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx192959%_
                                                    __tmp195866)))
                                                (_%field193030%_
                                                 (let ((__tmp195867
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self192964%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass193028%_
                                                    __tmp195867)))
                                                (_%object193032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192958%_
                                                    _%L193012%_)))
                                                (_%value193034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx192958%_
                                                    _%L193011%_)))
                                                (_%klass193037%_
                                                 _%klass193028%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass193037%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp195868
                                                      (cons (if (or _%arguments-ok?192974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self192964%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192964%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field193030%_ '()))
                                (cons _%object193032%_
                                      (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp195868
                                                  _%stx192959%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193037%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195869
                                                          (cons (if (or _%arguments-ok?192974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192964%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192964%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193030%_ '()))
                                    (cons _%object193032%_
                                          (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195869
                                                      _%stx192959%_))
                                                   (let ((_%$e193057%_
                                                          (let ((__tmp195870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192964%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass193037%_
                     __tmp195870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e193057%_
                                                         ((lambda (_%klass193060%_)
                                                            (let ((__tmp195871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?192974%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192964%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self192964%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field193030%_ '()))
                                             (cons _%object193032%_
                                                   (cons _%value193034%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195871 _%stx192959%_)))
                  _%$e193057%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self192964%_ '4 '#f '#f))
                     (let ((__tmp195872
                            (let ((_%$obj193066%_
                                   (let ((__tmp195873
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp195873))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj193066%_ '())
                                                      (cons _%object193032%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass193037%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj193066%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192964%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field193030%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj193066%_
                                                              '()))
                                                  (cons _%value193034%_
                                                        '())))))
                          (cons (if _%arguments-ok?192974%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self192964%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value193034%_ '())))))
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
                             _%self192964%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj193066%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self192964%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp195872 _%stx192959%_))
                     (let ((__tmp195874
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object193032%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192964%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value193034%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp195874
                        _%stx192959%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd192984193006%_
                                       _%hd192981192998%_)
                                      (_%g192976192990%_ _%g192977192993%_))))
                              (_%g192976192990%_ _%g192977192993%_))))
                      (_%g192976192990%_ _%g192977192993%_)))))
          (_%g192975193069%_ _%args192960%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass195083 __method-table195084)
        (let ((__check-arguments195085
               (let ((__tmp195875
                      (lambda ()
                        (let ((__method195086
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table195084
                                  'check-arguments
                                  '#f))))
                          (if __method195086
                              __method195086
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp195875))))
          (lambda (_%self191038192956%_
                   _%ctx192958%_
                   _%stx192959%_
                   _%args192960%_)
            (let* ((_%self192962%_ _%self191038192956%_)
                   (_%self192964%_ _%self192962%_)
                   (_%arguments-ok?192974%_
                    ((force __check-arguments195085)
                     _%self192964%_
                     _%ctx192958%_
                     _%stx192959%_
                     _%args192960%_))
                   (_%g192976192990%_
                    (lambda (_%g192977192987%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g192977192987%_))))
                   (_%g192975193069%_
                    (lambda (_%g192977192993%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g192977192993%_))
                          (let ((_%e192980192995%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g192977192993%_))))
                            (let ((_%hd192981192998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192980192995%_)))
                                  (_%tl192982193000%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192980192995%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192982193000%_))
                                  (let ((_%e192983193003%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192982193000%_))))
                                    (let ((_%hd192984193006%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192983193003%_)))
                                          (_%tl192985193008%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192983193003%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192985193008%_))
                                          ((lambda (_%L193011%_ _%L193012%_)
                                             (let* ((_%klass193028%_
                                                     (let ((__tmp195876
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192964%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx192959%_
                                                        __tmp195876)))
                                                    (_%field193030%_
                                                     (let ((__tmp195877
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self192964%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass193028%_
                                                        __tmp195877)))
                                                    (_%object193032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192958%_
                                                        _%L193012%_)))
                                                    (_%value193034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx192958%_
                                                        _%L193011%_)))
                                                    (_%klass193037%_
                                                     _%klass193028%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass193037%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp195878
                                                          (cons (if (or _%arguments-ok?192974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self192964%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192964%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field193030%_ '()))
                                    (cons _%object193032%_
                                          (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp195878
                                                      _%stx192959%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass193037%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp195879
                                                              (cons (if (or _%arguments-ok?192974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self192964%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self192964%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field193030%_ '()))
                                        (cons _%object193032%_
                                              (cons _%value193034%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp195879 _%stx192959%_))
               (let ((_%$e193057%_
                      (let ((__tmp195880
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self192964%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass193037%_
                         __tmp195880))))
                 (if _%$e193057%_
                     ((lambda (_%klass193060%_)
                        (let ((__tmp195881
                               (cons (if (or _%arguments-ok?192974%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self192964%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self192964%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field193030%_
                                                             '()))
                                                 (cons _%object193032%_
                                                       (cons _%value193034%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp195881 _%stx192959%_)))
                      _%$e193057%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self192964%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp195882
                                (let ((_%$obj193066%_
                                       (let ((__tmp195883
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp195883))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj193066%_
                                                                '())
                                                          (cons _%object193032%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass193037%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj193066%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self192964%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field193030%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj193066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value193034%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?192974%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj193066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self192964%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value193034%_ '())))))
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
                                 _%self192964%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj193066%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self192964%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp195882 _%stx192959%_))
                         (let ((__tmp195884
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object193032%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192964%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value193034%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp195884
                            _%stx192959%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd192984193006%_
                                           _%hd192981192998%_)
                                          (_%g192976192990%_
                                           _%g192977192993%_))))
                                  (_%g192976192990%_ _%g192977192993%_))))
                          (_%g192976192990%_ _%g192977192993%_)))))
              (_%g192975193069%_ _%args192960%_))))))
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
      (lambda (_%self191039192769%_ _%ctx192771%_ _%stx192772%_ _%args192773%_)
        (let* ((_%self192775%_ _%self191039192769%_)
               (_%self192777%_ _%self192775%_)
               (_%self192786192796%_ _%self192777%_)
               (_%E192788192800%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192786192796%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K192789192810%_
                (lambda (_%inline192803%_ _%dispatch192804%_ _%arity192805%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self192777%_
                         _%args192773%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx192772%_
                         _%arity192805%_)))
                  (if _%inline192803%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp195885 (_%inline192803%_ _%stx192772%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp195885
                           _%stx192772%_
                           _%ctx192771%_)))
                      (if (and _%dispatch192804%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch192804%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch192804%_))
                            (let ((__tmp195886
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch192804%_
                                                           '()))
                                               _%args192773%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp195886
                               _%stx192772%_
                               _%ctx192771%_)))
                          (gxc#!procedure::optimize-call
                           _%self192777%_
                           _%ctx192771%_
                           _%stx192772%_
                           _%args192773%_)))))
               (_%e192790192813%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192786192796%_ '1 '#f '#f)))
               (_%e192791192816%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192786192796%_ '2 '#f '#f)))
               (_%e192792192819%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192786192796%_ '3 '#f '#f)))
               (_%arity192822%_ _%e192792192819%_)
               (_%e192793192824%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192786192796%_ '4 '#f '#f)))
               (_%dispatch192827%_ _%e192793192824%_)
               (_%e192794192829%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192786192796%_ '5 '#f '#f)))
               (_%inline192832%_ _%e192794192829%_))
          (_%K192789192810%_
           _%inline192832%_
           _%dispatch192827%_
           _%arity192822%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self191040192619%_ _%ctx192621%_ _%stx192622%_ _%args192623%_)
        (let* ((_%self192625%_ _%self191040192619%_)
               (_%self192627%_ _%self192625%_)
               (_%$e192641%_
                (let ((__tmp195888
                       (lambda (_%g192636192638%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g192636192638%_
                            _%args192623%_))))
                      (__tmp195887
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192627%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp195888 __tmp195887))))
          (if _%$e192641%_
              ((lambda (_%clause192644%_)
                 (let ((__method195792
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause192644%_ 'optimize-call))))
                   (if __method195792
                       (let ()
                         (declare (not safe))
                         (__method195792
                          _%clause192644%_
                          _%ctx192621%_
                          _%stx192622%_
                          _%args192623%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause192644%_
                                  'optimize-call))
                         '#!void))))
               _%$e192641%_)
              (let ((__tmp195889
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self192627%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx192622%_
                 __tmp195889))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self191041192357%_ _%ctx192359%_ _%stx192360%_ _%args192361%_)
        (let* ((_%self192363%_ _%self191041192357%_)
               (_%self192365%_ _%self192363%_)
               (_%self192374192383%_ _%self192365%_)
               (_%E192376192387%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192374192383%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K192377192478%_
                (lambda (_%dispatch192390%_ _%table192391%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch192390%_))
                      (let* ((_%g192392192402%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch192390%_)))
                             (_%else192394192410%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch192390%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx192359%_
                                   _%stx192360%_))))
                             (_%K192396192459%_
                              (lambda (_%main192413%_ _%keys192414%_)
                                (let ((_g195890_
                                       (gxc#!kw-lambda-split-args
                                        _%stx192360%_
                                        _%args192361%_)))
                                  (begin
                                    (let ((_g195891_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g195890_)
                                                 (##vector-length _g195890_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g195891_ 2)))
                                          (error "Context expects 2 values"
                                                 _g195891_)))
                                    (let ((_%pargs192416%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195890_ 0)))
                                          (_%kwargs192417%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g195890_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main192413%_))
                                        (if _%table192391%_
                                            (let ((_%xargs192425%_
                                                   (map (lambda (_%key192419%_)
                                                          (let ((_%$e192421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key192419%_ _%kwargs192417%_))))
                    (if _%$e192421%_ _%$e192421%_ '(%#ref absent-value))))
                _%keys192414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw192427%_)
                                                 (if (memq (car _%kw192427%_)
                                                           _%keys192414%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx192360%_
                                                        _%keys192414%_
                                                        _%kw192427%_))))
                                               _%kwargs192417%_)
                                              (let ((__tmp195892
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main192413%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs192416%_
                                  _%xargs192425%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp195892
                                                 _%stx192360%_
                                                 _%ctx192359%_)))
                                            (let* ((_%kwt192429%_
                                                    (let ((__tmp195893
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp195893)))
                                                   (_%kwvars192433%_
                                                    (map (lambda (_%_192431%_)
                                                           (let ((__tmp195894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp195894)))
                 _%kwargs192417%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind192438%_
                                                    (map (lambda (_%kw192435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192436%_)
                   (cons (cons _%kwvar192436%_ '())
                         (cons (cdr _%kw192435%_) '())))
                 _%kwargs192417%_
                 _%kwvars192433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset192443%_
                                                    (map (lambda (_%kw192440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192441%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt192429%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw192440%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar192441%_
                                                             '()))
                                                 '()))))))
                 _%kwargs192417%_
                 _%kwvars192433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs192448%_
                                                    (map (lambda (_%kw192445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar192446%_)
                   (cons (car _%kw192445%_)
                         (cons '%#ref (cons _%kwvar192446%_ '()))))
                 _%kwargs192417%_
                 _%kwvars192433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs192456%_
                                                    (map (lambda (_%key192450%_)
                                                           (let ((_%$e192452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key192450%_ _%xkwargs192448%_))))
                     (if _%$e192452%_ _%$e192452%_ '(%#ref absent-value))))
                 _%keys192414%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp195895
                                                    (cons '%#let-values
                                                          (cons _%kwbind192438%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt192429%_ '())
                                                      (cons (let ((__tmp195896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs192417%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195896 _%stx192360%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp195897
                                                             (cons (let ((__tmp195898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main192413%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt192429%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs192416%_
                                                       _%xargs192456%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp195898 _%stx192360%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195897 _%kwset192443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp195895
                                               _%stx192360%_
                                               _%ctx192359%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g192392192402%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e192397192462%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192392192402%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e192398192465%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192392192402%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e192399192468%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192392192402%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys192471%_ _%e192399192468%_)
                                   (_%e192400192473%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g192392192402%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main192476%_ _%e192400192473%_))
                              (_%K192396192459%_
                               _%main192476%_
                               _%keys192471%_))
                            (_%else192394192410%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx192359%_ _%stx192360%_)))))
               (_%e192378192481%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192374192383%_ '1 '#f '#f)))
               (_%e192379192484%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192374192383%_ '2 '#f '#f)))
               (_%e192380192487%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192374192383%_ '3 '#f '#f)))
               (_%table192490%_ _%e192380192487%_)
               (_%e192381192492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self192374192383%_ '4 '#f '#f)))
               (_%dispatch192495%_ _%e192381192492%_))
          (_%K192377192478%_ _%dispatch192495%_ _%table192490%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx191970%_ _%args191971%_)
        (let _%lp191973%_ ((_%rest191975%_ _%args191971%_)
                           (_%pargs191976%_ '())
                           (_%kwargs191977%_ '()))
          (let* ((_%__stx195351195352%_ _%rest191975%_)
                 (_%g191983192035%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195351195352%_)))))
            (let ((_%__kont195353195354%_
                   (lambda (_%L192214%_ _%L192215%_)
                     (_%lp191973%_
                      _%L192214%_
                      (cons _%L192215%_ _%pargs191976%_)
                      _%kwargs191977%_)))
                  (_%__kont195355195356%_
                   (lambda (_%L192160%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L192160%_ _%pargs191976%_))
                             (reverse _%kwargs191977%_))))
                  (_%__kont195357195358%_
                   (lambda (_%L192107%_ _%L192108%_ _%L192109%_)
                     (let ((_%kw192126%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L192109%_))))
                       (if (assq _%kw192126%_ _%kwargs191977%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx191970%_
                              _%kw192126%_))
                           (_%lp191973%_
                            _%L192107%_
                            _%pargs191976%_
                            (cons (cons _%kw192126%_ _%L192108%_)
                                  _%kwargs191977%_))))))
                  (_%__kont195359195360%_
                   (lambda (_%L192055%_ _%L192056%_)
                     (_%lp191973%_
                      _%L192055%_
                      (cons _%L192056%_ _%pargs191976%_)
                      _%kwargs191977%_)))
                  (_%__kont195361195362%_
                   (lambda ()
                     (values (reverse _%pargs191976%_)
                             (reverse _%kwargs191977%_)))))
              (let ((_%__match195458195459%_
                     (lambda (_%e192014192075%_
                              _%hd192015192078%_
                              _%tl192016192080%_
                              _%e192017192083%_
                              _%hd192018192086%_
                              _%tl192019192088%_
                              _%e192020192091%_
                              _%hd192021192094%_
                              _%tl192022192096%_
                              _%e192023192099%_
                              _%hd192024192102%_
                              _%tl192025192104%_)
                       (let ((_%L192107%_ _%tl192025192104%_)
                             (_%L192108%_ _%hd192024192102%_)
                             (_%L192109%_ _%hd192021192094%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L192109%_))
                             (_%__kont195357195358%_
                              _%L192107%_
                              _%L192108%_
                              _%L192109%_)
                             (_%__kont195359195360%_
                              _%tl192016192080%_
                              _%hd192015192078%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195351195352%_))
                    (let ((_%e191987192179%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195351195352%_))))
                      (let ((_%tl191989192184%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191987192179%_)))
                            (_%hd191988192182%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191987192179%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191988192182%_))
                            (let ((_%e191990192187%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191988192182%_))))
                              (let ((_%tl191992192192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191990192187%_)))
                                    (_%hd191991192190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191990192187%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191991192190%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191991192190%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191992192192%_))
                                            (let ((_%e191993192195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191992192192%_))))
                                              (let ((_%tl191995192200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191993192195%_)))
                                                    (_%hd191994192198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191993192195%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd191994192198%_))
                                                    (let ((_%e191996192203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd191994192198%_))))
                                                      (if (equal? _%e191996192203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191995192200%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191989192184%_))
                          (let ((_%e191997192206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191989192184%_))))
                            (let ((_%tl191999192211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191997192206%_)))
                                  (_%hd191998192209%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191997192206%_))))
                              (_%__kont195353195354%_
                               _%tl191999192211%_
                               _%hd191998192209%_)))
                          (_%__kont195359195360%_
                           _%tl191989192184%_
                           _%hd191988192182%_))
                      (_%__kont195359195360%_
                       _%tl191989192184%_
                       _%hd191988192182%_))
                  (if (equal? _%e191996192203%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191995192200%_))
                          (_%__kont195355195356%_ _%tl191989192184%_)
                          (_%__kont195359195360%_
                           _%tl191989192184%_
                           _%hd191988192182%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191995192200%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191989192184%_))
                              (let ((_%e192023192099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191989192184%_))))
                                (let ((_%tl192025192104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192023192099%_)))
                                      (_%hd192024192102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192023192099%_))))
                                  (_%__match195458195459%_
                                   _%e191987192179%_
                                   _%hd191988192182%_
                                   _%tl191989192184%_
                                   _%e191990192187%_
                                   _%hd191991192190%_
                                   _%tl191992192192%_
                                   _%e191993192195%_
                                   _%hd191994192198%_
                                   _%tl191995192200%_
                                   _%e192023192099%_
                                   _%hd192024192102%_
                                   _%tl192025192104%_)))
                              (_%__kont195359195360%_
                               _%tl191989192184%_
                               _%hd191988192182%_))
                          (_%__kont195359195360%_
                           _%tl191989192184%_
                           _%hd191988192182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191995192200%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191989192184%_))
                                                            (let ((_%e192023192099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191989192184%_))))
                      (let ((_%tl192025192104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192023192099%_)))
                            (_%hd192024192102%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192023192099%_))))
                        (_%__match195458195459%_
                         _%e191987192179%_
                         _%hd191988192182%_
                         _%tl191989192184%_
                         _%e191990192187%_
                         _%hd191991192190%_
                         _%tl191992192192%_
                         _%e191993192195%_
                         _%hd191994192198%_
                         _%tl191995192200%_
                         _%e192023192099%_
                         _%hd192024192102%_
                         _%tl192025192104%_)))
                    (_%__kont195359195360%_
                     _%tl191989192184%_
                     _%hd191988192182%_))
                (_%__kont195359195360%_
                 _%tl191989192184%_
                 _%hd191988192182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont195359195360%_
                                             _%tl191989192184%_
                                             _%hd191988192182%_))
                                        (_%__kont195359195360%_
                                         _%tl191989192184%_
                                         _%hd191988192182%_))
                                    (_%__kont195359195360%_
                                     _%tl191989192184%_
                                     _%hd191988192182%_))))
                            (_%__kont195359195360%_
                             _%tl191989192184%_
                             _%hd191988192182%_))))
                    (_%__kont195361195362%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self191042191952%_ _%ctx191954%_ _%stx191955%_ _%args191956%_)
        (let* ((_%self191958%_ _%self191042191952%_)
               (_%self191960%_ _%self191958%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx191954%_ _%stx191955%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self191640%_ _%stx191641%_)
        (let* ((_%__stx195467195468%_ _%stx191641%_)
               (_%g191644191684%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195467195468%_)))))
          (let ((_%__kont195469195470%_
                 (lambda (_%L191790%_ _%L191791%_)
                   (let ((_%$e191818%_
                          (member 'return:
                                  (let ((__tmp195899
                                         (lambda (_%g191810191813%_
                                                  _%g191811191815%_)
                                           (cons _%g191810191813%_
                                                 _%g191811191815%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp195899 '() _%L191791%_))
                                  gx#stx-eq?)))
                     (if _%$e191818%_
                         ((lambda (_%tail191821%_)
                            (let ((_%type191823%_
                                   (let ((__tmp195900
                                          (let ((__tmp195901
                                                 (cadr _%tail191821%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp195901))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx191641%_
                                      __tmp195900))))
                              (gxc#check-return-type!
                               _%stx191641%_
                               _%L191790%_
                               _%type191823%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self191640%_
                                 _%L191790%_))))
                          _%$e191818%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self191640%_ _%L191790%_))))))
                (_%__kont195473195474%_
                 (lambda (_%L191713%_ _%L191714%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self191640%_ _%L191713%_)))))
            (let ((_%__match195504195505%_
                   (lambda (_%e191648191734%_
                            _%hd191649191737%_
                            _%tl191650191739%_
                            _%e191651191742%_
                            _%hd191652191745%_
                            _%tl191653191747%_
                            _%e191654191750%_
                            _%hd191655191753%_
                            _%tl191656191755%_
                            _%__splice195471195472%_
                            _%target191657191758%_
                            _%tl191659191760%_)
                     (letrec ((_%loop191660191763%_
                               (lambda (_%hd191658191766%_
                                        _%signature191664191768%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd191658191766%_))
                                     (let ((_%e191661191771%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd191658191766%_))))
                                       (let ((_%lp-tl191663191776%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e191661191771%_)))
                                             (_%lp-hd191662191774%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e191661191771%_))))
                                         (_%loop191660191763%_
                                          _%lp-tl191663191776%_
                                          (cons _%lp-hd191662191774%_
                                                _%signature191664191768%_))))
                                     (let ((_%signature191665191779%_
                                            (reverse _%signature191664191768%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl191653191747%_))
                                           (let ((_%e191666191782%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl191653191747%_))))
                                             (let ((_%tl191668191787%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e191666191782%_)))
                                                   (_%hd191667191785%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e191666191782%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl191668191787%_))
                                                   (_%__kont195469195470%_
                                                    _%hd191667191785%_
                                                    _%signature191665191779%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g191644191684%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g191644191684%_))))))))
                       (_%loop191660191763%_ _%target191657191758%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195467195468%_))
                  (let ((_%e191648191734%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195467195468%_))))
                    (let ((_%tl191650191739%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191648191734%_)))
                          (_%hd191649191737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191648191734%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191650191739%_))
                          (let ((_%e191651191742%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191650191739%_))))
                            (let ((_%tl191653191747%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191651191742%_)))
                                  (_%hd191652191745%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191651191742%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191652191745%_))
                                  (let ((_%e191654191750%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191652191745%_))))
                                    (let ((_%tl191656191755%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191654191750%_)))
                                          (_%hd191655191753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191654191750%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191655191753%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd191655191753%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl191656191755%_))
                                                  (let ((_%__splice195471195472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl191656191755%_
                                                            '0))))
                                                    (let ((_%tl191659191760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195471195472%_
                                                              '1)))
                                                          (_%target191657191758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice195471195472%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191659191760%_))
                                                          (_%__match195504195505%_
                                                           _%e191648191734%_
                                                           _%hd191649191737%_
                                                           _%tl191650191739%_
                                                           _%e191651191742%_
                                                           _%hd191652191745%_
                                                           _%tl191653191747%_
                                                           _%e191654191750%_
                                                           _%hd191655191753%_
                                                           _%tl191656191755%_
                                                           _%__splice195471195472%_
                                                           _%target191657191758%_
                                                           _%tl191659191760%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191653191747%_))
                      (let ((_%e191677191705%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191653191747%_))))
                        (let ((_%tl191679191710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191677191705%_)))
                              (_%hd191678191708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191677191705%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191679191710%_))
                              (_%__kont195473195474%_
                               _%hd191678191708%_
                               _%hd191652191745%_)
                              (let ()
                                (declare (not safe))
                                (_%g191644191684%_)))))
                      (let () (declare (not safe)) (_%g191644191684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191653191747%_))
                                                      (let ((_%e191677191705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191653191747%_))))
                (let ((_%tl191679191710%_
                       (let () (declare (not safe)) (##cdr _%e191677191705%_)))
                      (_%hd191678191708%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191677191705%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191679191710%_))
                      (_%__kont195473195474%_
                       _%hd191678191708%_
                       _%hd191652191745%_)
                      (let () (declare (not safe)) (_%g191644191684%_)))))
              (let () (declare (not safe)) (_%g191644191684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191653191747%_))
                                                  (let ((_%e191677191705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191653191747%_))))
                                                    (let ((_%tl191679191710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191677191705%_)))
                                                          (_%hd191678191708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191677191705%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191679191710%_))
                                                          (_%__kont195473195474%_
                                                           _%hd191678191708%_
                                                           _%hd191652191745%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191644191684%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191644191684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191653191747%_))
                                              (let ((_%e191677191705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191653191747%_))))
                                                (let ((_%tl191679191710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191677191705%_)))
                                                      (_%hd191678191708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191677191705%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191679191710%_))
                                                      (_%__kont195473195474%_
                                                       _%hd191678191708%_
                                                       _%hd191652191745%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191644191684%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191644191684%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191653191747%_))
                                      (let ((_%e191677191705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191653191747%_))))
                                        (let ((_%tl191679191710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191677191705%_)))
                                              (_%hd191678191708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191677191705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191679191710%_))
                                              (_%__kont195473195474%_
                                               _%hd191678191708%_
                                               _%hd191652191745%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g191644191684%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191644191684%_))))))
                          (let () (declare (not safe)) (_%g191644191684%_)))))
                  (let () (declare (not safe)) (_%g191644191684%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx191618%_ _%expr191619%_ _%type191620%_)
        (let ((_%$e191622%_ (not _%type191620%_)))
          (if _%$e191622%_
              _%$e191622%_
              (let ((_%$e191625%_
                     (eq? (##structure-ref _%type191620%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e191625%_
                    _%$e191625%_
                    (let ((_%expr-type191629%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr191619%_))))
                      (if (not _%expr-type191629%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx191618%_
                             _%type191620%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type191629%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx191618%_
                                 _%type191620%_
                                 _%expr-type191629%_))
                              (let ((_%$e191633%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type191629%_
                                        'gxc#!abort::t))))
                                (if _%$e191633%_
                                    _%$e191633%_
                                    (let ((_%$e191636%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type191629%_
                                              _%type191620%_))))
                                      (if _%$e191636%_
                                          _%$e191636%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx191618%_
                                             _%type191620%_
                                             _%expr-type191629%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self191044%_ _%stx191045%_)
        (let* ((_%__stx195549195550%_ _%stx191045%_)
               (_%g191050191160%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195549195550%_)))))
          (let ((_%__kont195551195552%_
                 (lambda (_%L191592%_ _%L191593%_ _%L191594%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L191594%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191044%_ _%L191593%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self191044%_ _%L191592%_)))))
                (_%__kont195553195554%_
                 (lambda (_%L191418%_ _%L191419%_ _%L191420%_ _%L191421%_)
                   (let ((_%$e191453%_
                          (let ((__tmp195902
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L191421%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp195902))))
                     (if _%$e191453%_
                         ((lambda (_%pred-type191456%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191456%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type191456%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test191461%_
                                        (let ((__tmp195903
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L191421%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L191420%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp195903
                                           _%stx191045%_
                                           _%self191044%_)))
                                       (_%K191465%_
                                        (let ((__tmp195904
                                               (lambda ()
                                                 (let ((__tmp195907
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self191044%_
                                                             _%L191419%_))))
                                                       (__tmp195905
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L191420%_))
                            (let ((__tmp195906
                                   (##structure-ref
                                    _%pred-type191456%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx191045%_
                               __tmp195906)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__call-with-parameters
                                                    __tmp195907
                                                    gxc#current-compile-path-type
                                                    __tmp195905)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195904)))
                                       (_%E191468%_
                                        (let ((__tmp195908
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self191044%_
                                                    _%L191418%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp195908)))
                                       (_%__stx195527195528%_ _%test191461%_)
                                       (_%g191472191486%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx195527195528%_)))))
                                  (let ((_%__kont195529195530%_
                                         (lambda (_%L191514%_ _%L191515%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L191514%_))
                                               (force _%K191465%_)
                                               (force _%E191468%_))))
                                        (_%__kont195531195532%_
                                         (lambda ()
                                           (let ((__tmp195909
                                                  (cons '%#if
                                                        (cons _%test191461%_
                                                              (cons (force _%K191465%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E191468%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp195909
                                              _%stx191045%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx195527195528%_))
                                        (let ((_%e191476191498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx195527195528%_))))
                                          (let ((_%tl191478191503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e191476191498%_)))
                                                (_%hd191477191501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e191476191498%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191478191503%_))
                                                (let ((_%e191479191506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191478191503%_))))
                                                  (let ((_%tl191481191511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191479191506%_)))
                                                        (_%hd191480191509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191479191506%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191481191511%_))
                                                        (_%__kont195529195530%_
                                                         _%hd191480191509%_
                                                         _%hd191477191501%_)
                                                        (_%__kont195531195532%_))))
                                                (_%__kont195531195532%_))))
                                        (_%__kont195531195532%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self191044%_
                                   _%stx191045%_))))
                          _%$e191453%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self191044%_
                            _%stx191045%_))))))
                (_%__kont195555195556%_
                 (lambda (_%L191294%_ _%L191295%_ _%L191296%_ _%L191297%_)
                   (gxc#optimize-if%
                    _%self191044%_
                    (let ((__tmp195910
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L191296%_
                                       (cons _%L191294%_
                                             (cons _%L191295%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp195910 _%stx191045%_)))))
                (_%__kont195557195558%_
                 (lambda (_%L191197%_ _%L191198%_ _%L191199%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self191044%_ _%stx191045%_)))))
            (let ((_%__match195756195757%_
                   (lambda (_%e191114191222%_
                            _%hd191115191225%_
                            _%tl191116191227%_
                            _%e191117191230%_
                            _%hd191118191233%_
                            _%tl191119191235%_
                            _%e191120191238%_
                            _%hd191121191241%_
                            _%tl191122191243%_
                            _%e191123191246%_
                            _%hd191124191249%_
                            _%tl191125191251%_
                            _%e191126191254%_
                            _%hd191127191257%_
                            _%tl191128191259%_
                            _%e191129191262%_
                            _%hd191130191265%_
                            _%tl191131191267%_
                            _%e191132191270%_
                            _%hd191133191273%_
                            _%tl191134191275%_
                            _%e191135191278%_
                            _%hd191136191281%_
                            _%tl191137191283%_
                            _%e191138191286%_
                            _%hd191139191289%_
                            _%tl191140191291%_)
                     (let ((_%L191294%_ _%hd191139191289%_)
                           (_%L191295%_ _%hd191136191281%_)
                           (_%L191296%_ _%hd191133191273%_)
                           (_%L191297%_ _%hd191130191265%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L191297%_ 'not))
                           (_%__kont195555195556%_
                            _%L191294%_
                            _%L191295%_
                            _%L191296%_
                            _%L191297%_)
                           (_%__kont195557195558%_
                            _%hd191139191289%_
                            _%hd191136191281%_
                            _%hd191118191233%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195549195550%_))
                  (let ((_%e191055191544%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195549195550%_))))
                    (let ((_%tl191057191549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191055191544%_)))
                          (_%hd191056191547%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191055191544%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191057191549%_))
                          (let ((_%e191058191552%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191057191549%_))))
                            (let ((_%tl191060191557%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191058191552%_)))
                                  (_%hd191059191555%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191058191552%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191059191555%_))
                                  (let ((_%e191061191560%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191059191555%_))))
                                    (let ((_%tl191063191565%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191061191560%_)))
                                          (_%hd191062191563%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191061191560%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191062191563%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd191062191563%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191063191565%_))
                                                  (let ((_%e191064191568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191063191565%_))))
                                                    (let ((_%tl191066191573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191064191568%_)))
                                                          (_%hd191065191571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191064191568%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191066191573%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191060191557%_))
                      (let ((_%e191067191576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191060191557%_))))
                        (let ((_%tl191069191581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191067191576%_)))
                              (_%hd191068191579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191067191576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191069191581%_))
                              (let ((_%e191070191584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191069191581%_))))
                                (let ((_%tl191072191589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191070191584%_)))
                                      (_%hd191071191587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191070191584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191072191589%_))
                                      (_%__kont195551195552%_
                                       _%hd191071191587%_
                                       _%hd191068191579%_
                                       _%hd191065191571%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191050191160%_)))))
                      (let () (declare (not safe)) (_%g191050191160%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191060191557%_))
                      (let ((_%e191150191181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191060191557%_))))
                        (let ((_%tl191152191186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191150191181%_)))
                              (_%hd191151191184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191150191181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191152191186%_))
                              (let ((_%e191153191189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl191152191186%_))))
                                (let ((_%tl191155191194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191153191189%_)))
                                      (_%hd191154191192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191153191189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191155191194%_))
                                      (_%__kont195557195558%_
                                       _%hd191154191192%_
                                       _%hd191151191184%_
                                       _%hd191059191555%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g191050191160%_)))))
                      (let () (declare (not safe)) (_%g191050191160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191060191557%_))
                                                      (let ((_%e191150191181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191060191557%_))))
                (let ((_%tl191152191186%_
                       (let () (declare (not safe)) (##cdr _%e191150191181%_)))
                      (_%hd191151191184%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191150191181%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191152191186%_))
                      (let ((_%e191153191189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191152191186%_))))
                        (let ((_%tl191155191194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191153191189%_)))
                              (_%hd191154191192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191153191189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191155191194%_))
                              (_%__kont195557195558%_
                               _%hd191154191192%_
                               _%hd191151191184%_
                               _%hd191059191555%_)
                              (let ()
                                (declare (not safe))
                                (_%g191050191160%_)))))
                      (let () (declare (not safe)) (_%g191050191160%_)))))
              (let () (declare (not safe)) (_%g191050191160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd191062191563%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191063191565%_))
                                                      (let ((_%e191086191354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191063191565%_))))
                (let ((_%tl191088191359%_
                       (let () (declare (not safe)) (##cdr _%e191086191354%_)))
                      (_%hd191087191357%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191086191354%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191087191357%_))
                      (let ((_%e191089191362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191087191357%_))))
                        (let ((_%tl191091191367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191089191362%_)))
                              (_%hd191090191365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191089191362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191090191365%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191090191365%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191091191367%_))
                                      (let ((_%e191092191370%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191091191367%_))))
                                        (let ((_%tl191094191375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191092191370%_)))
                                              (_%hd191093191373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191092191370%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191094191375%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191088191359%_))
                                                  (let ((_%e191095191378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191088191359%_))))
                                                    (let ((_%tl191097191383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191095191378%_)))
                                                          (_%hd191096191381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191095191378%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191096191381%_))
                                                          (let ((_%e191098191386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191096191381%_))))
                    (let ((_%tl191100191391%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191098191386%_)))
                          (_%hd191099191389%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191098191386%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191099191389%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd191099191389%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191100191391%_))
                                  (let ((_%e191101191394%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191100191391%_))))
                                    (let ((_%tl191103191399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191101191394%_)))
                                          (_%hd191102191397%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191101191394%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191103191399%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191097191383%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191060191557%_))
                                                  (let ((_%e191104191402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191060191557%_))))
                                                    (let ((_%tl191106191407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191104191402%_)))
                                                          (_%hd191105191405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191104191402%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191106191407%_))
                                                          (let ((_%e191107191410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191106191407%_))))
                    (let ((_%tl191109191415%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191107191410%_)))
                          (_%hd191108191413%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191107191410%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191109191415%_))
                          (_%__kont195553195554%_
                           _%hd191108191413%_
                           _%hd191105191405%_
                           _%hd191102191397%_
                           _%hd191093191373%_)
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191060191557%_))
                                                  (let ((_%e191150191181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191060191557%_))))
                                                    (let ((_%tl191152191186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191150191181%_)))
                                                          (_%hd191151191184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191150191181%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191152191186%_))
                                                          (let ((_%e191153191189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191152191186%_))))
                    (let ((_%tl191155191194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191153191189%_)))
                          (_%hd191154191192%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191153191189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191155191194%_))
                          (_%__kont195557195558%_
                           _%hd191154191192%_
                           _%hd191151191184%_
                           _%hd191059191555%_)
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191097191383%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191060191557%_))
                                                  (let ((_%e191135191278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191060191557%_))))
                                                    (let ((_%tl191137191283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191135191278%_)))
                                                          (_%hd191136191281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191135191278%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191137191283%_))
                                                          (let ((_%e191138191286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191137191283%_))))
                    (let ((_%tl191140191291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191138191286%_)))
                          (_%hd191139191289%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191138191286%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191140191291%_))
                          (_%__match195756195757%_
                           _%e191055191544%_
                           _%hd191056191547%_
                           _%tl191057191549%_
                           _%e191058191552%_
                           _%hd191059191555%_
                           _%tl191060191557%_
                           _%e191061191560%_
                           _%hd191062191563%_
                           _%tl191063191565%_
                           _%e191086191354%_
                           _%hd191087191357%_
                           _%tl191088191359%_
                           _%e191089191362%_
                           _%hd191090191365%_
                           _%tl191091191367%_
                           _%e191092191370%_
                           _%hd191093191373%_
                           _%tl191094191375%_
                           _%e191095191378%_
                           _%hd191096191381%_
                           _%tl191097191383%_
                           _%e191135191278%_
                           _%hd191136191281%_
                           _%tl191137191283%_
                           _%e191138191286%_
                           _%hd191139191289%_
                           _%tl191140191291%_)
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191060191557%_))
                                                  (let ((_%e191150191181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191060191557%_))))
                                                    (let ((_%tl191152191186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191150191181%_)))
                                                          (_%hd191151191184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191150191181%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191152191186%_))
                                                          (let ((_%e191153191189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191152191186%_))))
                    (let ((_%tl191155191194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191153191189%_)))
                          (_%hd191154191192%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191153191189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191155191194%_))
                          (_%__kont195557195558%_
                           _%hd191154191192%_
                           _%hd191151191184%_
                           _%hd191059191555%_)
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191097191383%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191060191557%_))
                                          (let ((_%e191135191278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191060191557%_))))
                                            (let ((_%tl191137191283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191135191278%_)))
                                                  (_%hd191136191281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191135191278%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191137191283%_))
                                                  (let ((_%e191138191286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191137191283%_))))
                                                    (let ((_%tl191140191291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191138191286%_)))
                                                          (_%hd191139191289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191138191286%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191140191291%_))
                                                          (_%__match195756195757%_
                                                           _%e191055191544%_
                                                           _%hd191056191547%_
                                                           _%tl191057191549%_
                                                           _%e191058191552%_
                                                           _%hd191059191555%_
                                                           _%tl191060191557%_
                                                           _%e191061191560%_
                                                           _%hd191062191563%_
                                                           _%tl191063191565%_
                                                           _%e191086191354%_
                                                           _%hd191087191357%_
                                                           _%tl191088191359%_
                                                           _%e191089191362%_
                                                           _%hd191090191365%_
                                                           _%tl191091191367%_
                                                           _%e191092191370%_
                                                           _%hd191093191373%_
                                                           _%tl191094191375%_
                                                           _%e191095191378%_
                                                           _%hd191096191381%_
                                                           _%tl191097191383%_
                                                           _%e191135191278%_
                                                           _%hd191136191281%_
                                                           _%tl191137191283%_
                                                           _%e191138191286%_
                                                           _%hd191139191289%_
                                                           _%tl191140191291%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191050191160%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191060191557%_))
                                          (let ((_%e191150191181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191060191557%_))))
                                            (let ((_%tl191152191186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191150191181%_)))
                                                  (_%hd191151191184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191150191181%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191152191186%_))
                                                  (let ((_%e191153191189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191152191186%_))))
                                                    (let ((_%tl191155191194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191153191189%_)))
                                                          (_%hd191154191192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191153191189%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191155191194%_))
                                                          (_%__kont195557195558%_
                                                           _%hd191154191192%_
                                                           _%hd191151191184%_
                                                           _%hd191059191555%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191050191160%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191097191383%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191060191557%_))
                                      (let ((_%e191135191278%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191060191557%_))))
                                        (let ((_%tl191137191283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191135191278%_)))
                                              (_%hd191136191281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191135191278%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191137191283%_))
                                              (let ((_%e191138191286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191137191283%_))))
                                                (let ((_%tl191140191291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191138191286%_)))
                                                      (_%hd191139191289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191138191286%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191140191291%_))
                                                      (_%__match195756195757%_
                                                       _%e191055191544%_
                                                       _%hd191056191547%_
                                                       _%tl191057191549%_
                                                       _%e191058191552%_
                                                       _%hd191059191555%_
                                                       _%tl191060191557%_
                                                       _%e191061191560%_
                                                       _%hd191062191563%_
                                                       _%tl191063191565%_
                                                       _%e191086191354%_
                                                       _%hd191087191357%_
                                                       _%tl191088191359%_
                                                       _%e191089191362%_
                                                       _%hd191090191365%_
                                                       _%tl191091191367%_
                                                       _%e191092191370%_
                                                       _%hd191093191373%_
                                                       _%tl191094191375%_
                                                       _%e191095191378%_
                                                       _%hd191096191381%_
                                                       _%tl191097191383%_
                                                       _%e191135191278%_
                                                       _%hd191136191281%_
                                                       _%tl191137191283%_
                                                       _%e191138191286%_
                                                       _%hd191139191289%_
                                                       _%tl191140191291%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191050191160%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191050191160%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191060191557%_))
                                      (let ((_%e191150191181%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191060191557%_))))
                                        (let ((_%tl191152191186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191150191181%_)))
                                              (_%hd191151191184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191150191181%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191152191186%_))
                                              (let ((_%e191153191189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191152191186%_))))
                                                (let ((_%tl191155191194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191153191189%_)))
                                                      (_%hd191154191192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191153191189%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191155191194%_))
                                                      (_%__kont195557195558%_
                                                       _%hd191154191192%_
                                                       _%hd191151191184%_
                                                       _%hd191059191555%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191050191160%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191050191160%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191097191383%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191060191557%_))
                                  (let ((_%e191135191278%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191060191557%_))))
                                    (let ((_%tl191137191283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191135191278%_)))
                                          (_%hd191136191281%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191135191278%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191137191283%_))
                                          (let ((_%e191138191286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191137191283%_))))
                                            (let ((_%tl191140191291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191138191286%_)))
                                                  (_%hd191139191289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191138191286%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191140191291%_))
                                                  (_%__match195756195757%_
                                                   _%e191055191544%_
                                                   _%hd191056191547%_
                                                   _%tl191057191549%_
                                                   _%e191058191552%_
                                                   _%hd191059191555%_
                                                   _%tl191060191557%_
                                                   _%e191061191560%_
                                                   _%hd191062191563%_
                                                   _%tl191063191565%_
                                                   _%e191086191354%_
                                                   _%hd191087191357%_
                                                   _%tl191088191359%_
                                                   _%e191089191362%_
                                                   _%hd191090191365%_
                                                   _%tl191091191367%_
                                                   _%e191092191370%_
                                                   _%hd191093191373%_
                                                   _%tl191094191375%_
                                                   _%e191095191378%_
                                                   _%hd191096191381%_
                                                   _%tl191097191383%_
                                                   _%e191135191278%_
                                                   _%hd191136191281%_
                                                   _%tl191137191283%_
                                                   _%e191138191286%_
                                                   _%hd191139191289%_
                                                   _%tl191140191291%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191060191557%_))
                                  (let ((_%e191150191181%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191060191557%_))))
                                    (let ((_%tl191152191186%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191150191181%_)))
                                          (_%hd191151191184%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191150191181%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191152191186%_))
                                          (let ((_%e191153191189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191152191186%_))))
                                            (let ((_%tl191155191194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191153191189%_)))
                                                  (_%hd191154191192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191153191189%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191155191194%_))
                                                  (_%__kont195557195558%_
                                                   _%hd191154191192%_
                                                   _%hd191151191184%_
                                                   _%hd191059191555%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191097191383%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191060191557%_))
                          (let ((_%e191135191278%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191060191557%_))))
                            (let ((_%tl191137191283%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191135191278%_)))
                                  (_%hd191136191281%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191135191278%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191137191283%_))
                                  (let ((_%e191138191286%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191137191283%_))))
                                    (let ((_%tl191140191291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191138191286%_)))
                                          (_%hd191139191289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191138191286%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191140191291%_))
                                          (_%__match195756195757%_
                                           _%e191055191544%_
                                           _%hd191056191547%_
                                           _%tl191057191549%_
                                           _%e191058191552%_
                                           _%hd191059191555%_
                                           _%tl191060191557%_
                                           _%e191061191560%_
                                           _%hd191062191563%_
                                           _%tl191063191565%_
                                           _%e191086191354%_
                                           _%hd191087191357%_
                                           _%tl191088191359%_
                                           _%e191089191362%_
                                           _%hd191090191365%_
                                           _%tl191091191367%_
                                           _%e191092191370%_
                                           _%hd191093191373%_
                                           _%tl191094191375%_
                                           _%e191095191378%_
                                           _%hd191096191381%_
                                           _%tl191097191383%_
                                           _%e191135191278%_
                                           _%hd191136191281%_
                                           _%tl191137191283%_
                                           _%e191138191286%_
                                           _%hd191139191289%_
                                           _%tl191140191291%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))))
                          (let () (declare (not safe)) (_%g191050191160%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191060191557%_))
                          (let ((_%e191150191181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191060191557%_))))
                            (let ((_%tl191152191186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191150191181%_)))
                                  (_%hd191151191184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191150191181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191152191186%_))
                                  (let ((_%e191153191189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191152191186%_))))
                                    (let ((_%tl191155191194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191153191189%_)))
                                          (_%hd191154191192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191153191189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191155191194%_))
                                          (_%__kont195557195558%_
                                           _%hd191154191192%_
                                           _%hd191151191184%_
                                           _%hd191059191555%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g191050191160%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191060191557%_))
                                                      (let ((_%e191150191181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191060191557%_))))
                (let ((_%tl191152191186%_
                       (let () (declare (not safe)) (##cdr _%e191150191181%_)))
                      (_%hd191151191184%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191150191181%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191152191186%_))
                      (let ((_%e191153191189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191152191186%_))))
                        (let ((_%tl191155191194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191153191189%_)))
                              (_%hd191154191192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191153191189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191155191194%_))
                              (_%__kont195557195558%_
                               _%hd191154191192%_
                               _%hd191151191184%_
                               _%hd191059191555%_)
                              (let ()
                                (declare (not safe))
                                (_%g191050191160%_)))))
                      (let () (declare (not safe)) (_%g191050191160%_)))))
              (let () (declare (not safe)) (_%g191050191160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191060191557%_))
                                                  (let ((_%e191150191181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191060191557%_))))
                                                    (let ((_%tl191152191186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191150191181%_)))
                                                          (_%hd191151191184%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191150191181%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191152191186%_))
                                                          (let ((_%e191153191189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191152191186%_))))
                    (let ((_%tl191155191194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191153191189%_)))
                          (_%hd191154191192%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191153191189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191155191194%_))
                          (_%__kont195557195558%_
                           _%hd191154191192%_
                           _%hd191151191184%_
                           _%hd191059191555%_)
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191060191557%_))
                                          (let ((_%e191150191181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191060191557%_))))
                                            (let ((_%tl191152191186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191150191181%_)))
                                                  (_%hd191151191184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191150191181%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191152191186%_))
                                                  (let ((_%e191153191189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191152191186%_))))
                                                    (let ((_%tl191155191194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191153191189%_)))
                                                          (_%hd191154191192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191153191189%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191155191194%_))
                                                          (_%__kont195557195558%_
                                                           _%hd191154191192%_
                                                           _%hd191151191184%_
                                                           _%hd191059191555%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g191050191160%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191060191557%_))
                                      (let ((_%e191150191181%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191060191557%_))))
                                        (let ((_%tl191152191186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191150191181%_)))
                                              (_%hd191151191184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191150191181%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191152191186%_))
                                              (let ((_%e191153191189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191152191186%_))))
                                                (let ((_%tl191155191194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191153191189%_)))
                                                      (_%hd191154191192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191153191189%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191155191194%_))
                                                      (_%__kont195557195558%_
                                                       _%hd191154191192%_
                                                       _%hd191151191184%_
                                                       _%hd191059191555%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191050191160%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191050191160%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191060191557%_))
                                  (let ((_%e191150191181%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191060191557%_))))
                                    (let ((_%tl191152191186%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191150191181%_)))
                                          (_%hd191151191184%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191150191181%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191152191186%_))
                                          (let ((_%e191153191189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191152191186%_))))
                                            (let ((_%tl191155191194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191153191189%_)))
                                                  (_%hd191154191192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191153191189%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191155191194%_))
                                                  (_%__kont195557195558%_
                                                   _%hd191154191192%_
                                                   _%hd191151191184%_
                                                   _%hd191059191555%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g191050191160%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191060191557%_))
                          (let ((_%e191150191181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191060191557%_))))
                            (let ((_%tl191152191186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191150191181%_)))
                                  (_%hd191151191184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191150191181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191152191186%_))
                                  (let ((_%e191153191189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191152191186%_))))
                                    (let ((_%tl191155191194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191153191189%_)))
                                          (_%hd191154191192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191153191189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191155191194%_))
                                          (_%__kont195557195558%_
                                           _%hd191154191192%_
                                           _%hd191151191184%_
                                           _%hd191059191555%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g191050191160%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))))
                          (let () (declare (not safe)) (_%g191050191160%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl191060191557%_))
                  (let ((_%e191150191181%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191060191557%_))))
                    (let ((_%tl191152191186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191150191181%_)))
                          (_%hd191151191184%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191150191181%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191152191186%_))
                          (let ((_%e191153191189%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191152191186%_))))
                            (let ((_%tl191155191194%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191153191189%_)))
                                  (_%hd191154191192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191153191189%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl191155191194%_))
                                  (_%__kont195557195558%_
                                   _%hd191154191192%_
                                   _%hd191151191184%_
                                   _%hd191059191555%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g191050191160%_)))))
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191060191557%_))
                                                      (let ((_%e191150191181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191060191557%_))))
                (let ((_%tl191152191186%_
                       (let () (declare (not safe)) (##cdr _%e191150191181%_)))
                      (_%hd191151191184%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191150191181%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl191152191186%_))
                      (let ((_%e191153191189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191152191186%_))))
                        (let ((_%tl191155191194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191153191189%_)))
                              (_%hd191154191192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191153191189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl191155191194%_))
                              (_%__kont195557195558%_
                               _%hd191154191192%_
                               _%hd191151191184%_
                               _%hd191059191555%_)
                              (let ()
                                (declare (not safe))
                                (_%g191050191160%_)))))
                      (let () (declare (not safe)) (_%g191050191160%_)))))
              (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191060191557%_))
                                              (let ((_%e191150191181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191060191557%_))))
                                                (let ((_%tl191152191186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191150191181%_)))
                                                      (_%hd191151191184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191150191181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191152191186%_))
                                                      (let ((_%e191153191189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191152191186%_))))
                (let ((_%tl191155191194%_
                       (let () (declare (not safe)) (##cdr _%e191153191189%_)))
                      (_%hd191154191192%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191153191189%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl191155191194%_))
                      (_%__kont195557195558%_
                       _%hd191154191192%_
                       _%hd191151191184%_
                       _%hd191059191555%_)
                      (let () (declare (not safe)) (_%g191050191160%_)))))
              (let () (declare (not safe)) (_%g191050191160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g191050191160%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191060191557%_))
                                      (let ((_%e191150191181%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191060191557%_))))
                                        (let ((_%tl191152191186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191150191181%_)))
                                              (_%hd191151191184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191150191181%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191152191186%_))
                                              (let ((_%e191153191189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191152191186%_))))
                                                (let ((_%tl191155191194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191153191189%_)))
                                                      (_%hd191154191192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191153191189%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191155191194%_))
                                                      (_%__kont195557195558%_
                                                       _%hd191154191192%_
                                                       _%hd191151191184%_
                                                       _%hd191059191555%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g191050191160%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g191050191160%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g191050191160%_))))))
                          (let () (declare (not safe)) (_%g191050191160%_)))))
                  (let () (declare (not safe)) (_%g191050191160%_))))))))))
