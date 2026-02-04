(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1770248984)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp220774 (list gxc#::basic-xform::t))
            (__tmp220773 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp220774
         '()
         __tmp220773
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args220051%_
        (apply make-instance gxc#::optimize-call::t _%$args220051%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp220775
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
        (__make-atomic-promise __tmp220775)))
    (define gxc#apply-optimize-call
      (lambda (_%stx220043%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self220046%_
                (let ((__obj220765
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj220765))
               (__tmp220776
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220046%_ _%stx220043%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220776
           gxc#current-compile-method
           _%self220046%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp220778 (list gxc#::void::t))
            (__tmp220777 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp220778
         '()
         __tmp220777
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args220040%_
        (apply make-instance gxc#::check-return-type::t _%$args220040%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp220779
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
        (__make-atomic-promise __tmp220779)))
    (define gxc#apply-check-return-type
      (lambda (_%stx220032%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self220035%_
                (let ((__obj220767
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj220767))
               (__tmp220780
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220035%_ _%stx220032%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220780
           gxc#current-compile-method
           _%self220035%_))))
    (define gxc#optimize-call%
      (lambda (_%self219639%_ _%stx219640%_)
        (let* ((_%__stx220120220121%_ _%stx219640%_)
               (_%g219643219689%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220120220121%_)))))
          (let ((_%__kont220122220123%_
                 (lambda (_%g219645219828%_ _%g219646219829%_)
                   (let* ((_%rator-id219849%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g219646219829%_)))
                          (_%rator-type219851%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id219849%_))))
                     (if (or (not _%rator-type219851%_)
                             (eq? (##structure-ref
                                   _%rator-type219851%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self219639%_ _%stx219640%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type219851%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp220781
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type219851%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id219849%_
                                  '" => "
                                  _%rator-type219851%_
                                  '" "
                                  __tmp220781))
                               (let* ((_%optimized219866%_
                                       (let ((__method220768
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type219851%_
                                                 'optimize-call))))
                                         (if __method220768
                                             (let ((__tmp220782
                                                    (let ((__tmp220783
                                                           (lambda (_%g219858219861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g219859219863%_)
                     (cons _%g219858219861%_ _%g219859219863%_))))
              (declare (not safe))
              (__foldr1 __tmp220783 '() _%g219645219828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method220768
                                                _%rator-type219851%_
                                                _%self219639%_
                                                _%stx219640%_
                                                __tmp220782))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type219851%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx220068220069%_
                                       _%optimized219866%_)
                                      (_%g219869219898%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx220068220069%_)))))
                                 (let ((_%__kont220070220071%_
                                        (lambda (_%g219871219964%_
                                                 _%g219872219965%_)
                                          (let* ((_%optimized-rator-id219992%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g219872219965%_)))
                                                 (_%rator-type219997%_
                                                  (let ((_%$e219994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id219992%_))))
                                                    (if _%$e219994%_
                                                        _%$e219994%_
                                                        _%rator-type219851%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type219997%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id219992%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type219997%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type219997%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized219866%_
                                                (let ((__tmp220784
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g219872219965%_ '()))
                           (let ((__tmp220785
                                  (lambda (_%g220005220008%_ _%g220006220010%_)
                                    (cons _%g220005220008%_
                                          _%g220006220010%_))))
                             (declare (not safe))
                             (__foldr1 __tmp220785 '() _%g219871219964%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp220784
                                                   _%stx219640%_))))))
                                       (_%__kont220074220075%_
                                        (lambda () _%optimized219866%_)))
                                   (let ((_%__match220117220118%_
                                          (lambda (_%e219873219910%_
                                                   _%hd219874219913%_
                                                   _%tl219875219915%_
                                                   _%e219876219918%_
                                                   _%hd219877219921%_
                                                   _%tl219878219923%_
                                                   _%e219879219926%_
                                                   _%hd219880219929%_
                                                   _%tl219881219931%_
                                                   _%e219882219934%_
                                                   _%hd219883219937%_
                                                   _%tl219884219939%_
                                                   _%__splice220072220073%_
                                                   _%target219885219942%_
                                                   _%tl219887219944%_)
                                            (letrec ((_%loop219888219947%_
                                                      (lambda (_%hd219886219950%_
                                                               _%arg219892219952%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd219886219950%_))
                                                            (let ((_%e219889219954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd219886219950%_))))
                      (let ((_%lp-tl219891219959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e219889219954%_)))
                            (_%lp-hd219890219957%_
                             (let ()
                               (declare (not safe))
                               (##car _%e219889219954%_))))
                        (_%loop219888219947%_
                         _%lp-tl219891219959%_
                         (cons _%lp-hd219890219957%_ _%arg219892219952%_))))
                    (let ((_%arg219893219962%_ (reverse _%arg219892219952%_)))
                      (_%__kont220070220071%_
                       _%arg219893219962%_
                       _%hd219883219937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop219888219947%_
                                               _%target219885219942%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx220068220069%_))
                                         (let ((_%e219873219910%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx220068220069%_))))
                                           (let ((_%tl219875219915%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219873219910%_)))
                                                 (_%hd219874219913%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219873219910%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd219874219913%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd219874219913%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl219875219915%_))
                                                         (let ((_%e219876219918%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl219875219915%_))))
                   (let ((_%tl219878219923%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e219876219918%_)))
                         (_%hd219877219921%_
                          (let ()
                            (declare (not safe))
                            (##car _%e219876219918%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd219877219921%_))
                         (let ((_%e219879219926%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd219877219921%_))))
                           (let ((_%tl219881219931%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e219879219926%_)))
                                 (_%hd219880219929%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e219879219926%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd219880219929%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd219880219929%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl219881219931%_))
                                         (let ((_%e219882219934%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl219881219931%_))))
                                           (let ((_%tl219884219939%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e219882219934%_)))
                                                 (_%hd219883219937%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e219882219934%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl219884219939%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl219878219923%_))
                                                     (let ((_%__splice220072220073%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl219878219923%_
                                                               '0))))
                                                       (let ((_%tl219887219944%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice220072220073%_ '1)))
                     (_%target219885219942%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice220072220073%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl219887219944%_))
                     (_%__match220117220118%_
                      _%e219873219910%_
                      _%hd219874219913%_
                      _%tl219875219915%_
                      _%e219876219918%_
                      _%hd219877219921%_
                      _%tl219878219923%_
                      _%e219879219926%_
                      _%hd219880219929%_
                      _%tl219881219931%_
                      _%e219882219934%_
                      _%hd219883219937%_
                      _%tl219884219939%_
                      _%__splice220072220073%_
                      _%target219885219942%_
                      _%tl219887219944%_)
                     (_%__kont220074220075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220074220075%_))
                                                 (_%__kont220074220075%_))))
                                         (_%__kont220074220075%_))
                                     (_%__kont220074220075%_))
                                 (_%__kont220074220075%_))))
                         (_%__kont220074220075%_))))
                 (_%__kont220074220075%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont220074220075%_))
                                                 (_%__kont220074220075%_))))
                                         (_%__kont220074220075%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type219851%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type219851%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp220786
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g219646219829%_
                                                                '()))
                                                    (map (lambda (_%g220016220018%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self219639%_
                                                              _%g220016220018%_)))
                                                         (let ((__tmp220787
                                                                (lambda (_%g220020220023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g220021220025%_)
                          (cons _%g220020220023%_ _%g220021220025%_))))
                   (declare (not safe))
                   (__foldr1 __tmp220787 '() _%g219645219828%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp220786
                                    _%stx219640%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx219640%_
                                    _%rator-type219851%_))))))))
                (_%__kont220126220127%_
                 (lambda (_%g219668219732%_ _%g219669219733%_)
                   (let ((_%rator-type219750%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g219669219733%_))))
                     (if (and _%rator-type219750%_
                              (eq? (##structure-ref
                                    _%rator-type219750%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type219750%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type219750%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type219750%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp220788
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self219639%_
                                               _%g219669219733%_))
                                            (map (lambda (_%g219752219754%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219639%_
                                                      _%g219752219754%_)))
                                                 (let ((__tmp220789
                                                        (lambda (_%g219756219759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g219757219761%_)
                  (cons _%g219756219759%_ _%g219757219761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp220789
                                                    '()
                                                    _%g219668219732%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220788 _%stx219640%_))
                         (if (or (not _%rator-type219750%_)
                                 (let ((__tmp220790
                                        (##structure-ref
                                         _%rator-type219750%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp220790 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self219639%_ _%stx219640%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx219640%_
                                _%rator-type219750%_))))))))
            (let* ((_%__match220187220188%_
                    (lambda (_%e219670219694%_
                             _%hd219671219697%_
                             _%tl219672219699%_
                             _%e219673219702%_
                             _%hd219674219705%_
                             _%tl219675219707%_
                             _%__splice220128220129%_
                             _%target219676219710%_
                             _%tl219678219712%_)
                      (letrec ((_%loop219679219715%_
                                (lambda (_%hd219677219718%_
                                         _%rand219683219720%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219677219718%_))
                                      (let ((_%e219680219722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219677219718%_))))
                                        (let ((_%lp-tl219682219727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219680219722%_)))
                                              (_%lp-hd219681219725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219680219722%_))))
                                          (_%loop219679219715%_
                                           _%lp-tl219682219727%_
                                           (cons _%lp-hd219681219725%_
                                                 _%rand219683219720%_))))
                                      (let ((_%rand219684219730%_
                                             (reverse _%rand219683219720%_)))
                                        (_%__kont220126220127%_
                                         _%rand219684219730%_
                                         _%hd219674219705%_))))))
                        (_%loop219679219715%_ _%target219676219710%_ '()))))
                   (_%__match220167220168%_
                    (lambda (_%e219647219774%_
                             _%hd219648219777%_
                             _%tl219649219779%_
                             _%e219650219782%_
                             _%hd219651219785%_
                             _%tl219652219787%_
                             _%e219653219790%_
                             _%hd219654219793%_
                             _%tl219655219795%_
                             _%e219656219798%_
                             _%hd219657219801%_
                             _%tl219658219803%_
                             _%__splice220124220125%_
                             _%target219659219806%_
                             _%tl219661219808%_)
                      (letrec ((_%loop219662219811%_
                                (lambda (_%hd219660219814%_
                                         _%rand219666219816%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219660219814%_))
                                      (let ((_%e219663219818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219660219814%_))))
                                        (let ((_%lp-tl219665219823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219663219818%_)))
                                              (_%lp-hd219664219821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219663219818%_))))
                                          (_%loop219662219811%_
                                           _%lp-tl219665219823%_
                                           (cons _%lp-hd219664219821%_
                                                 _%rand219666219816%_))))
                                      (let ((_%rand219667219826%_
                                             (reverse _%rand219666219816%_)))
                                        (_%__kont220122220123%_
                                         _%rand219667219826%_
                                         _%hd219657219801%_))))))
                        (_%loop219662219811%_ _%target219659219806%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220120220121%_))
                  (let ((_%e219647219774%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220120220121%_))))
                    (let ((_%tl219649219779%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219647219774%_)))
                          (_%hd219648219777%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219647219774%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219649219779%_))
                          (let ((_%e219650219782%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219649219779%_))))
                            (let ((_%tl219652219787%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219650219782%_)))
                                  (_%hd219651219785%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219650219782%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219651219785%_))
                                  (let ((_%e219653219790%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219651219785%_))))
                                    (let ((_%tl219655219795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219653219790%_)))
                                          (_%hd219654219793%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219653219790%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219654219793%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219654219793%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219655219795%_))
                                                  (let ((_%e219656219798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219655219795%_))))
                                                    (let ((_%tl219658219803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219656219798%_)))
                                                          (_%hd219657219801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219656219798%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219658219803%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl219652219787%_))
                      (let ((_%__splice220124220125%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219652219787%_
                                '0))))
                        (let ((_%tl219661219808%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220124220125%_ '1)))
                              (_%target219659219806%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220124220125%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219661219808%_))
                              (_%__match220167220168%_
                               _%e219647219774%_
                               _%hd219648219777%_
                               _%tl219649219779%_
                               _%e219650219782%_
                               _%hd219651219785%_
                               _%tl219652219787%_
                               _%e219653219790%_
                               _%hd219654219793%_
                               _%tl219655219795%_
                               _%e219656219798%_
                               _%hd219657219801%_
                               _%tl219658219803%_
                               _%__splice220124220125%_
                               _%target219659219806%_
                               _%tl219661219808%_)
                              (let ()
                                (declare (not safe))
                                (_%g219643219689%_)))))
                      (let () (declare (not safe)) (_%g219643219689%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl219652219787%_))
                      (let ((_%__splice220128220129%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl219652219787%_
                                '0))))
                        (let ((_%tl219678219712%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220128220129%_ '1)))
                              (_%target219676219710%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice220128220129%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219678219712%_))
                              (_%__match220187220188%_
                               _%e219647219774%_
                               _%hd219648219777%_
                               _%tl219649219779%_
                               _%e219650219782%_
                               _%hd219651219785%_
                               _%tl219652219787%_
                               _%__splice220128220129%_
                               _%target219676219710%_
                               _%tl219678219712%_)
                              (let ()
                                (declare (not safe))
                                (_%g219643219689%_)))))
                      (let () (declare (not safe)) (_%g219643219689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219652219787%_))
                                                      (let ((_%__splice220128220129%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219652219787%_
                        '0))))
                (let ((_%tl219678219712%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220128220129%_ '1)))
                      (_%target219676219710%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice220128220129%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219678219712%_))
                      (_%__match220187220188%_
                       _%e219647219774%_
                       _%hd219648219777%_
                       _%tl219649219779%_
                       _%e219650219782%_
                       _%hd219651219785%_
                       _%tl219652219787%_
                       _%__splice220128220129%_
                       _%target219676219710%_
                       _%tl219678219712%_)
                      (let () (declare (not safe)) (_%g219643219689%_)))))
              (let () (declare (not safe)) (_%g219643219689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl219652219787%_))
                                                  (let ((_%__splice220128220129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl219652219787%_
                                                            '0))))
                                                    (let ((_%tl219678219712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220128220129%_
                                                              '1)))
                                                          (_%target219676219710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220128220129%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219678219712%_))
                                                          (_%__match220187220188%_
                                                           _%e219647219774%_
                                                           _%hd219648219777%_
                                                           _%tl219649219779%_
                                                           _%e219650219782%_
                                                           _%hd219651219785%_
                                                           _%tl219652219787%_
                                                           _%__splice220128220129%_
                                                           _%target219676219710%_
                                                           _%tl219678219712%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g219643219689%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g219643219689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl219652219787%_))
                                              (let ((_%__splice220128220129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl219652219787%_
                                                        '0))))
                                                (let ((_%tl219678219712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220128220129%_
                                                          '1)))
                                                      (_%target219676219710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice220128220129%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219678219712%_))
                                                      (_%__match220187220188%_
                                                       _%e219647219774%_
                                                       _%hd219648219777%_
                                                       _%tl219649219779%_
                                                       _%e219650219782%_
                                                       _%hd219651219785%_
                                                       _%tl219652219787%_
                                                       _%__splice220128220129%_
                                                       _%target219676219710%_
                                                       _%tl219678219712%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g219643219689%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g219643219689%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219652219787%_))
                                      (let ((_%__splice220128220129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219652219787%_
                                                '0))))
                                        (let ((_%tl219678219712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220128220129%_
                                                  '1)))
                                              (_%target219676219710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220128220129%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219678219712%_))
                                              (_%__match220187220188%_
                                               _%e219647219774%_
                                               _%hd219648219777%_
                                               _%tl219649219779%_
                                               _%e219650219782%_
                                               _%hd219651219785%_
                                               _%tl219652219787%_
                                               _%__splice220128220129%_
                                               _%target219676219710%_
                                               _%tl219678219712%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g219643219689%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g219643219689%_))))))
                          (let () (declare (not safe)) (_%g219643219689%_)))))
                  (let () (declare (not safe)) (_%g219643219689%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self219601%_ _%ctx219602%_ _%stx219603%_ _%args219604%_)
        (let ((_%self219607%_ _%self219601%_))
          (if (let ((__method220769
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self219607%_ 'check-arguments))))
                (if __method220769
                    (let ()
                      (declare (not safe))
                      (__method220769
                       _%self219607%_
                       _%ctx219602%_
                       _%stx219603%_
                       _%args219604%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self219607%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature219617%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219607%_ '2 '#f '#f)))
                     (_%signature219619%_ _%signature219617%_)
                     (_%$e219629%_
                      (if _%signature219619%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature219619%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e219629%_
                    ((lambda (_%unchecked219632%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked219632%_))
                           (let ((__tmp220791
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked219632%_
                                                          '()))
                                              (map (lambda (_%g219633219635%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx219602%_
                                                        _%g219633219635%_)))
                                                   _%args219604%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp220791
                              _%stx219603%_
                              _%ctx219602%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx219602%_ _%stx219603%_))))
                     _%$e219629%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx219602%_ _%stx219603%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx219602%_ _%stx219603%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass220053 __method-table220054)
        (let ((__check-arguments220055
               (let ((__tmp220792
                      (lambda ()
                        (let ((__method220056
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220054
                                  'check-arguments
                                  '#f))))
                          (if __method220056
                              __method220056
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220792))))
          (lambda (_%self219601%_ _%ctx219602%_ _%stx219603%_ _%args219604%_)
            (let ((_%self219607%_ _%self219601%_))
              (if ((force __check-arguments220055)
                   _%self219607%_
                   _%ctx219602%_
                   _%stx219603%_
                   _%args219604%_)
                  (let* ((_%signature219617%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self219607%_
                             '2
                             '#f
                             '#f)))
                         (_%signature219619%_ _%signature219617%_)
                         (_%$e219629%_
                          (if _%signature219619%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature219619%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e219629%_
                        ((lambda (_%unchecked219632%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked219632%_))
                               (let ((__tmp220793
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked219632%_
                                                              '()))
                                                  (map (lambda (_%g219633219635%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx219602%_
                                                            _%g219633219635%_)))
                                                       _%args219604%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp220793
                                  _%stx219603%_
                                  _%ctx219602%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx219602%_
                                  _%stx219603%_))))
                         _%$e219629%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx219602%_ _%stx219603%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx219602%_ _%stx219603%_))))))))
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
      (lambda (_%self219354%_ _%ctx219355%_ _%stx219356%_ _%args219357%_)
        (let* ((_%self219360%_ _%self219354%_)
               (_%signature219369219371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self219360%_ '2 '#f '#f))))
          (if _%signature219369219371%_
              (let* ((_%signature219373%_ _%signature219369219371%_)
                     (_%argument-types219374219376%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature219373%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types219374219376%_
                    (let* ((_%argument-types219378%_
                            _%argument-types219374219376%_)
                           (_%argument-types219383%_
                            (let ((__tmp220794
                                   (lambda (_%t219381%_)
                                     (if _%t219381%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219356%_
                                            _%t219381%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp220794
                               _%argument-types219378%_))))
                      (let _%loop219385%_ ((_%rest-args219387%_ _%args219357%_)
                                           (_%rest-types219388%_
                                            _%argument-types219383%_)
                                           (_%result219389%_ '#t))
                        (let* ((_%rest-args219390219398%_ _%rest-args219387%_)
                               (_%else219392219406%_
                                (lambda () _%result219389%_))
                               (_%K219394219467%_
                                (lambda (_%rest-args219409%_ _%arg219410%_)
                                  (let* ((_%rest-types219411219422%_
                                          _%rest-types219388%_)
                                         (_%E219415219426%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types219411219422%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K219418219455%_
                                           (lambda (_%rest-types219452%_
                                                    _%type219453%_)
                                             (_%loop219385%_
                                              _%rest-args219409%_
                                              _%rest-types219452%_
                                              (if (gxc#check-expression-type!
                                                   _%stx219356%_
                                                   _%arg219410%_
                                                   _%type219453%_)
                                                  _%result219389%_
                                                  '#f))))
                                          (_%K219417219446%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx219356%_
                                                _%argument-types219383%_))))
                                          (_%K219416219436%_
                                           (lambda (_%tail-type219430%_)
                                             (if (let ((__tmp220795
                                                        (lambda (_%g219431219433%_)
                                                          (gxc#check-expression-type!
                                                           _%stx219356%_
                                                           _%g219431219433%_
                                                           _%tail-type219430%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp220795
                                                    _%rest-args219409%_))
                                                 _%result219389%_
                                                 '#f))))
                                      (let ((_%try-match219413219449%_
                                             (lambda ()
                                               (if (null? _%rest-types219411219422%_)
                                                   (_%K219417219446%_)
                                                   (let ((_%tail-type219439%_
                                                          _%rest-types219411219422%_))
                                                     (_%K219416219436%_
                                                      _%tail-type219439%_))))))
                                        (if (pair? _%rest-types219411219422%_)
                                            (let ((_%tl219420219460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types219411219422%_)))
                                                  (_%hd219419219458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types219411219422%_))))
                                              (let ((_%type219463%_
                                                     _%hd219419219458%_)
                                                    (_%rest-types219465%_
                                                     _%tl219420219460%_))
                                                (_%K219418219455%_
                                                 _%rest-types219465%_
                                                 _%type219463%_)))
                                            (_%try-match219413219449%_))))))))
                          (if (pair? _%rest-args219390219398%_)
                              (let ((_%hd219395219470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args219390219398%_)))
                                    (_%tl219396219472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args219390219398%_))))
                                (let* ((_%arg219475%_ _%hd219395219470%_)
                                       (_%rest-args219477%_
                                        _%tl219396219472%_))
                                  (_%K219394219467%_
                                   _%rest-args219477%_
                                   _%arg219475%_)))
                              (_%else219392219406%_)))))
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
      (lambda (_%self219165%_ _%ctx219166%_ _%stx219167%_ _%args219168%_)
        (let* ((_%self219171%_ _%self219165%_)
               (_%g219181219191%_
                (lambda (_%g219182219188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219182219188%_))))
               (_%g219180219229%_
                (lambda (_%g219182219194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219182219194%_))
                      (let ((_%e219184219196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219182219194%_))))
                        (let ((_%hd219185219199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219184219196%_)))
                              (_%tl219186219201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219184219196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl219186219201%_))
                              ((lambda (_%g219183219204%_)
                                 (let* ((_%klass219216%_
                                         (let ((__tmp220796
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self219171%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx219167%_
                                            __tmp220796)))
                                        (_%object219218%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx219166%_
                                            _%g219183219204%_)))
                                        (_%instance?219223%_
                                         (let ((_%$e219220%_
                                                (gxc#expression-type?
                                                 _%object219218%_
                                                 _%klass219216%_)))
                                           (if _%$e219220%_
                                               _%$e219220%_
                                               (gxc#expression-type?
                                                _%g219183219204%_
                                                _%klass219216%_)))))
                                   (if _%instance?219223%_
                                       (let ((__tmp220797
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219218%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g219183219204%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219218%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220797
                                          _%stx219167%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx219166%_
                                          _%stx219167%_)))))
                               _%hd219185219199%_)
                              (_%g219181219191%_ _%g219182219194%_))))
                      (_%g219181219191%_ _%g219182219194%_)))))
          (_%g219180219229%_ _%args219168%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self218961%_ _%ctx218962%_ _%stx218963%_ _%args218964%_)
        (let* ((_%self218967%_ _%self218961%_)
               (_%g218977218987%_
                (lambda (_%g218978218984%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218978218984%_))))
               (_%g218976219040%_
                (lambda (_%g218978218990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218978218990%_))
                      (let ((_%e218980218992%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218978218990%_))))
                        (let ((_%hd218981218995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218980218992%_)))
                              (_%tl218982218997%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218980218992%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218982218997%_))
                              ((lambda (_%g218979219000%_)
                                 (let* ((_%klass219012%_
                                         (let ((__tmp220798
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218967%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218963%_
                                            __tmp220798)))
                                        (_%object219014%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218962%_
                                            _%g218979219000%_)))
                                        (_%instance?219019%_
                                         (let ((_%$e219016%_
                                                (gxc#expression-type?
                                                 _%object219014%_
                                                 _%klass219012%_)))
                                           (if _%$e219016%_
                                               _%$e219016%_
                                               (gxc#expression-type?
                                                _%g218979219000%_
                                                _%klass219012%_))))
                                        (_%klass219022%_ _%klass219012%_))
                                   (if _%instance?219019%_
                                       (let ((__tmp220799
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object219014%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g218979219000%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object219014%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220799
                                          _%stx218963%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass219022%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220800
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass219022%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object219014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220800
                                              _%stx218963%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass219022%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220801
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass219022%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object219014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220801
                                                  _%stx218963%_))
                                               (let ((__tmp220802
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self218967%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object219014%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220802
                                                  _%stx218963%_)))))))
                               _%hd218981218995%_)
                              (_%g218977218987%_ _%g218978218990%_))))
                      (_%g218977218987%_ _%g218978218990%_)))))
          (_%g218976219040%_ _%args218964%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx218629%_)
        (let* ((_%__stx220197220198%_ _%stx218629%_)
               (_%g218634218675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220197220198%_)))))
          (let ((_%__kont220199220200%_ (lambda () '#t))
                (_%__kont220201220202%_ (lambda () '#t))
                (_%__kont220203220204%_
                 (lambda (_%g218648218741%_ _%g218649218742%_)
                   (let ((_%rator-type218763218765%_
                          (let ((__tmp220803
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g218649218742%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp220803))))
                     (if _%rator-type218763218765%_
                         (let* ((_%rator-type218767%_
                                 _%rator-type218763218765%_)
                                (_%rator-signature218768218770%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type218767%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type218767%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature218768218770%_
                               (let* ((_%rator-signature218772%_
                                       _%rator-signature218768218770%_)
                                      (_%rator-effect218773218775%_
                                       (if _%rator-signature218772%_
                                           (##direct-structure-ref
                                            _%rator-signature218772%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect218773218775%_
                                     (let ((_%rator-effect218777%_
                                            _%rator-effect218773218775%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect218777%_)
                                               (equal? '(alloc)
                                                       _%rator-effect218777%_))
                                           (let ((__tmp220804
                                                  (let ((__tmp220805
                                                         (lambda (_%g218782218785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g218783218787%_)
                   (cons _%g218782218785%_ _%g218783218787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp220805
                                                     '()
                                                     _%g218648218741%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp220804))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont220207220208%_ (lambda () '#f)))
            (let ((_%__match220286220287%_
                   (lambda (_%e218650218687%_
                            _%hd218651218690%_
                            _%tl218652218692%_
                            _%e218653218695%_
                            _%hd218654218698%_
                            _%tl218655218700%_
                            _%e218656218703%_
                            _%hd218657218706%_
                            _%tl218658218708%_
                            _%e218659218711%_
                            _%hd218660218714%_
                            _%tl218661218716%_
                            _%__splice220205220206%_
                            _%target218662218719%_
                            _%tl218664218721%_)
                     (letrec ((_%loop218665218724%_
                               (lambda (_%hd218663218727%_
                                        _%rand218669218729%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd218663218727%_))
                                     (let ((_%e218666218731%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd218663218727%_))))
                                       (let ((_%lp-tl218668218736%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e218666218731%_)))
                                             (_%lp-hd218667218734%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e218666218731%_))))
                                         (_%loop218665218724%_
                                          _%lp-tl218668218736%_
                                          (cons _%lp-hd218667218734%_
                                                _%rand218669218729%_))))
                                     (let ((_%rand218670218739%_
                                            (reverse _%rand218669218729%_)))
                                       (_%__kont220203220204%_
                                        _%rand218670218739%_
                                        _%hd218660218714%_))))))
                       (_%loop218665218724%_ _%target218662218719%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220197220198%_))
                  (let ((_%e218636218818%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220197220198%_))))
                    (let ((_%tl218638218823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e218636218818%_)))
                          (_%hd218637218821%_
                           (let ()
                             (declare (not safe))
                             (##car _%e218636218818%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd218637218821%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd218637218821%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218638218823%_))
                                  (let ((_%e218639218826%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218638218823%_))))
                                    (let ((_%tl218641218831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218639218826%_)))
                                          (_%hd218640218829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218639218826%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl218641218831%_))
                                          (_%__kont220199220200%_)
                                          (_%__kont220207220208%_))))
                                  (_%__kont220207220208%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd218637218821%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl218638218823%_))
                                      (let ((_%e218645218803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl218638218823%_))))
                                        (let ((_%tl218647218808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218645218803%_)))
                                              (_%hd218646218806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218645218803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218647218808%_))
                                              (_%__kont220201220202%_)
                                              (_%__kont220207220208%_))))
                                      (_%__kont220207220208%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd218637218821%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl218638218823%_))
                                          (let ((_%e218653218695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl218638218823%_))))
                                            (let ((_%tl218655218700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e218653218695%_)))
                                                  (_%hd218654218698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e218653218695%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd218654218698%_))
                                                  (let ((_%e218656218703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd218654218698%_))))
                                                    (let ((_%tl218658218708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e218656218703%_)))
                                                          (_%hd218657218706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e218656218703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd218657218706%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd218657218706%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl218658218708%_))
                          (let ((_%e218659218711%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl218658218708%_))))
                            (let ((_%tl218661218716%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218659218711%_)))
                                  (_%hd218660218714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218659218711%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218661218716%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl218655218700%_))
                                      (let ((_%__splice220205220206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl218655218700%_
                                                '0))))
                                        (let ((_%tl218664218721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220205220206%_
                                                  '1)))
                                              (_%target218662218719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice220205220206%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl218664218721%_))
                                              (_%__match220286220287%_
                                               _%e218636218818%_
                                               _%hd218637218821%_
                                               _%tl218638218823%_
                                               _%e218653218695%_
                                               _%hd218654218698%_
                                               _%tl218655218700%_
                                               _%e218656218703%_
                                               _%hd218657218706%_
                                               _%tl218658218708%_
                                               _%e218659218711%_
                                               _%hd218660218714%_
                                               _%tl218661218716%_
                                               _%__splice220205220206%_
                                               _%target218662218719%_
                                               _%tl218664218721%_)
                                              (_%__kont220207220208%_))))
                                      (_%__kont220207220208%_))
                                  (_%__kont220207220208%_))))
                          (_%__kont220207220208%_))
                      (_%__kont220207220208%_))
                  (_%__kont220207220208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont220207220208%_))))
                                          (_%__kont220207220208%_))
                                      (_%__kont220207220208%_))))
                          (_%__kont220207220208%_))))
                  (_%__kont220207220208%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx218624%_ _%klass218625%_)
        (let ((_%expr-type218627%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx218624%_))))
          (if _%expr-type218627%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type218627%_ _%klass218625%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx218602%_ _%expr218603%_ _%type218604%_)
        (if (not _%type218604%_)
            '#f
            (let ((_%$e218607%_
                   (eq? (##structure-ref _%type218604%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e218607%_
                  _%$e218607%_
                  (let ((_%expr-type218611%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr218603%_))))
                    (if (not _%expr-type218611%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type218611%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e218615%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type218611%_
                                      'gxc#!abort::t))))
                              (if _%$e218615%_
                                  _%$e218615%_
                                  (let ((_%$e218618%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type218611%_
                                            _%type218604%_))))
                                    (if _%$e218618%_
                                        _%$e218618%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type218604%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type218604%_
                                                   _%expr-type218611%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx218602%_
                                                   _%expr218603%_
                                                   _%expr-type218611%_
                                                   _%type218604%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self218416%_ _%ctx218417%_ _%stx218418%_ _%args218419%_)
        (let* ((_%self218422%_ _%self218416%_)
               (_%klass218432%_
                (let ((__tmp220806
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self218422%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx218418%_ __tmp220806)))
               (_%fields218434%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218432%_
                           '5
                           '#f
                           '#f))))
               (_%args218440%_
                (map (lambda (_%g218435218437%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx218417%_ _%g218435218437%_)))
                     _%args218419%_))
               (_%inline-make-object218442%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self218422%_
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
                           _%self218422%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields218434%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass218445%_ _%klass218432%_)
               (_%$e218459%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass218445%_ '6 '#f '#f))))
          (if _%$e218459%_
              ((lambda (_%ctor218462%_)
                 (let ((_%$obj218464%_
                        (let ((__tmp220807
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp220807)))
                       (_%ctor-impl218465%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass218445%_
                           _%ctor218462%_))))
                   (let ((__tmp220808
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218464%_ '())
                                                  (cons _%inline-make-object218442%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl218465%_
                                                            (let ((__tmp220809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl218465%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj218464%_ '()))
                                             _%args218440%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp220809
                       _%stx218418%_
                       _%ctx218417%_))
                    (let ((_%$ctor218467%_
                           (let ((__tmp220810
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220810))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor218467%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218422%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj218464%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor218462%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor218467%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor218467%_ '()))
                              (cons (cons '%#ref (cons _%$obj218464%_ '()))
                                    _%args218440%_)))
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
                             _%self218422%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor218462%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj218464%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp220808 _%stx218418%_))))
               _%$e218459%_)
              (let ((_%$e218469%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass218445%_
                        '10
                        '#f
                        '#f))))
                (if _%$e218469%_
                    ((lambda (_%metaclass218472%_)
                       (let* ((_%$obj218474%_
                               (let ((__tmp220811
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220811)))
                              (_%metakons218476%_
                               (let ((__tmp220812
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx218418%_
                                         _%metaclass218472%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp220812
                                  'instance-init!)))
                              (__tmp220813
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj218474%_
                                                             '())
                                                       (cons _%inline-make-object218442%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons218476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp220814
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons218476%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self218422%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args218440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp220814
                            _%stx218418%_
                            _%ctx218417%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self218422%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj218474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args218440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj218474%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp220813 _%stx218418%_)))
                     _%$e218469%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass218445%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp220815
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args218440%_))))
                              (declare (not safe))
                              (##fx= __tmp220815 _%fields218434%_))
                            (let ((__tmp220816
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self218422%_
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
                                              _%self218422%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args218440%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp220816
                               _%stx218418%_))
                            (let ((__tmp220818
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self218422%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp220817
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218445%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx218418%_
                               __tmp220818
                               __tmp220817)))
                        (let ((_%$obj218481%_
                               (let ((__tmp220819
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220819))))
                          (let _%lp218483%_ ((_%rest218485%_ _%args218440%_)
                                             (_%initializers218486%_ '()))
                            (let* ((_%__stx220289220290%_ _%rest218485%_)
                                   (_%g218490218511%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx220289220290%_)))))
                              (let ((_%__kont220291220292%_
                                     (lambda (_%g218492218565%_
                                              _%g218493218566%_
                                              _%g218494218567%_)
                                       (let* ((_%slot218594%_
                                               (let ((__tmp220820
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g218494218567%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp220820)))
                                              (_%off218596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass218445%_
                                                  _%slot218594%_))))
                                         (if _%off218596%_
                                             (_%lp218483%_
                                              _%g218492218565%_
                                              (cons (cons _%off218596%_
                                                          _%g218493218566%_)
                                                    _%initializers218486%_))
                                             (let ((__tmp220821
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218422%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx218418%_
                                                __tmp220821
                                                _%slot218594%_))))))
                                    (_%__kont220293220294%_
                                     (lambda ()
                                       (let ((__tmp220822
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218442%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp220825
                                     (cons (cons '%#ref
                                                 (cons _%$obj218481%_ '()))
                                           '()))
                                    (__tmp220823
                                     (let ((__tmp220824
                                            (lambda (_%i218525%_ _%r218526%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self218422%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i218525%_) '()))
                              (cons (cons '%#ref (cons _%$obj218481%_ '()))
                                    (cons (cdr _%i218525%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r218526%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp220824
                                        '()
                                        _%initializers218486%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp220825 __tmp220823)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220822
                                          _%stx218418%_))))
                                    (_%__kont220295220296%_
                                     (lambda ()
                                       (let ((__tmp220826
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj218481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object218442%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args218440%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj218481%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220826
                                          _%stx218418%_)))))
                                (let* ((_%g218488218528%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx220289220290%_))
                                              (_%__kont220293220294%_)
                                              (_%__kont220295220296%_))))
                                       (_%__match220326220327%_
                                        (lambda (_%e218495218533%_
                                                 _%hd218496218536%_
                                                 _%tl218497218538%_
                                                 _%e218498218541%_
                                                 _%hd218499218544%_
                                                 _%tl218500218546%_
                                                 _%e218501218549%_
                                                 _%hd218502218552%_
                                                 _%tl218503218554%_
                                                 _%e218504218557%_
                                                 _%hd218505218560%_
                                                 _%tl218506218562%_)
                                          (let ((_%g218492218565%_
                                                 _%tl218506218562%_)
                                                (_%g218493218566%_
                                                 _%hd218505218560%_)
                                                (_%g218494218567%_
                                                 _%hd218502218552%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g218494218567%_))
                                                (_%__kont220291220292%_
                                                 _%g218492218565%_
                                                 _%g218493218566%_
                                                 _%g218494218567%_)
                                                (_%__kont220295220296%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx220289220290%_))
                                      (let ((_%e218495218533%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx220289220290%_))))
                                        (let ((_%tl218497218538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e218495218533%_)))
                                              (_%hd218496218536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e218495218533%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd218496218536%_))
                                              (let ((_%e218498218541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd218496218536%_))))
                                                (let ((_%tl218500218546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e218498218541%_)))
                                                      (_%hd218499218544%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e218498218541%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd218499218544%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd218499218544%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl218500218546%_))
                      (let ((_%e218501218549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl218500218546%_))))
                        (let ((_%tl218503218554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218501218549%_)))
                              (_%hd218502218552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218501218549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218503218554%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl218497218538%_))
                                  (let ((_%e218504218557%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl218497218538%_))))
                                    (let ((_%tl218506218562%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e218504218557%_)))
                                          (_%hd218505218560%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e218504218557%_))))
                                      (_%__match220326220327%_
                                       _%e218495218533%_
                                       _%hd218496218536%_
                                       _%tl218497218538%_
                                       _%e218498218541%_
                                       _%hd218499218544%_
                                       _%tl218500218546%_
                                       _%e218501218549%_
                                       _%hd218502218552%_
                                       _%tl218503218554%_
                                       _%e218504218557%_
                                       _%hd218505218560%_
                                       _%tl218506218562%_)))
                                  (_%__kont220295220296%_))
                              (_%__kont220295220296%_))))
                      (_%__kont220295220296%_))
                  (_%__kont220295220296%_))
              (_%__kont220295220296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont220295220296%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g218488218528%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self218199%_ _%ctx218200%_ _%stx218201%_ _%args218202%_)
        (let* ((_%self218205%_ _%self218199%_)
               (_%arguments-ok?218215%_
                (let ((__method220770
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self218205%_ 'check-arguments))))
                  (if __method220770
                      (let ()
                        (declare (not safe))
                        (__method220770
                         _%self218205%_
                         _%ctx218200%_
                         _%stx218201%_
                         _%args218202%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self218205%_
                                 'check-arguments))
                        '#!void))))
               (_%g218217218227%_
                (lambda (_%g218218218224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g218218218224%_))))
               (_%g218216218291%_
                (lambda (_%g218218218230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g218218218230%_))
                      (let ((_%e218220218232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g218218218230%_))))
                        (let ((_%hd218221218235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e218220218232%_)))
                              (_%tl218222218237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e218220218232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl218222218237%_))
                              ((lambda (_%g218219218240%_)
                                 (let* ((_%klass218253%_
                                         (let ((__tmp220827
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218205%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx218201%_
                                            __tmp220827)))
                                        (_%field218255%_
                                         (let ((__tmp220828
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self218205%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass218253%_
                                            __tmp220828)))
                                        (_%object218257%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx218200%_
                                            _%g218219218240%_)))
                                        (_%klass218260%_ _%klass218253%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass218260%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp220829
                                              (cons (if (or _%arguments-ok?218215%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self218205%_
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
                                 _%self218205%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field218255%_ '()))
                        (cons _%object218257%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp220829
                                          _%stx218201%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218260%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp220830
                                                  (cons (if (or _%arguments-ok?218215%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218205%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218205%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218255%_ '()))
                            (cons _%object218257%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220830
                                              _%stx218201%_))
                                           (let ((_%$e218279%_
                                                  (let ((__tmp220831
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218205%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass218260%_
                                                     __tmp220831))))
                                             (if _%$e218279%_
                                                 ((lambda (_%klass218282%_)
                                                    (let ((__tmp220832
                                                           (cons (if (or _%arguments-ok?218215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218205%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self218205%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field218255%_ '()))
                                     (cons _%object218257%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp220832 _%stx218201%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e218279%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self218205%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp220833
                                                            (let ((_%$obj218288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp220834
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp220834))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj218288%_ '())
                                              (cons _%object218257%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass218260%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj218288%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218205%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218255%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218288%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?218215%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218288%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self218205%_
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
                                                             _%self218205%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj218288%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self218205%_
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
               (gxc#xform-wrap-source __tmp220833 _%stx218201%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp220835
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object218257%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self218205%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp220835 _%stx218201%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd218221218235%_)
                              (_%g218217218227%_ _%g218218218230%_))))
                      (_%g218217218227%_ _%g218218218230%_)))))
          (_%g218216218291%_ _%args218202%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass220057 __method-table220058)
        (let ((__check-arguments220059
               (let ((__tmp220836
                      (lambda ()
                        (let ((__method220060
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220058
                                  'check-arguments
                                  '#f))))
                          (if __method220060
                              __method220060
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220836)))
              (__slot220061
               (let ((__slot220062
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass220057 'slot))))
                 (if __slot220062
                     __slot220062
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self218199%_ _%ctx218200%_ _%stx218201%_ _%args218202%_)
            (let* ((_%self218205%_ _%self218199%_)
                   (_%arguments-ok?218215%_
                    ((force __check-arguments220059)
                     _%self218205%_
                     _%ctx218200%_
                     _%stx218201%_
                     _%args218202%_))
                   (_%g218217218227%_
                    (lambda (_%g218218218224%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g218218218224%_))))
                   (_%g218216218291%_
                    (lambda (_%g218218218230%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g218218218230%_))
                          (let ((_%e218220218232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g218218218230%_))))
                            (let ((_%hd218221218235%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e218220218232%_)))
                                  (_%tl218222218237%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e218220218232%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl218222218237%_))
                                  ((lambda (_%g218219218240%_)
                                     (let* ((_%klass218253%_
                                             (let ((__tmp220837
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218205%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx218201%_
                                                __tmp220837)))
                                            (_%field218255%_
                                             (let ((__tmp220838
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self218205%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass218253%_
                                                __tmp220838)))
                                            (_%object218257%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx218200%_
                                                _%g218219218240%_)))
                                            (_%klass218260%_ _%klass218253%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass218260%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp220839
                                                  (cons (if (or _%arguments-ok?218215%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self218205%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218205%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field218255%_ '()))
                            (cons _%object218257%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220839
                                              _%stx218201%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218260%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220840
                                                      (cons (if (or _%arguments-ok?218215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self218205%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self218205%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218255%_ '()))
                                (cons _%object218257%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220840
                                                  _%stx218201%_))
                                               (let ((_%$e218279%_
                                                      (let ((__tmp220841
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self218205%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass218260%_ __tmp220841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e218279%_
                                                     ((lambda (_%klass218282%_)
                                                        (let ((__tmp220842
                                                               (cons (if (or _%arguments-ok?218215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self218205%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self218205%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field218255%_ '()))
                                         (cons _%object218257%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp220842 _%stx218201%_)))
              _%$e218279%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self218205%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp220843
                                                                (let ((_%$obj218288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220844
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp220844))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj218288%_ '())
                                                  (cons _%object218257%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass218260%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj218288%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self218205%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218255%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj218288%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?218215%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218288%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self218205%_
                               __slot220061
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
                        (##unchecked-structure-ref _%self218205%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj218288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self218205%_
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
                   (gxc#xform-wrap-source __tmp220843 _%stx218201%_))
                 (let ((__tmp220845
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object218257%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self218205%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp220845 _%stx218201%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd218221218235%_)
                                  (_%g218217218227%_ _%g218218218230%_))))
                          (_%g218217218227%_ _%g218218218230%_)))))
              (_%g218216218291%_ _%args218202%_))))))
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
      (lambda (_%self217963%_ _%ctx217964%_ _%stx217965%_ _%args217966%_)
        (let* ((_%self217969%_ _%self217963%_)
               (_%arguments-ok?217979%_
                (let ((__method220771
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self217969%_ 'check-arguments))))
                  (if __method220771
                      (let ()
                        (declare (not safe))
                        (__method220771
                         _%self217969%_
                         _%ctx217964%_
                         _%stx217965%_
                         _%args217966%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self217969%_
                                 'check-arguments))
                        '#!void))))
               (_%g217981217995%_
                (lambda (_%g217982217992%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g217982217992%_))))
               (_%g217980218074%_
                (lambda (_%g217982217998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g217982217998%_))
                      (let ((_%e217985218000%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g217982217998%_))))
                        (let ((_%hd217986218003%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e217985218000%_)))
                              (_%tl217987218005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e217985218000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217987218005%_))
                              (let ((_%e217988218008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217987218005%_))))
                                (let ((_%hd217989218011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217988218008%_)))
                                      (_%tl217990218013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217988218008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl217990218013%_))
                                      ((lambda (_%g217983218016%_
                                                _%g217984218017%_)
                                         (let* ((_%klass218033%_
                                                 (let ((__tmp220846
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self217969%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx217965%_
                                                    __tmp220846)))
                                                (_%field218035%_
                                                 (let ((__tmp220847
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self217969%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass218033%_
                                                    __tmp220847)))
                                                (_%object218037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx217964%_
                                                    _%g217984218017%_)))
                                                (_%value218039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx217964%_
                                                    _%g217983218016%_)))
                                                (_%klass218042%_
                                                 _%klass218033%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass218042%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp220848
                                                      (cons (if (or _%arguments-ok?217979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self217969%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self217969%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field218035%_ '()))
                                (cons _%object218037%_
                                      (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp220848
                                                  _%stx217965%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218042%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp220849
                                                          (cons (if (or _%arguments-ok?217979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self217969%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self217969%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218035%_ '()))
                                    (cons _%object218037%_
                                          (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220849
                                                      _%stx217965%_))
                                                   (let ((_%$e218062%_
                                                          (let ((__tmp220850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self217969%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass218042%_
                     __tmp220850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e218062%_
                                                         ((lambda (_%klass218065%_)
                                                            (let ((__tmp220851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?217979%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self217969%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self217969%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field218035%_ '()))
                                             (cons _%object218037%_
                                                   (cons _%value218039%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220851 _%stx217965%_)))
                  _%$e218062%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self217969%_ '4 '#f '#f))
                     (let ((__tmp220852
                            (let ((_%$obj218071%_
                                   (let ((__tmp220853
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp220853))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj218071%_ '())
                                                      (cons _%object218037%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218042%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj218071%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self217969%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field218035%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj218071%_
                                                              '()))
                                                  (cons _%value218039%_
                                                        '())))))
                          (cons (if _%arguments-ok?217979%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self217969%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value218039%_ '())))))
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
                             _%self217969%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj218071%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self217969%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp220852 _%stx217965%_))
                     (let ((__tmp220854
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object218037%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self217969%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value218039%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp220854
                        _%stx217965%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd217989218011%_
                                       _%hd217986218003%_)
                                      (_%g217981217995%_ _%g217982217998%_))))
                              (_%g217981217995%_ _%g217982217998%_))))
                      (_%g217981217995%_ _%g217982217998%_)))))
          (_%g217980218074%_ _%args217966%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass220063 __method-table220064)
        (let ((__check-arguments220065
               (let ((__tmp220855
                      (lambda ()
                        (let ((__method220066
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table220064
                                  'check-arguments
                                  '#f))))
                          (if __method220066
                              __method220066
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp220855))))
          (lambda (_%self217963%_ _%ctx217964%_ _%stx217965%_ _%args217966%_)
            (let* ((_%self217969%_ _%self217963%_)
                   (_%arguments-ok?217979%_
                    ((force __check-arguments220065)
                     _%self217969%_
                     _%ctx217964%_
                     _%stx217965%_
                     _%args217966%_))
                   (_%g217981217995%_
                    (lambda (_%g217982217992%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g217982217992%_))))
                   (_%g217980218074%_
                    (lambda (_%g217982217998%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g217982217998%_))
                          (let ((_%e217985218000%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g217982217998%_))))
                            (let ((_%hd217986218003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217985218000%_)))
                                  (_%tl217987218005%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217985218000%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl217987218005%_))
                                  (let ((_%e217988218008%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl217987218005%_))))
                                    (let ((_%hd217989218011%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e217988218008%_)))
                                          (_%tl217990218013%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e217988218008%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl217990218013%_))
                                          ((lambda (_%g217983218016%_
                                                    _%g217984218017%_)
                                             (let* ((_%klass218033%_
                                                     (let ((__tmp220856
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self217969%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx217965%_
                                                        __tmp220856)))
                                                    (_%field218035%_
                                                     (let ((__tmp220857
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self217969%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass218033%_
                                                        __tmp220857)))
                                                    (_%object218037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx217964%_
                                                        _%g217984218017%_)))
                                                    (_%value218039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx217964%_
                                                        _%g217983218016%_)))
                                                    (_%klass218042%_
                                                     _%klass218033%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass218042%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp220858
                                                          (cons (if (or _%arguments-ok?217979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self217969%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self217969%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field218035%_ '()))
                                    (cons _%object218037%_
                                          (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220858
                                                      _%stx217965%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass218042%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp220859
                                                              (cons (if (or _%arguments-ok?217979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self217969%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self217969%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field218035%_ '()))
                                        (cons _%object218037%_
                                              (cons _%value218039%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp220859 _%stx217965%_))
               (let ((_%$e218062%_
                      (let ((__tmp220860
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self217969%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass218042%_
                         __tmp220860))))
                 (if _%$e218062%_
                     ((lambda (_%klass218065%_)
                        (let ((__tmp220861
                               (cons (if (or _%arguments-ok?217979%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self217969%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self217969%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field218035%_
                                                             '()))
                                                 (cons _%object218037%_
                                                       (cons _%value218039%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp220861 _%stx217965%_)))
                      _%$e218062%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self217969%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp220862
                                (let ((_%$obj218071%_
                                       (let ((__tmp220863
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp220863))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj218071%_
                                                                '())
                                                          (cons _%object218037%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass218042%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj218071%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self217969%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field218035%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj218071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value218039%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?217979%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj218071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self217969%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value218039%_ '())))))
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
                                 _%self217969%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj218071%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self217969%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp220862 _%stx217965%_))
                         (let ((__tmp220864
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object218037%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self217969%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value218039%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp220864
                            _%stx217965%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd217989218011%_
                                           _%hd217986218003%_)
                                          (_%g217981217995%_
                                           _%g217982217998%_))))
                                  (_%g217981217995%_ _%g217982217998%_))))
                          (_%g217981217995%_ _%g217982217998%_)))))
              (_%g217980218074%_ _%args217966%_))))))
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
      (lambda (_%self217779%_ _%ctx217780%_ _%stx217781%_ _%args217782%_)
        (let* ((_%self217785%_ _%self217779%_)
               (_%self217794217804%_ _%self217785%_)
               (_%E217796217807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217794217804%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K217797217817%_
                (lambda (_%inline217810%_ _%dispatch217811%_ _%arity217812%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self217785%_
                         _%args217782%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx217781%_
                         _%arity217812%_)))
                  (if _%inline217810%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp220865 (_%inline217810%_ _%stx217781%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp220865
                           _%stx217781%_
                           _%ctx217780%_)))
                      (if (and _%dispatch217811%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch217811%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch217811%_))
                            (let ((__tmp220866
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch217811%_
                                                           '()))
                                               _%args217782%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp220866
                               _%stx217781%_
                               _%ctx217780%_)))
                          (gxc#!procedure::optimize-call
                           _%self217785%_
                           _%ctx217780%_
                           _%stx217781%_
                           _%args217782%_)))))
               (_%e217798217820%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217794217804%_ '1 '#f '#f)))
               (_%e217799217823%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217794217804%_ '2 '#f '#f)))
               (_%e217800217826%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217794217804%_ '3 '#f '#f)))
               (_%arity217829%_ _%e217800217826%_)
               (_%e217801217831%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217794217804%_ '4 '#f '#f)))
               (_%dispatch217834%_ _%e217801217831%_)
               (_%e217802217836%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217794217804%_ '5 '#f '#f)))
               (_%inline217839%_ _%e217802217836%_))
          (_%K217797217817%_
           _%inline217839%_
           _%dispatch217834%_
           _%arity217829%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self217631%_ _%ctx217632%_ _%stx217633%_ _%args217634%_)
        (let* ((_%self217637%_ _%self217631%_)
               (_%$e217651%_
                (let ((__tmp220868
                       (lambda (_%g217646217648%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g217646217648%_
                            _%args217634%_))))
                      (__tmp220867
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self217637%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp220868 __tmp220867))))
          (if _%$e217651%_
              ((lambda (_%clause217654%_)
                 (let ((__method220772
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause217654%_ 'optimize-call))))
                   (if __method220772
                       (let ()
                         (declare (not safe))
                         (__method220772
                          _%clause217654%_
                          _%ctx217632%_
                          _%stx217633%_
                          _%args217634%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause217654%_
                                  'optimize-call))
                         '#!void))))
               _%$e217651%_)
              (let ((__tmp220869
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self217637%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx217633%_
                 __tmp220869))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self217372%_ _%ctx217373%_ _%stx217374%_ _%args217375%_)
        (let* ((_%self217378%_ _%self217372%_)
               (_%self217387217396%_ _%self217378%_)
               (_%E217389217399%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self217387217396%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K217390217490%_
                (lambda (_%dispatch217402%_ _%table217403%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch217402%_))
                      (let* ((_%g217404217414%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch217402%_)))
                             (_%else217406217422%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch217402%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx217373%_
                                   _%stx217374%_))))
                             (_%K217408217471%_
                              (lambda (_%main217425%_ _%keys217426%_)
                                (let ((_g220870_
                                       (gxc#!kw-lambda-split-args
                                        _%stx217374%_
                                        _%args217375%_)))
                                  (begin
                                    (let ((_g220871_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g220870_)
                                                 (##values-length _g220870_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g220871_ 2)))
                                          (error "Context expects 2 values"
                                                 _g220871_)))
                                    (let ((_%pargs217428%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g220870_ 0)))
                                          (_%kwargs217429%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g220870_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main217425%_))
                                        (if _%table217403%_
                                            (let ((_%xargs217437%_
                                                   (map (lambda (_%key217431%_)
                                                          (let ((_%$e217433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key217431%_ _%kwargs217429%_))))
                    (if _%$e217433%_ _%$e217433%_ '(%#ref absent-value))))
                _%keys217426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw217439%_)
                                                 (if (memq (car _%kw217439%_)
                                                           _%keys217426%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx217374%_
                                                        _%keys217426%_
                                                        _%kw217439%_))))
                                               _%kwargs217429%_)
                                              (let ((__tmp220872
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main217425%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs217428%_
                                  _%xargs217437%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp220872
                                                 _%stx217374%_
                                                 _%ctx217373%_)))
                                            (let* ((_%kwt217441%_
                                                    (let ((__tmp220873
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp220873)))
                                                   (_%kwvars217445%_
                                                    (map (lambda (_%_217443%_)
                                                           (let ((__tmp220874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp220874)))
                 _%kwargs217429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind217450%_
                                                    (map (lambda (_%kw217447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217448%_)
                   (cons (cons _%kwvar217448%_ '())
                         (cons (cdr _%kw217447%_) '())))
                 _%kwargs217429%_
                 _%kwvars217445%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset217455%_
                                                    (map (lambda (_%kw217452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217453%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt217441%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw217452%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar217453%_
                                                             '()))
                                                 '()))))))
                 _%kwargs217429%_
                 _%kwvars217445%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs217460%_
                                                    (map (lambda (_%kw217457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar217458%_)
                   (cons (car _%kw217457%_)
                         (cons '%#ref (cons _%kwvar217458%_ '()))))
                 _%kwargs217429%_
                 _%kwvars217445%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs217468%_
                                                    (map (lambda (_%key217462%_)
                                                           (let ((_%$e217464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key217462%_ _%xkwargs217460%_))))
                     (if _%$e217464%_ _%$e217464%_ '(%#ref absent-value))))
                 _%keys217426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp220875
                                                    (cons '%#let-values
                                                          (cons _%kwbind217450%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt217441%_ '())
                                                      (cons (let ((__tmp220876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs217429%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220876 _%stx217374%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp220877
                                                             (cons (let ((__tmp220878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main217425%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt217441%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs217428%_
                                                       _%xargs217468%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp220878 _%stx217374%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp220877 _%kwset217455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp220875
                                               _%stx217374%_
                                               _%ctx217373%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g217404217414%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e217409217474%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217404217414%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e217410217477%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217404217414%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e217411217480%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217404217414%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys217483%_ _%e217411217480%_)
                                   (_%e217412217485%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g217404217414%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main217488%_ _%e217412217485%_))
                              (_%K217408217471%_
                               _%main217488%_
                               _%keys217483%_))
                            (_%else217406217422%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx217373%_ _%stx217374%_)))))
               (_%e217391217493%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217387217396%_ '1 '#f '#f)))
               (_%e217392217496%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217387217396%_ '2 '#f '#f)))
               (_%e217393217499%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217387217396%_ '3 '#f '#f)))
               (_%table217502%_ _%e217393217499%_)
               (_%e217394217504%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self217387217396%_ '4 '#f '#f)))
               (_%dispatch217507%_ _%e217394217504%_))
          (_%K217390217490%_ _%dispatch217507%_ _%table217502%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx216985%_ _%args216986%_)
        (let _%lp216988%_ ((_%rest216990%_ _%args216986%_)
                           (_%pargs216991%_ '())
                           (_%kwargs216992%_ '()))
          (let* ((_%__stx220331220332%_ _%rest216990%_)
                 (_%g216998217050%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx220331220332%_)))))
            (let ((_%__kont220333220334%_
                   (lambda (_%g217000217229%_ _%g217001217230%_)
                     (_%lp216988%_
                      _%g217000217229%_
                      (cons _%g217001217230%_ _%pargs216991%_)
                      _%kwargs216992%_)))
                  (_%__kont220335220336%_
                   (lambda (_%g217015217175%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1
                                cons
                                _%g217015217175%_
                                _%pargs216991%_))
                             (reverse _%kwargs216992%_))))
                  (_%__kont220337220338%_
                   (lambda (_%g217026217122%_
                            _%g217027217123%_
                            _%g217028217124%_)
                     (let ((_%kw217141%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g217028217124%_))))
                       (if (assq _%kw217141%_ _%kwargs216992%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx216985%_
                              _%kw217141%_))
                           (_%lp216988%_
                            _%g217026217122%_
                            _%pargs216991%_
                            (cons (cons _%kw217141%_ _%g217027217123%_)
                                  _%kwargs216992%_))))))
                  (_%__kont220339220340%_
                   (lambda (_%g217041217070%_ _%g217042217071%_)
                     (_%lp216988%_
                      _%g217041217070%_
                      (cons _%g217042217071%_ _%pargs216991%_)
                      _%kwargs216992%_)))
                  (_%__kont220341220342%_
                   (lambda ()
                     (values (reverse _%pargs216991%_)
                             (reverse _%kwargs216992%_)))))
              (let ((_%__match220438220439%_
                     (lambda (_%e217029217090%_
                              _%hd217030217093%_
                              _%tl217031217095%_
                              _%e217032217098%_
                              _%hd217033217101%_
                              _%tl217034217103%_
                              _%e217035217106%_
                              _%hd217036217109%_
                              _%tl217037217111%_
                              _%e217038217114%_
                              _%hd217039217117%_
                              _%tl217040217119%_)
                       (let ((_%g217026217122%_ _%tl217040217119%_)
                             (_%g217027217123%_ _%hd217039217117%_)
                             (_%g217028217124%_ _%hd217036217109%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g217028217124%_))
                             (_%__kont220337220338%_
                              _%g217026217122%_
                              _%g217027217123%_
                              _%g217028217124%_)
                             (_%__kont220339220340%_
                              _%tl217031217095%_
                              _%hd217030217093%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx220331220332%_))
                    (let ((_%e217002217194%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx220331220332%_))))
                      (let ((_%tl217004217199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217002217194%_)))
                            (_%hd217003217197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217002217194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd217003217197%_))
                            (let ((_%e217005217202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd217003217197%_))))
                              (let ((_%tl217007217207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e217005217202%_)))
                                    (_%hd217006217205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e217005217202%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd217006217205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd217006217205%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl217007217207%_))
                                            (let ((_%e217008217210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl217007217207%_))))
                                              (let ((_%tl217010217215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e217008217210%_)))
                                                    (_%hd217009217213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e217008217210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd217009217213%_))
                                                    (let ((_%e217011217218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd217009217213%_))))
                                                      (if (equal? _%e217011217218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl217010217215%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl217004217199%_))
                          (let ((_%e217012217221%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl217004217199%_))))
                            (let ((_%tl217014217226%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e217012217221%_)))
                                  (_%hd217013217224%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e217012217221%_))))
                              (_%__kont220333220334%_
                               _%tl217014217226%_
                               _%hd217013217224%_)))
                          (_%__kont220339220340%_
                           _%tl217004217199%_
                           _%hd217003217197%_))
                      (_%__kont220339220340%_
                       _%tl217004217199%_
                       _%hd217003217197%_))
                  (if (equal? _%e217011217218%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217010217215%_))
                          (_%__kont220335220336%_ _%tl217004217199%_)
                          (_%__kont220339220340%_
                           _%tl217004217199%_
                           _%hd217003217197%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl217010217215%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl217004217199%_))
                              (let ((_%e217038217114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl217004217199%_))))
                                (let ((_%tl217040217119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e217038217114%_)))
                                      (_%hd217039217117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e217038217114%_))))
                                  (_%__match220438220439%_
                                   _%e217002217194%_
                                   _%hd217003217197%_
                                   _%tl217004217199%_
                                   _%e217005217202%_
                                   _%hd217006217205%_
                                   _%tl217007217207%_
                                   _%e217008217210%_
                                   _%hd217009217213%_
                                   _%tl217010217215%_
                                   _%e217038217114%_
                                   _%hd217039217117%_
                                   _%tl217040217119%_)))
                              (_%__kont220339220340%_
                               _%tl217004217199%_
                               _%hd217003217197%_))
                          (_%__kont220339220340%_
                           _%tl217004217199%_
                           _%hd217003217197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl217010217215%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl217004217199%_))
                                                            (let ((_%e217038217114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl217004217199%_))))
                      (let ((_%tl217040217119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e217038217114%_)))
                            (_%hd217039217117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e217038217114%_))))
                        (_%__match220438220439%_
                         _%e217002217194%_
                         _%hd217003217197%_
                         _%tl217004217199%_
                         _%e217005217202%_
                         _%hd217006217205%_
                         _%tl217007217207%_
                         _%e217008217210%_
                         _%hd217009217213%_
                         _%tl217010217215%_
                         _%e217038217114%_
                         _%hd217039217117%_
                         _%tl217040217119%_)))
                    (_%__kont220339220340%_
                     _%tl217004217199%_
                     _%hd217003217197%_))
                (_%__kont220339220340%_
                 _%tl217004217199%_
                 _%hd217003217197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont220339220340%_
                                             _%tl217004217199%_
                                             _%hd217003217197%_))
                                        (_%__kont220339220340%_
                                         _%tl217004217199%_
                                         _%hd217003217197%_))
                                    (_%__kont220339220340%_
                                     _%tl217004217199%_
                                     _%hd217003217197%_))))
                            (_%__kont220339220340%_
                             _%tl217004217199%_
                             _%hd217003217197%_))))
                    (_%__kont220341220342%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self216969%_ _%ctx216970%_ _%stx216971%_ _%args216972%_)
        (let ((_%self216975%_ _%self216969%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx216970%_ _%stx216971%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self216659%_ _%stx216660%_)
        (let* ((_%__stx220447220448%_ _%stx216660%_)
               (_%g216663216703%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220447220448%_)))))
          (let ((_%__kont220449220450%_
                 (lambda (_%g216665216807%_ _%g216666216808%_)
                   (let ((_%$e216835%_
                          (member 'return:
                                  (let ((__tmp220879
                                         (lambda (_%g216827216830%_
                                                  _%g216828216832%_)
                                           (cons _%g216827216830%_
                                                 _%g216828216832%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp220879
                                     '()
                                     _%g216666216808%_))
                                  gx#stx-eq?)))
                     (if _%$e216835%_
                         ((lambda (_%tail216838%_)
                            (let ((_%type216840%_
                                   (let ((__tmp220880
                                          (let ((__tmp220881
                                                 (cadr _%tail216838%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp220881))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx216660%_
                                      __tmp220880))))
                              (gxc#check-return-type!
                               _%stx216660%_
                               _%g216665216807%_
                               _%type216840%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self216659%_
                                 _%g216665216807%_))))
                          _%$e216835%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self216659%_
                            _%g216665216807%_))))))
                (_%__kont220453220454%_
                 (lambda (_%g216688216732%_ _%g216689216733%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self216659%_ _%g216688216732%_)))))
            (let ((_%__match220484220485%_
                   (lambda (_%e216667216753%_
                            _%hd216668216756%_
                            _%tl216669216758%_
                            _%e216670216761%_
                            _%hd216671216764%_
                            _%tl216672216766%_
                            _%e216673216769%_
                            _%hd216674216772%_
                            _%tl216675216774%_
                            _%__splice220451220452%_
                            _%target216676216777%_
                            _%tl216678216779%_)
                     (letrec ((_%loop216679216782%_
                               (lambda (_%hd216677216785%_
                                        _%signature216683216787%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd216677216785%_))
                                     (let ((_%e216680216789%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd216677216785%_))))
                                       (let ((_%lp-tl216682216794%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e216680216789%_)))
                                             (_%lp-hd216681216792%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e216680216789%_))))
                                         (_%loop216679216782%_
                                          _%lp-tl216682216794%_
                                          (cons _%lp-hd216681216792%_
                                                _%signature216683216787%_))))
                                     (let ((_%signature216684216797%_
                                            (reverse _%signature216683216787%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl216672216766%_))
                                           (let ((_%e216685216799%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl216672216766%_))))
                                             (let ((_%tl216687216804%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e216685216799%_)))
                                                   (_%hd216686216802%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e216685216799%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl216687216804%_))
                                                   (_%__kont220449220450%_
                                                    _%hd216686216802%_
                                                    _%signature216684216797%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g216663216703%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g216663216703%_))))))))
                       (_%loop216679216782%_ _%target216676216777%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220447220448%_))
                  (let ((_%e216667216753%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220447220448%_))))
                    (let ((_%tl216669216758%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216667216753%_)))
                          (_%hd216668216756%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216667216753%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216669216758%_))
                          (let ((_%e216670216761%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216669216758%_))))
                            (let ((_%tl216672216766%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216670216761%_)))
                                  (_%hd216671216764%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216670216761%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216671216764%_))
                                  (let ((_%e216673216769%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216671216764%_))))
                                    (let ((_%tl216675216774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216673216769%_)))
                                          (_%hd216674216772%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216673216769%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216674216772%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd216674216772%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl216675216774%_))
                                                  (let ((_%__splice220451220452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl216675216774%_
                                                            '0))))
                                                    (let ((_%tl216678216779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220451220452%_
                                                              '1)))
                                                          (_%target216676216777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice220451220452%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216678216779%_))
                                                          (_%__match220484220485%_
                                                           _%e216667216753%_
                                                           _%hd216668216756%_
                                                           _%tl216669216758%_
                                                           _%e216670216761%_
                                                           _%hd216671216764%_
                                                           _%tl216672216766%_
                                                           _%e216673216769%_
                                                           _%hd216674216772%_
                                                           _%tl216675216774%_
                                                           _%__splice220451220452%_
                                                           _%target216676216777%_
                                                           _%tl216678216779%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216672216766%_))
                      (let ((_%e216696216724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216672216766%_))))
                        (let ((_%tl216698216729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216696216724%_)))
                              (_%hd216697216727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216696216724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216698216729%_))
                              (_%__kont220453220454%_
                               _%hd216697216727%_
                               _%hd216671216764%_)
                              (let ()
                                (declare (not safe))
                                (_%g216663216703%_)))))
                      (let () (declare (not safe)) (_%g216663216703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216672216766%_))
                                                      (let ((_%e216696216724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216672216766%_))))
                (let ((_%tl216698216729%_
                       (let () (declare (not safe)) (##cdr _%e216696216724%_)))
                      (_%hd216697216727%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216696216724%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216698216729%_))
                      (_%__kont220453220454%_
                       _%hd216697216727%_
                       _%hd216671216764%_)
                      (let () (declare (not safe)) (_%g216663216703%_)))))
              (let () (declare (not safe)) (_%g216663216703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216672216766%_))
                                                  (let ((_%e216696216724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216672216766%_))))
                                                    (let ((_%tl216698216729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216696216724%_)))
                                                          (_%hd216697216727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216696216724%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216698216729%_))
                                                          (_%__kont220453220454%_
                                                           _%hd216697216727%_
                                                           _%hd216671216764%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216663216703%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216663216703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216672216766%_))
                                              (let ((_%e216696216724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216672216766%_))))
                                                (let ((_%tl216698216729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216696216724%_)))
                                                      (_%hd216697216727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216696216724%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216698216729%_))
                                                      (_%__kont220453220454%_
                                                       _%hd216697216727%_
                                                       _%hd216671216764%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216663216703%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216663216703%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216672216766%_))
                                      (let ((_%e216696216724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216672216766%_))))
                                        (let ((_%tl216698216729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216696216724%_)))
                                              (_%hd216697216727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216696216724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216698216729%_))
                                              (_%__kont220453220454%_
                                               _%hd216697216727%_
                                               _%hd216671216764%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g216663216703%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216663216703%_))))))
                          (let () (declare (not safe)) (_%g216663216703%_)))))
                  (let () (declare (not safe)) (_%g216663216703%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx216634%_ _%expr216635%_ _%type216636%_)
        (let ((_%$e216638%_ (not _%type216636%_)))
          (if _%$e216638%_
              _%$e216638%_
              (let ((_%$e216641%_
                     (eq? (##structure-ref _%type216636%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e216641%_
                    _%$e216641%_
                    (let ((_%$e216644%_
                           (eq? (##structure-ref
                                 _%type216636%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e216644%_
                          _%$e216644%_
                          (let ((_%expr-type216648%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr216635%_))))
                            (if (not _%expr-type216648%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx216634%_
                                   _%type216636%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type216648%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx216634%_
                                       _%type216636%_
                                       _%expr-type216648%_))
                                    (let ((_%$e216652%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type216648%_
                                              'gxc#!abort::t))))
                                      (if _%$e216652%_
                                          _%$e216652%_
                                          (let ((_%$e216655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type216648%_
                                                    _%type216636%_))))
                                            (if _%$e216655%_
                                                _%$e216655%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx216634%_
                                                   _%type216636%_
                                                   _%expr-type216648%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self216060%_ _%stx216061%_)
        (let* ((_%__stx220529220530%_ _%stx216061%_)
               (_%g216066216176%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx220529220530%_)))))
          (let ((_%__kont220531220532%_
                 (lambda (_%g216068216608%_
                          _%g216069216609%_
                          _%g216070216610%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g216070216610%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self216060%_ _%g216069216609%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self216060%_
                          _%g216068216608%_)))))
                (_%__kont220533220534%_
                 (lambda (_%g216089216434%_
                          _%g216090216435%_
                          _%g216091216436%_
                          _%g216092216437%_)
                   (let ((_%$e216469%_
                          (let ((__tmp220882
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g216092216437%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp220882))))
                     (if _%$e216469%_
                         ((lambda (_%pred-type216472%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216472%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type216472%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test216477%_
                                        (let ((__tmp220883
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g216092216437%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g216091216436%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp220883
                                           _%stx216061%_
                                           _%self216060%_)))
                                       (_%K216481%_
                                        (let ((__tmp220884
                                               (lambda ()
                                                 (let ((__tmp220887
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self216060%_
                                                             _%g216090216435%_))))
                                                       (__tmp220885
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g216091216436%_))
                            (let ((__tmp220886
                                   (##structure-ref
                                    _%pred-type216472%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx216061%_
                               __tmp220886)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp220887
                                                    gxc#current-compile-path-type
                                                    __tmp220885)))))
                                          (declare (not safe))
                                          (__make-promise __tmp220884)))
                                       (_%E216484%_
                                        (let ((__tmp220888
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self216060%_
                                                    _%g216089216434%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp220888)))
                                       (_%__stx220507220508%_ _%test216477%_)
                                       (_%g216488216502%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx220507220508%_)))))
                                  (let ((_%__kont220509220510%_
                                         (lambda (_%g216490216530%_
                                                  _%g216491216531%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g216490216530%_))
                                               (force _%K216481%_)
                                               (force _%E216484%_))))
                                        (_%__kont220511220512%_
                                         (lambda ()
                                           (let ((__tmp220889
                                                  (cons '%#if
                                                        (cons _%test216477%_
                                                              (cons (force _%K216481%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E216484%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp220889
                                              _%stx216061%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx220507220508%_))
                                        (let ((_%e216492216514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx220507220508%_))))
                                          (let ((_%tl216494216519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e216492216514%_)))
                                                (_%hd216493216517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e216492216514%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl216494216519%_))
                                                (let ((_%e216495216522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl216494216519%_))))
                                                  (let ((_%tl216497216527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e216495216522%_)))
                                                        (_%hd216496216525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e216495216522%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl216497216527%_))
                                                        (_%__kont220509220510%_
                                                         _%hd216496216525%_
                                                         _%hd216493216517%_)
                                                        (_%__kont220511220512%_))))
                                                (_%__kont220511220512%_))))
                                        (_%__kont220511220512%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self216060%_
                                   _%stx216061%_))))
                          _%$e216469%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self216060%_
                            _%stx216061%_))))))
                (_%__kont220535220536%_
                 (lambda (_%g216126216310%_
                          _%g216127216311%_
                          _%g216128216312%_
                          _%g216129216313%_)
                   (gxc#optimize-if%
                    _%self216060%_
                    (let ((__tmp220890
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g216128216312%_
                                       (cons _%g216126216310%_
                                             (cons _%g216127216311%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp220890 _%stx216061%_)))))
                (_%__kont220537220538%_
                 (lambda (_%g216157216213%_
                          _%g216158216214%_
                          _%g216159216215%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self216060%_ _%stx216061%_)))))
            (let ((_%__match220736220737%_
                   (lambda (_%e216130216238%_
                            _%hd216131216241%_
                            _%tl216132216243%_
                            _%e216133216246%_
                            _%hd216134216249%_
                            _%tl216135216251%_
                            _%e216136216254%_
                            _%hd216137216257%_
                            _%tl216138216259%_
                            _%e216139216262%_
                            _%hd216140216265%_
                            _%tl216141216267%_
                            _%e216142216270%_
                            _%hd216143216273%_
                            _%tl216144216275%_
                            _%e216145216278%_
                            _%hd216146216281%_
                            _%tl216147216283%_
                            _%e216148216286%_
                            _%hd216149216289%_
                            _%tl216150216291%_
                            _%e216151216294%_
                            _%hd216152216297%_
                            _%tl216153216299%_
                            _%e216154216302%_
                            _%hd216155216305%_
                            _%tl216156216307%_)
                     (let ((_%g216126216310%_ _%hd216155216305%_)
                           (_%g216127216311%_ _%hd216152216297%_)
                           (_%g216128216312%_ _%hd216149216289%_)
                           (_%g216129216313%_ _%hd216146216281%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g216129216313%_ 'not))
                           (_%__kont220535220536%_
                            _%g216126216310%_
                            _%g216127216311%_
                            _%g216128216312%_
                            _%g216129216313%_)
                           (_%__kont220537220538%_
                            _%hd216155216305%_
                            _%hd216152216297%_
                            _%hd216134216249%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx220529220530%_))
                  (let ((_%e216071216560%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx220529220530%_))))
                    (let ((_%tl216073216565%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216071216560%_)))
                          (_%hd216072216563%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216071216560%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216073216565%_))
                          (let ((_%e216074216568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216073216565%_))))
                            (let ((_%tl216076216573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216074216568%_)))
                                  (_%hd216075216571%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216074216568%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd216075216571%_))
                                  (let ((_%e216077216576%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd216075216571%_))))
                                    (let ((_%tl216079216581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216077216576%_)))
                                          (_%hd216078216579%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216077216576%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd216078216579%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd216078216579%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216079216581%_))
                                                  (let ((_%e216080216584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216079216581%_))))
                                                    (let ((_%tl216082216589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216080216584%_)))
                                                          (_%hd216081216587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216080216584%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216082216589%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl216076216573%_))
                      (let ((_%e216083216592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216076216573%_))))
                        (let ((_%tl216085216597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216083216592%_)))
                              (_%hd216084216595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216083216592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216085216597%_))
                              (let ((_%e216086216600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216085216597%_))))
                                (let ((_%tl216088216605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216086216600%_)))
                                      (_%hd216087216603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216086216600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216088216605%_))
                                      (_%__kont220531220532%_
                                       _%hd216087216603%_
                                       _%hd216084216595%_
                                       _%hd216081216587%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216066216176%_)))))
                      (let () (declare (not safe)) (_%g216066216176%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216076216573%_))
                      (let ((_%e216166216197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216076216573%_))))
                        (let ((_%tl216168216202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216166216197%_)))
                              (_%hd216167216200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216166216197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl216168216202%_))
                              (let ((_%e216169216205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl216168216202%_))))
                                (let ((_%tl216171216210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e216169216205%_)))
                                      (_%hd216170216208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e216169216205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216171216210%_))
                                      (_%__kont220537220538%_
                                       _%hd216170216208%_
                                       _%hd216167216200%_
                                       _%hd216075216571%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g216066216176%_)))))
                      (let () (declare (not safe)) (_%g216066216176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216076216573%_))
                                                      (let ((_%e216166216197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216076216573%_))))
                (let ((_%tl216168216202%_
                       (let () (declare (not safe)) (##cdr _%e216166216197%_)))
                      (_%hd216167216200%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216166216197%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216168216202%_))
                      (let ((_%e216169216205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216168216202%_))))
                        (let ((_%tl216171216210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216169216205%_)))
                              (_%hd216170216208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216169216205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216171216210%_))
                              (_%__kont220537220538%_
                               _%hd216170216208%_
                               _%hd216167216200%_
                               _%hd216075216571%_)
                              (let ()
                                (declare (not safe))
                                (_%g216066216176%_)))))
                      (let () (declare (not safe)) (_%g216066216176%_)))))
              (let () (declare (not safe)) (_%g216066216176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd216078216579%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216079216581%_))
                                                      (let ((_%e216102216370%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216079216581%_))))
                (let ((_%tl216104216375%_
                       (let () (declare (not safe)) (##cdr _%e216102216370%_)))
                      (_%hd216103216373%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216102216370%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd216103216373%_))
                      (let ((_%e216105216378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd216103216373%_))))
                        (let ((_%tl216107216383%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216105216378%_)))
                              (_%hd216106216381%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216105216378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd216106216381%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd216106216381%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216107216383%_))
                                      (let ((_%e216108216386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216107216383%_))))
                                        (let ((_%tl216110216391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216108216386%_)))
                                              (_%hd216109216389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216108216386%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216110216391%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216104216375%_))
                                                  (let ((_%e216111216394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216104216375%_))))
                                                    (let ((_%tl216113216399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216111216394%_)))
                                                          (_%hd216112216397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216111216394%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd216112216397%_))
                                                          (let ((_%e216114216402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd216112216397%_))))
                    (let ((_%tl216116216407%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216114216402%_)))
                          (_%hd216115216405%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216114216402%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd216115216405%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd216115216405%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216116216407%_))
                                  (let ((_%e216117216410%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216116216407%_))))
                                    (let ((_%tl216119216415%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216117216410%_)))
                                          (_%hd216118216413%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216117216410%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216119216415%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216113216399%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216076216573%_))
                                                  (let ((_%e216120216418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216076216573%_))))
                                                    (let ((_%tl216122216423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216120216418%_)))
                                                          (_%hd216121216421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216120216418%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216122216423%_))
                                                          (let ((_%e216123216426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216122216423%_))))
                    (let ((_%tl216125216431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216123216426%_)))
                          (_%hd216124216429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216123216426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216125216431%_))
                          (_%__kont220533220534%_
                           _%hd216124216429%_
                           _%hd216121216421%_
                           _%hd216118216413%_
                           _%hd216109216389%_)
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216076216573%_))
                                                  (let ((_%e216166216197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216076216573%_))))
                                                    (let ((_%tl216168216202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216166216197%_)))
                                                          (_%hd216167216200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216166216197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216168216202%_))
                                                          (let ((_%e216169216205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216168216202%_))))
                    (let ((_%tl216171216210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216169216205%_)))
                          (_%hd216170216208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216169216205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216171216210%_))
                          (_%__kont220537220538%_
                           _%hd216170216208%_
                           _%hd216167216200%_
                           _%hd216075216571%_)
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl216113216399%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216076216573%_))
                                                  (let ((_%e216151216294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216076216573%_))))
                                                    (let ((_%tl216153216299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216151216294%_)))
                                                          (_%hd216152216297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216151216294%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216153216299%_))
                                                          (let ((_%e216154216302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216153216299%_))))
                    (let ((_%tl216156216307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216154216302%_)))
                          (_%hd216155216305%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216154216302%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216156216307%_))
                          (_%__match220736220737%_
                           _%e216071216560%_
                           _%hd216072216563%_
                           _%tl216073216565%_
                           _%e216074216568%_
                           _%hd216075216571%_
                           _%tl216076216573%_
                           _%e216077216576%_
                           _%hd216078216579%_
                           _%tl216079216581%_
                           _%e216102216370%_
                           _%hd216103216373%_
                           _%tl216104216375%_
                           _%e216105216378%_
                           _%hd216106216381%_
                           _%tl216107216383%_
                           _%e216108216386%_
                           _%hd216109216389%_
                           _%tl216110216391%_
                           _%e216111216394%_
                           _%hd216112216397%_
                           _%tl216113216399%_
                           _%e216151216294%_
                           _%hd216152216297%_
                           _%tl216153216299%_
                           _%e216154216302%_
                           _%hd216155216305%_
                           _%tl216156216307%_)
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216076216573%_))
                                                  (let ((_%e216166216197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216076216573%_))))
                                                    (let ((_%tl216168216202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216166216197%_)))
                                                          (_%hd216167216200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216166216197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216168216202%_))
                                                          (let ((_%e216169216205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216168216202%_))))
                    (let ((_%tl216171216210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216169216205%_)))
                          (_%hd216170216208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216169216205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216171216210%_))
                          (_%__kont220537220538%_
                           _%hd216170216208%_
                           _%hd216167216200%_
                           _%hd216075216571%_)
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl216113216399%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216076216573%_))
                                          (let ((_%e216151216294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216076216573%_))))
                                            (let ((_%tl216153216299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216151216294%_)))
                                                  (_%hd216152216297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216151216294%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216153216299%_))
                                                  (let ((_%e216154216302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216153216299%_))))
                                                    (let ((_%tl216156216307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216154216302%_)))
                                                          (_%hd216155216305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216154216302%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216156216307%_))
                                                          (_%__match220736220737%_
                                                           _%e216071216560%_
                                                           _%hd216072216563%_
                                                           _%tl216073216565%_
                                                           _%e216074216568%_
                                                           _%hd216075216571%_
                                                           _%tl216076216573%_
                                                           _%e216077216576%_
                                                           _%hd216078216579%_
                                                           _%tl216079216581%_
                                                           _%e216102216370%_
                                                           _%hd216103216373%_
                                                           _%tl216104216375%_
                                                           _%e216105216378%_
                                                           _%hd216106216381%_
                                                           _%tl216107216383%_
                                                           _%e216108216386%_
                                                           _%hd216109216389%_
                                                           _%tl216110216391%_
                                                           _%e216111216394%_
                                                           _%hd216112216397%_
                                                           _%tl216113216399%_
                                                           _%e216151216294%_
                                                           _%hd216152216297%_
                                                           _%tl216153216299%_
                                                           _%e216154216302%_
                                                           _%hd216155216305%_
                                                           _%tl216156216307%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216066216176%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216076216573%_))
                                          (let ((_%e216166216197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216076216573%_))))
                                            (let ((_%tl216168216202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216166216197%_)))
                                                  (_%hd216167216200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216166216197%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216168216202%_))
                                                  (let ((_%e216169216205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216168216202%_))))
                                                    (let ((_%tl216171216210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216169216205%_)))
                                                          (_%hd216170216208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216169216205%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216171216210%_))
                                                          (_%__kont220537220538%_
                                                           _%hd216170216208%_
                                                           _%hd216167216200%_
                                                           _%hd216075216571%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216066216176%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216113216399%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216076216573%_))
                                      (let ((_%e216151216294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216076216573%_))))
                                        (let ((_%tl216153216299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216151216294%_)))
                                              (_%hd216152216297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216151216294%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216153216299%_))
                                              (let ((_%e216154216302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216153216299%_))))
                                                (let ((_%tl216156216307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216154216302%_)))
                                                      (_%hd216155216305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216154216302%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216156216307%_))
                                                      (_%__match220736220737%_
                                                       _%e216071216560%_
                                                       _%hd216072216563%_
                                                       _%tl216073216565%_
                                                       _%e216074216568%_
                                                       _%hd216075216571%_
                                                       _%tl216076216573%_
                                                       _%e216077216576%_
                                                       _%hd216078216579%_
                                                       _%tl216079216581%_
                                                       _%e216102216370%_
                                                       _%hd216103216373%_
                                                       _%tl216104216375%_
                                                       _%e216105216378%_
                                                       _%hd216106216381%_
                                                       _%tl216107216383%_
                                                       _%e216108216386%_
                                                       _%hd216109216389%_
                                                       _%tl216110216391%_
                                                       _%e216111216394%_
                                                       _%hd216112216397%_
                                                       _%tl216113216399%_
                                                       _%e216151216294%_
                                                       _%hd216152216297%_
                                                       _%tl216153216299%_
                                                       _%e216154216302%_
                                                       _%hd216155216305%_
                                                       _%tl216156216307%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216066216176%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216066216176%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216076216573%_))
                                      (let ((_%e216166216197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216076216573%_))))
                                        (let ((_%tl216168216202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216166216197%_)))
                                              (_%hd216167216200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216166216197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216168216202%_))
                                              (let ((_%e216169216205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216168216202%_))))
                                                (let ((_%tl216171216210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216169216205%_)))
                                                      (_%hd216170216208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216169216205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216171216210%_))
                                                      (_%__kont220537220538%_
                                                       _%hd216170216208%_
                                                       _%hd216167216200%_
                                                       _%hd216075216571%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216066216176%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216066216176%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216113216399%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216076216573%_))
                                  (let ((_%e216151216294%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216076216573%_))))
                                    (let ((_%tl216153216299%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216151216294%_)))
                                          (_%hd216152216297%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216151216294%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216153216299%_))
                                          (let ((_%e216154216302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216153216299%_))))
                                            (let ((_%tl216156216307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216154216302%_)))
                                                  (_%hd216155216305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216154216302%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216156216307%_))
                                                  (_%__match220736220737%_
                                                   _%e216071216560%_
                                                   _%hd216072216563%_
                                                   _%tl216073216565%_
                                                   _%e216074216568%_
                                                   _%hd216075216571%_
                                                   _%tl216076216573%_
                                                   _%e216077216576%_
                                                   _%hd216078216579%_
                                                   _%tl216079216581%_
                                                   _%e216102216370%_
                                                   _%hd216103216373%_
                                                   _%tl216104216375%_
                                                   _%e216105216378%_
                                                   _%hd216106216381%_
                                                   _%tl216107216383%_
                                                   _%e216108216386%_
                                                   _%hd216109216389%_
                                                   _%tl216110216391%_
                                                   _%e216111216394%_
                                                   _%hd216112216397%_
                                                   _%tl216113216399%_
                                                   _%e216151216294%_
                                                   _%hd216152216297%_
                                                   _%tl216153216299%_
                                                   _%e216154216302%_
                                                   _%hd216155216305%_
                                                   _%tl216156216307%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216076216573%_))
                                  (let ((_%e216166216197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216076216573%_))))
                                    (let ((_%tl216168216202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216166216197%_)))
                                          (_%hd216167216200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216166216197%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216168216202%_))
                                          (let ((_%e216169216205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216168216202%_))))
                                            (let ((_%tl216171216210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216169216205%_)))
                                                  (_%hd216170216208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216169216205%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216171216210%_))
                                                  (_%__kont220537220538%_
                                                   _%hd216170216208%_
                                                   _%hd216167216200%_
                                                   _%hd216075216571%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216113216399%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216076216573%_))
                          (let ((_%e216151216294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216076216573%_))))
                            (let ((_%tl216153216299%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216151216294%_)))
                                  (_%hd216152216297%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216151216294%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216153216299%_))
                                  (let ((_%e216154216302%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216153216299%_))))
                                    (let ((_%tl216156216307%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216154216302%_)))
                                          (_%hd216155216305%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216154216302%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216156216307%_))
                                          (_%__match220736220737%_
                                           _%e216071216560%_
                                           _%hd216072216563%_
                                           _%tl216073216565%_
                                           _%e216074216568%_
                                           _%hd216075216571%_
                                           _%tl216076216573%_
                                           _%e216077216576%_
                                           _%hd216078216579%_
                                           _%tl216079216581%_
                                           _%e216102216370%_
                                           _%hd216103216373%_
                                           _%tl216104216375%_
                                           _%e216105216378%_
                                           _%hd216106216381%_
                                           _%tl216107216383%_
                                           _%e216108216386%_
                                           _%hd216109216389%_
                                           _%tl216110216391%_
                                           _%e216111216394%_
                                           _%hd216112216397%_
                                           _%tl216113216399%_
                                           _%e216151216294%_
                                           _%hd216152216297%_
                                           _%tl216153216299%_
                                           _%e216154216302%_
                                           _%hd216155216305%_
                                           _%tl216156216307%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))))
                          (let () (declare (not safe)) (_%g216066216176%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216076216573%_))
                          (let ((_%e216166216197%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216076216573%_))))
                            (let ((_%tl216168216202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216166216197%_)))
                                  (_%hd216167216200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216166216197%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216168216202%_))
                                  (let ((_%e216169216205%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216168216202%_))))
                                    (let ((_%tl216171216210%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216169216205%_)))
                                          (_%hd216170216208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216169216205%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216171216210%_))
                                          (_%__kont220537220538%_
                                           _%hd216170216208%_
                                           _%hd216167216200%_
                                           _%hd216075216571%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g216066216176%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216076216573%_))
                                                      (let ((_%e216166216197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216076216573%_))))
                (let ((_%tl216168216202%_
                       (let () (declare (not safe)) (##cdr _%e216166216197%_)))
                      (_%hd216167216200%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216166216197%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216168216202%_))
                      (let ((_%e216169216205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216168216202%_))))
                        (let ((_%tl216171216210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216169216205%_)))
                              (_%hd216170216208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216169216205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216171216210%_))
                              (_%__kont220537220538%_
                               _%hd216170216208%_
                               _%hd216167216200%_
                               _%hd216075216571%_)
                              (let ()
                                (declare (not safe))
                                (_%g216066216176%_)))))
                      (let () (declare (not safe)) (_%g216066216176%_)))))
              (let () (declare (not safe)) (_%g216066216176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216076216573%_))
                                                  (let ((_%e216166216197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216076216573%_))))
                                                    (let ((_%tl216168216202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216166216197%_)))
                                                          (_%hd216167216200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216166216197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl216168216202%_))
                                                          (let ((_%e216169216205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216168216202%_))))
                    (let ((_%tl216171216210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216169216205%_)))
                          (_%hd216170216208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216169216205%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl216171216210%_))
                          (_%__kont220537220538%_
                           _%hd216170216208%_
                           _%hd216167216200%_
                           _%hd216075216571%_)
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216076216573%_))
                                          (let ((_%e216166216197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216076216573%_))))
                                            (let ((_%tl216168216202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216166216197%_)))
                                                  (_%hd216167216200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216166216197%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl216168216202%_))
                                                  (let ((_%e216169216205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl216168216202%_))))
                                                    (let ((_%tl216171216210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e216169216205%_)))
                                                          (_%hd216170216208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e216169216205%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl216171216210%_))
                                                          (_%__kont220537220538%_
                                                           _%hd216170216208%_
                                                           _%hd216167216200%_
                                                           _%hd216075216571%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g216066216176%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216076216573%_))
                                      (let ((_%e216166216197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216076216573%_))))
                                        (let ((_%tl216168216202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216166216197%_)))
                                              (_%hd216167216200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216166216197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216168216202%_))
                                              (let ((_%e216169216205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216168216202%_))))
                                                (let ((_%tl216171216210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216169216205%_)))
                                                      (_%hd216170216208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216169216205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216171216210%_))
                                                      (_%__kont220537220538%_
                                                       _%hd216170216208%_
                                                       _%hd216167216200%_
                                                       _%hd216075216571%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216066216176%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216066216176%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216076216573%_))
                                  (let ((_%e216166216197%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216076216573%_))))
                                    (let ((_%tl216168216202%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216166216197%_)))
                                          (_%hd216167216200%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216166216197%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl216168216202%_))
                                          (let ((_%e216169216205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl216168216202%_))))
                                            (let ((_%tl216171216210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e216169216205%_)))
                                                  (_%hd216170216208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e216169216205%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl216171216210%_))
                                                  (_%__kont220537220538%_
                                                   _%hd216170216208%_
                                                   _%hd216167216200%_
                                                   _%hd216075216571%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g216066216176%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216076216573%_))
                          (let ((_%e216166216197%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216076216573%_))))
                            (let ((_%tl216168216202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216166216197%_)))
                                  (_%hd216167216200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216166216197%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl216168216202%_))
                                  (let ((_%e216169216205%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl216168216202%_))))
                                    (let ((_%tl216171216210%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e216169216205%_)))
                                          (_%hd216170216208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e216169216205%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl216171216210%_))
                                          (_%__kont220537220538%_
                                           _%hd216170216208%_
                                           _%hd216167216200%_
                                           _%hd216075216571%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g216066216176%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))))
                          (let () (declare (not safe)) (_%g216066216176%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl216076216573%_))
                  (let ((_%e216166216197%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl216076216573%_))))
                    (let ((_%tl216168216202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e216166216197%_)))
                          (_%hd216167216200%_
                           (let ()
                             (declare (not safe))
                             (##car _%e216166216197%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl216168216202%_))
                          (let ((_%e216169216205%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl216168216202%_))))
                            (let ((_%tl216171216210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e216169216205%_)))
                                  (_%hd216170216208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e216169216205%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl216171216210%_))
                                  (_%__kont220537220538%_
                                   _%hd216170216208%_
                                   _%hd216167216200%_
                                   _%hd216075216571%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g216066216176%_)))))
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216076216573%_))
                                                      (let ((_%e216166216197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216076216573%_))))
                (let ((_%tl216168216202%_
                       (let () (declare (not safe)) (##cdr _%e216166216197%_)))
                      (_%hd216167216200%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216166216197%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl216168216202%_))
                      (let ((_%e216169216205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl216168216202%_))))
                        (let ((_%tl216171216210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e216169216205%_)))
                              (_%hd216170216208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e216169216205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl216171216210%_))
                              (_%__kont220537220538%_
                               _%hd216170216208%_
                               _%hd216167216200%_
                               _%hd216075216571%_)
                              (let ()
                                (declare (not safe))
                                (_%g216066216176%_)))))
                      (let () (declare (not safe)) (_%g216066216176%_)))))
              (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216076216573%_))
                                              (let ((_%e216166216197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216076216573%_))))
                                                (let ((_%tl216168216202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216166216197%_)))
                                                      (_%hd216167216200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216166216197%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl216168216202%_))
                                                      (let ((_%e216169216205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl216168216202%_))))
                (let ((_%tl216171216210%_
                       (let () (declare (not safe)) (##cdr _%e216169216205%_)))
                      (_%hd216170216208%_
                       (let ()
                         (declare (not safe))
                         (##car _%e216169216205%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl216171216210%_))
                      (_%__kont220537220538%_
                       _%hd216170216208%_
                       _%hd216167216200%_
                       _%hd216075216571%_)
                      (let () (declare (not safe)) (_%g216066216176%_)))))
              (let () (declare (not safe)) (_%g216066216176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g216066216176%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl216076216573%_))
                                      (let ((_%e216166216197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl216076216573%_))))
                                        (let ((_%tl216168216202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e216166216197%_)))
                                              (_%hd216167216200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e216166216197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl216168216202%_))
                                              (let ((_%e216169216205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl216168216202%_))))
                                                (let ((_%tl216171216210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e216169216205%_)))
                                                      (_%hd216170216208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e216169216205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl216171216210%_))
                                                      (_%__kont220537220538%_
                                                       _%hd216170216208%_
                                                       _%hd216167216200%_
                                                       _%hd216075216571%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g216066216176%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g216066216176%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g216066216176%_))))))
                          (let () (declare (not safe)) (_%g216066216176%_)))))
                  (let () (declare (not safe)) (_%g216066216176%_))))))))))
