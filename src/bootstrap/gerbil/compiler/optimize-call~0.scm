(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712155168)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp190060 (list gxc#::basic-xform::t))
            (__tmp190059 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp190060
         '()
         __tmp190059
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189609%_
        (apply make-instance gxc#::optimize-call::t _%$args189609%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp190061
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
        (__make-promise __tmp190061)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189601%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189604%_
                (let ((__obj190051
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj190051))
               (__tmp190062
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189604%_ _%stx189601%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190062
           gxc#current-compile-method
           _%self189604%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp190064 (list gxc#::void::t))
            (__tmp190063 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp190064
         '()
         __tmp190063
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189598%_
        (apply make-instance gxc#::check-return-type::t _%$args189598%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp190065
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
        (__make-promise __tmp190065)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189590%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189593%_
                (let ((__obj190053
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj190053))
               (__tmp190066
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189593%_ _%stx189590%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp190066
           gxc#current-compile-method
           _%self189593%_))))
    (define gxc#optimize-call%
      (lambda (_%self189200%_ _%stx189201%_)
        (let* ((_%__stx189664189665%_ _%stx189201%_)
               (_%g189204189250%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189664189665%_)))))
          (let ((_%__kont189666189667%_
                 (lambda (_%L189393%_ _%L189394%_)
                   (let* ((_%rator-id189414%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L189394%_)))
                          (_%rator-type189416%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id189414%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type189416%_))
                             (eq? (##structure-ref
                                   _%rator-type189416%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self189200%_ _%stx189201%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type189416%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp190067
                                      (##structure-ref
                                       _%rator-type189416%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id189414%_
                                  '" => "
                                  _%rator-type189416%_
                                  '" "
                                  __tmp190067))
                               (let* ((_%optimized189431%_
                                       (let ((__method190054
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type189416%_
                                                 'optimize-call))))
                                         (if __method190054
                                             (__method190054
                                              _%rator-type189416%_
                                              _%self189200%_
                                              _%stx189201%_
                                              (let ((__tmp190068
                                                     (lambda (_%g189423189426%_
                                                              _%g189424189428%_)
                                                       (cons _%g189423189426%_
                                                             _%g189424189428%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp190068
                                                 '()
                                                 _%L189393%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type189416%_
                                                      'optimize-call)))))
                                      (_%__stx189612189613%_
                                       _%optimized189431%_)
                                      (_%g189434189463%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189612189613%_)))))
                                 (let ((_%__kont189614189615%_
                                        (lambda (_%L189531%_ _%L189532%_)
                                          (let ((_%optimized-rator-id189559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189532%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type189416%_))
                                                         (eq? _%optimized-rator-id189559%_
                                                              _%rator-id189414%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189559%_
                                                              gxc#checked-primitives)))
                                                _%optimized189431%_
                                                (let ((__tmp190069
                                                       (let ((__tmp190070
                                                              (let ((__tmp190073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189532%_ '())))
                            (__tmp190071
                             (let ((__tmp190072
                                    (lambda (_%g189563189566%_
                                             _%g189564189568%_)
                                      (cons _%g189563189566%_
                                            _%g189564189568%_))))
                               (declare (not safe))
                               (__foldr1 __tmp190072 '() _%L189531%_))))
                        (declare (not safe))
                        (cons __tmp190073 __tmp190071))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp190070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp190069
                                                   _%stx189201%_))))))
                                       (_%__kont189618189619%_
                                        (lambda () _%optimized189431%_)))
                                   (let ((_%__match189661189662%_
                                          (lambda (_%e189440189475%_
                                                   _%hd189439189478%_
                                                   _%tl189438189480%_
                                                   _%e189443189483%_
                                                   _%hd189442189486%_
                                                   _%tl189441189488%_
                                                   _%e189446189491%_
                                                   _%hd189445189494%_
                                                   _%tl189444189496%_
                                                   _%e189449189499%_
                                                   _%hd189448189502%_
                                                   _%tl189447189504%_
                                                   _%__splice189616189617%_
                                                   _%target189450189507%_
                                                   _%tl189452189509%_)
                                            (letrec ((_%loop189453189512%_
                                                      (lambda (_%hd189451189515%_
                                                               _%arg189457189517%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189451189515%_))
                                                            (let ((_%e189454189520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189451189515%_))))
                      (let ((_%lp-tl189456189525%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189454189520%_)))
                            (_%lp-hd189455189523%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189454189520%_))))
                        (let ((__tmp190074
                               (cons _%lp-hd189455189523%_
                                     _%arg189457189517%_)))
                          (declare (not safe))
                          (_%loop189453189512%_
                           _%lp-tl189456189525%_
                           __tmp190074))))
                    (let ((_%arg189458189528%_ (reverse _%arg189457189517%_)))
                      (_%__kont189614189615%_
                       _%arg189458189528%_
                       _%hd189448189502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop189453189512%_
                                                 _%target189450189507%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189612189613%_))
                                         (let ((_%e189440189475%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189612189613%_))))
                                           (let ((_%tl189438189480%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189440189475%_)))
                                                 (_%hd189439189478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189440189475%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd189439189478%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd189439189478%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl189438189480%_))
                                                         (let ((_%e189443189483%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl189438189480%_))))
                   (let ((_%tl189441189488%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e189443189483%_)))
                         (_%hd189442189486%_
                          (let ()
                            (declare (not safe))
                            (##car _%e189443189483%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd189442189486%_))
                         (let ((_%e189446189491%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd189442189486%_))))
                           (let ((_%tl189444189496%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189446189491%_)))
                                 (_%hd189445189494%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189446189491%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189445189494%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189445189494%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189444189496%_))
                                         (let ((_%e189449189499%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189444189496%_))))
                                           (let ((_%tl189447189504%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189449189499%_)))
                                                 (_%hd189448189502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189449189499%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189447189504%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl189441189488%_))
                                                     (let ((_%__splice189616189617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl189441189488%_
                                                               '0))))
                                                       (let ((_%tl189452189509%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189616189617%_ '1)))
                     (_%target189450189507%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189616189617%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189452189509%_))
                     (_%__match189661189662%_
                      _%e189440189475%_
                      _%hd189439189478%_
                      _%tl189438189480%_
                      _%e189443189483%_
                      _%hd189442189486%_
                      _%tl189441189488%_
                      _%e189446189491%_
                      _%hd189445189494%_
                      _%tl189444189496%_
                      _%e189449189499%_
                      _%hd189448189502%_
                      _%tl189447189504%_
                      _%__splice189616189617%_
                      _%target189450189507%_
                      _%tl189452189509%_)
                     (_%__kont189618189619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189618189619%_))
                                                 (_%__kont189618189619%_))))
                                         (_%__kont189618189619%_))
                                     (_%__kont189618189619%_))
                                 (_%__kont189618189619%_))))
                         (_%__kont189618189619%_))))
                 (_%__kont189618189619%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189618189619%_))
                                                 (_%__kont189618189619%_))))
                                         (_%__kont189618189619%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type189416%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type189416%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp190075
                                        (let ((__tmp190076
                                               (let ((__tmp190079
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L189394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190077
                                                      (map (lambda (_%g189574189576%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self189200%_ _%g189574189576%_)))
                   (let ((__tmp190078
                          (lambda (_%g189578189581%_ _%g189579189583%_)
                            (cons _%g189578189581%_ _%g189579189583%_))))
                     (declare (not safe))
                     (__foldr1 __tmp190078 '() _%L189393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp190079
                                                       __tmp190077))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp190076))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190075
                                    _%stx189201%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx189201%_
                                    _%rator-type189416%_))))))))
                (_%__kont189670189671%_
                 (lambda (_%L189295%_ _%L189296%_)
                   (let ((_%rator-type189313%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L189296%_))))
                     (if (and _%rator-type189313%_
                              (eq? (##structure-ref
                                    _%rator-type189313%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp190080
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type189313%_))))
                                (declare (not safe))
                                (not __tmp190080)))
                         (let ((__tmp190081
                                (let ((__tmp190082
                                       (let ((__tmp190085
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self189200%_
                                                 _%L189296%_)))
                                             (__tmp190083
                                              (map (lambda (_%g189315189317%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self189200%_
                                                        _%g189315189317%_)))
                                                   (let ((__tmp190084
                                                          (lambda (_%g189319189322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g189320189324%_)
                    (cons _%g189319189322%_ _%g189320189324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp190084
                                                      '()
                                                      _%L189295%_)))))
                                         (declare (not safe))
                                         (cons __tmp190085 __tmp190083))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp190082))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp190081 _%stx189201%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type189313%_))
                                 (let ((__tmp190086
                                        (##structure-ref
                                         _%rator-type189313%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp190086 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self189200%_ _%stx189201%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx189201%_
                                _%rator-type189313%_))))))))
            (let* ((_%__match189731189732%_
                    (lambda (_%e189233189255%_
                             _%hd189232189258%_
                             _%tl189231189260%_
                             _%e189236189263%_
                             _%hd189235189266%_
                             _%tl189234189268%_
                             _%__splice189672189673%_
                             _%target189237189271%_
                             _%tl189239189273%_)
                      (letrec ((_%loop189240189276%_
                                (lambda (_%hd189238189279%_
                                         _%rand189244189281%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189238189279%_))
                                      (let ((_%e189241189284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189238189279%_))))
                                        (let ((_%lp-tl189243189289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189241189284%_)))
                                              (_%lp-hd189242189287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189241189284%_))))
                                          (let ((__tmp190087
                                                 (cons _%lp-hd189242189287%_
                                                       _%rand189244189281%_)))
                                            (declare (not safe))
                                            (_%loop189240189276%_
                                             _%lp-tl189243189289%_
                                             __tmp190087))))
                                      (let ((_%rand189245189292%_
                                             (reverse _%rand189244189281%_)))
                                        (_%__kont189670189671%_
                                         _%rand189245189292%_
                                         _%hd189235189266%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop189240189276%_ _%target189237189271%_ '())))))
                   (_%__match189711189712%_
                    (lambda (_%e189210189337%_
                             _%hd189209189340%_
                             _%tl189208189342%_
                             _%e189213189345%_
                             _%hd189212189348%_
                             _%tl189211189350%_
                             _%e189216189353%_
                             _%hd189215189356%_
                             _%tl189214189358%_
                             _%e189219189361%_
                             _%hd189218189364%_
                             _%tl189217189366%_
                             _%__splice189668189669%_
                             _%target189220189369%_
                             _%tl189222189371%_)
                      (letrec ((_%loop189223189374%_
                                (lambda (_%hd189221189377%_
                                         _%rand189227189379%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd189221189377%_))
                                      (let ((_%e189224189382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd189221189377%_))))
                                        (let ((_%lp-tl189226189387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189224189382%_)))
                                              (_%lp-hd189225189385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189224189382%_))))
                                          (let ((__tmp190088
                                                 (cons _%lp-hd189225189385%_
                                                       _%rand189227189379%_)))
                                            (declare (not safe))
                                            (_%loop189223189374%_
                                             _%lp-tl189226189387%_
                                             __tmp190088))))
                                      (let ((_%rand189228189390%_
                                             (reverse _%rand189227189379%_)))
                                        (_%__kont189666189667%_
                                         _%rand189228189390%_
                                         _%hd189218189364%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop189223189374%_
                           _%target189220189369%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189664189665%_))
                  (let ((_%e189210189337%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189664189665%_))))
                    (let ((_%tl189208189342%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189210189337%_)))
                          (_%hd189209189340%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189210189337%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189208189342%_))
                          (let ((_%e189213189345%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189208189342%_))))
                            (let ((_%tl189211189350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189213189345%_)))
                                  (_%hd189212189348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189213189345%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd189212189348%_))
                                  (let ((_%e189216189353%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd189212189348%_))))
                                    (let ((_%tl189214189358%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189216189353%_)))
                                          (_%hd189215189356%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189216189353%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd189215189356%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd189215189356%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl189214189358%_))
                                                  (let ((_%e189219189361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl189214189358%_))))
                                                    (let ((_%tl189217189366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189219189361%_)))
                                                          (_%hd189218189364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189219189361%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189217189366%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl189211189350%_))
                      (let ((_%__splice189668189669%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189211189350%_
                                '0))))
                        (let ((_%tl189222189371%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189668189669%_ '1)))
                              (_%target189220189369%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189668189669%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189222189371%_))
                              (_%__match189711189712%_
                               _%e189210189337%_
                               _%hd189209189340%_
                               _%tl189208189342%_
                               _%e189213189345%_
                               _%hd189212189348%_
                               _%tl189211189350%_
                               _%e189216189353%_
                               _%hd189215189356%_
                               _%tl189214189358%_
                               _%e189219189361%_
                               _%hd189218189364%_
                               _%tl189217189366%_
                               _%__splice189668189669%_
                               _%target189220189369%_
                               _%tl189222189371%_)
                              (let ()
                                (declare (not safe))
                                (_%g189204189250%_)))))
                      (let () (declare (not safe)) (_%g189204189250%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl189211189350%_))
                      (let ((_%__splice189672189673%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl189211189350%_
                                '0))))
                        (let ((_%tl189239189273%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189672189673%_ '1)))
                              (_%target189237189271%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189672189673%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl189239189273%_))
                              (_%__match189731189732%_
                               _%e189210189337%_
                               _%hd189209189340%_
                               _%tl189208189342%_
                               _%e189213189345%_
                               _%hd189212189348%_
                               _%tl189211189350%_
                               _%__splice189672189673%_
                               _%target189237189271%_
                               _%tl189239189273%_)
                              (let ()
                                (declare (not safe))
                                (_%g189204189250%_)))))
                      (let () (declare (not safe)) (_%g189204189250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl189211189350%_))
                                                      (let ((_%__splice189672189673%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl189211189350%_ '0))))
                (let ((_%tl189239189273%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189672189673%_ '1)))
                      (_%target189237189271%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189672189673%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl189239189273%_))
                      (_%__match189731189732%_
                       _%e189210189337%_
                       _%hd189209189340%_
                       _%tl189208189342%_
                       _%e189213189345%_
                       _%hd189212189348%_
                       _%tl189211189350%_
                       _%__splice189672189673%_
                       _%target189237189271%_
                       _%tl189239189273%_)
                      (let () (declare (not safe)) (_%g189204189250%_)))))
              (let () (declare (not safe)) (_%g189204189250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl189211189350%_))
                                                  (let ((_%__splice189672189673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl189211189350%_
                                                            '0))))
                                                    (let ((_%tl189239189273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189672189673%_
                                                              '1)))
                                                          (_%target189237189271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189672189673%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl189239189273%_))
                                                          (_%__match189731189732%_
                                                           _%e189210189337%_
                                                           _%hd189209189340%_
                                                           _%tl189208189342%_
                                                           _%e189213189345%_
                                                           _%hd189212189348%_
                                                           _%tl189211189350%_
                                                           _%__splice189672189673%_
                                                           _%target189237189271%_
                                                           _%tl189239189273%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g189204189250%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g189204189250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl189211189350%_))
                                              (let ((_%__splice189672189673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl189211189350%_
                                                        '0))))
                                                (let ((_%tl189239189273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189672189673%_
                                                          '1)))
                                                      (_%target189237189271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189672189673%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl189239189273%_))
                                                      (_%__match189731189732%_
                                                       _%e189210189337%_
                                                       _%hd189209189340%_
                                                       _%tl189208189342%_
                                                       _%e189213189345%_
                                                       _%hd189212189348%_
                                                       _%tl189211189350%_
                                                       _%__splice189672189673%_
                                                       _%target189237189271%_
                                                       _%tl189239189273%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g189204189250%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g189204189250%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189211189350%_))
                                      (let ((_%__splice189672189673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189211189350%_
                                                '0))))
                                        (let ((_%tl189239189273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189672189673%_
                                                  '1)))
                                              (_%target189237189271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189672189673%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189239189273%_))
                                              (_%__match189731189732%_
                                               _%e189210189337%_
                                               _%hd189209189340%_
                                               _%tl189208189342%_
                                               _%e189213189345%_
                                               _%hd189212189348%_
                                               _%tl189211189350%_
                                               _%__splice189672189673%_
                                               _%target189237189271%_
                                               _%tl189239189273%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g189204189250%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g189204189250%_))))))
                          (let () (declare (not safe)) (_%g189204189250%_)))))
                  (let () (declare (not safe)) (_%g189204189250%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self189162%_ _%ctx189163%_ _%stx189164%_ _%args189165%_)
        (let ((_%self189168%_ _%self189162%_))
          (if (let ((__method190055
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self189168%_ 'check-arguments))))
                (if __method190055
                    (__method190055
                     _%self189168%_
                     _%ctx189163%_
                     _%stx189164%_
                     _%args189165%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self189168%_
                             'check-arguments))))
              (let* ((_%signature189178%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189168%_ '2 '#f '#f)))
                     (_%signature189180%_ _%signature189178%_)
                     (_%$e189190%_
                      (if _%signature189180%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature189180%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e189190%_
                    ((lambda (_%unchecked189193%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked189193%_))
                           (let ((__tmp190089
                                  (let ((__tmp190090
                                         (let ((__tmp190092
                                                (cons '%#ref
                                                      (cons _%unchecked189193%_
                                                            '())))
                                               (__tmp190091
                                                (map (lambda (_%g189194189196%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx189163%_
                                                          _%g189194189196%_)))
                                                     _%args189165%_)))
                                           (declare (not safe))
                                           (cons __tmp190092 __tmp190091))))
                                    (declare (not safe))
                                    (cons '%#call __tmp190090))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp190089 _%stx189164%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx189163%_ _%stx189164%_))))
                     _%$e189190%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx189163%_ _%stx189164%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx189163%_ _%stx189164%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188913%_ _%ctx188914%_ _%stx188915%_ _%args188916%_)
        (let ()
          (let* ((_%self188919%_ _%self188913%_)
                 (_%signature188928188930%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self188919%_ '2 '#f '#f))))
            (if _%signature188928188930%_
                (let* ((_%signature188933%_ _%signature188928188930%_)
                       (_%argument-types188934188936%_
                        (##direct-structure-ref
                         _%signature188933%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types188934188936%_
                      (let* ((_%argument-types188939%_
                              _%argument-types188934188936%_)
                             (_%argument-types188944%_
                              (let ((__tmp190093
                                     (lambda (_%t188942%_)
                                       (if _%t188942%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188915%_
                                              _%t188942%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp190093
                                 _%argument-types188939%_))))
                        (let _%loop188946%_ ((_%rest-args188948%_
                                              _%args188916%_)
                                             (_%rest-types188949%_
                                              _%argument-types188944%_)
                                             (_%result188950%_ '#t))
                          (let* ((_%rest-args188951188959%_
                                  _%rest-args188948%_)
                                 (_%else188953188967%_
                                  (lambda () _%result188950%_))
                                 (_%K188955189028%_
                                  (lambda (_%rest-args188970%_ _%arg188971%_)
                                    (let* ((_%rest-types188972188983%_
                                            _%rest-types188949%_)
                                           (_%E188976188987%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types188972188983%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K188979189016%_
                                             (lambda (_%rest-types189013%_
                                                      _%type189014%_)
                                               (let ((__tmp190094
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx188915%_
                                                             _%arg188971%_
                                                             _%type189014%_))
                                                          _%result188950%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop188946%_
                                                  _%rest-args188970%_
                                                  _%rest-types189013%_
                                                  __tmp190094))))
                                            (_%K188978189007%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx188915%_
                                                  _%argument-types188944%_))))
                                            (_%K188977188997%_
                                             (lambda (_%tail-type188991%_)
                                               (if (let ((__tmp190095
                                                          (lambda (_%g188992188994%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx188915%_
                                                               _%g188992188994%_
                                                               _%tail-type188991%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp190095
                                                      _%rest-args188970%_))
                                                   _%result188950%_
                                                   '#f))))
                                        (let ((_%try-match188974189010%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types188972188983%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K188978189007%_))
                                                     (let ((_%tail-type189000%_
                                                            _%rest-types188972188983%_))
                                                       (declare (not safe))
                                                       (_%K188977188997%_
                                                        _%tail-type189000%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types188972188983%_))
                                              (let ((_%tl188981189021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types188972188983%_)))
                                                    (_%hd188980189019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types188972188983%_))))
                                                (let ((_%type189024%_
                                                       _%hd188980189019%_)
                                                      (_%rest-types189026%_
                                                       _%tl188981189021%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K188979189016%_
                                                     _%rest-types189026%_
                                                     _%type189024%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match188974189010%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args188951188959%_))
                                (let ((_%hd188956189031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args188951188959%_)))
                                      (_%tl188957189033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args188951188959%_))))
                                  (let* ((_%arg189036%_ _%hd188956189031%_)
                                         (_%rest-args189038%_
                                          _%tl188957189033%_))
                                    (declare (not safe))
                                    (_%K188955189028%_
                                     _%rest-args189038%_
                                     _%arg189036%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else188953188967%_))))))
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
      (lambda (_%self188724%_ _%ctx188725%_ _%stx188726%_ _%args188727%_)
        (let ((_%self188730%_ _%self188724%_))
          (let* ((_%g188740188750%_
                  (lambda (_%g188741188747%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188741188747%_))))
                 (_%g188739188788%_
                  (lambda (_%g188741188753%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188741188753%_))
                        (let ((_%e188745188755%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188741188753%_))))
                          (let ((_%hd188744188758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188745188755%_)))
                                (_%tl188743188760%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188745188755%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188743188760%_))
                                ((lambda (_%L188763%_)
                                   (let* ((_%klass188775%_
                                           (let ((__tmp190096
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188730%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188726%_
                                              __tmp190096)))
                                          (_%object188777%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188725%_
                                              _%L188763%_)))
                                          (_%instance?188782%_
                                           (let ((_%$e188779%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object188777%_
                                                     _%klass188775%_))))
                                             (if _%$e188779%_
                                                 _%$e188779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L188763%_
                                                    _%klass188775%_))))))
                                     (if _%instance?188782%_
                                         (let ((__tmp190097
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object188777%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L188763%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object188777%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190097
                                            _%stx188726%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx188725%_
                                            _%stx188726%_)))))
                                 _%hd188744188758%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188740188750%_ _%g188741188753%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188740188750%_ _%g188741188753%_))))))
            (declare (not safe))
            (_%g188739188788%_ _%args188727%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188520%_ _%ctx188521%_ _%stx188522%_ _%args188523%_)
        (let ((_%self188526%_ _%self188520%_))
          (let* ((_%g188536188546%_
                  (lambda (_%g188537188543%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188537188543%_))))
                 (_%g188535188599%_
                  (lambda (_%g188537188549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188537188549%_))
                        (let ((_%e188541188551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188537188549%_))))
                          (let ((_%hd188540188554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188541188551%_)))
                                (_%tl188539188556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188541188551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188539188556%_))
                                ((lambda (_%L188559%_)
                                   (let* ((_%klass188571%_
                                           (let ((__tmp190098
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188526%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188522%_
                                              __tmp190098)))
                                          (_%object188573%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188521%_
                                              _%L188559%_)))
                                          (_%instance?188578%_
                                           (let ((_%$e188575%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object188573%_
                                                     _%klass188571%_))))
                                             (if _%$e188575%_
                                                 _%$e188575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L188559%_
                                                    _%klass188571%_)))))
                                          (_%klass188581%_ _%klass188571%_))
                                     (if _%instance?188578%_
                                         (let ((__tmp190099
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object188573%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L188559%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object188573%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190099
                                            _%stx188522%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188581%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp190100
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass188581%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object188573%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190100
                                                _%stx188522%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188581%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp190101
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass188581%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object188573%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190101
                                                    _%stx188522%_))
                                                 (let ((__tmp190102
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self188526%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object188573%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190102
                                                    _%stx188522%_)))))))
                                 _%hd188540188554%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188536188546%_ _%g188537188549%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188536188546%_ _%g188537188549%_))))))
            (declare (not safe))
            (_%g188535188599%_ _%args188523%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx188183%_)
        (let* ((_%__stx189741189742%_ _%stx188183%_)
               (_%g188188188229%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189741189742%_)))))
          (let ((_%__kont189743189744%_ (lambda () '#t))
                (_%__kont189745189746%_ (lambda () '#t))
                (_%__kont189747189748%_
                 (lambda (_%L188297%_ _%L188298%_)
                   (let ((_%rator-type188319188321%_
                          (let ((__tmp190103
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L188298%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp190103))))
                     (if _%rator-type188319188321%_
                         (let* ((_%rator-type188324%_
                                 _%rator-type188319188321%_)
                                (_%rator-signature188325188327%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type188324%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type188324%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature188325188327%_
                               (let* ((_%rator-signature188330%_
                                       _%rator-signature188325188327%_)
                                      (_%rator-effect188331188333%_
                                       (if _%rator-signature188330%_
                                           (##direct-structure-ref
                                            _%rator-signature188330%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect188331188333%_
                                     (let ((_%rator-effect188336%_
                                            _%rator-effect188331188333%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect188336%_)
                                               (equal? '(alloc)
                                                       _%rator-effect188336%_))
                                           (let ((__tmp190104
                                                  (let ((__tmp190105
                                                         (lambda (_%g188341188344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g188342188346%_)
                   (cons _%g188341188344%_ _%g188342188346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp190105
                                                     '()
                                                     _%L188297%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp190104))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189751189752%_ (lambda () '#f)))
            (let ((_%__match189830189831%_
                   (lambda (_%e188206188241%_
                            _%hd188205188244%_
                            _%tl188204188246%_
                            _%e188209188249%_
                            _%hd188208188252%_
                            _%tl188207188254%_
                            _%e188212188257%_
                            _%hd188211188260%_
                            _%tl188210188262%_
                            _%e188215188265%_
                            _%hd188214188268%_
                            _%tl188213188270%_
                            _%__splice189749189750%_
                            _%target188216188273%_
                            _%tl188218188275%_)
                     (letrec ((_%loop188219188278%_
                               (lambda (_%hd188217188281%_
                                        _%rand188223188283%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd188217188281%_))
                                     (let ((_%e188220188286%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd188217188281%_))))
                                       (let ((_%lp-tl188222188291%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e188220188286%_)))
                                             (_%lp-hd188221188289%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e188220188286%_))))
                                         (let ((__tmp190106
                                                (cons _%lp-hd188221188289%_
                                                      _%rand188223188283%_)))
                                           (declare (not safe))
                                           (_%loop188219188278%_
                                            _%lp-tl188222188291%_
                                            __tmp190106))))
                                     (let ((_%rand188224188294%_
                                            (reverse _%rand188223188283%_)))
                                       (_%__kont189747189748%_
                                        _%rand188224188294%_
                                        _%hd188214188268%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop188219188278%_ _%target188216188273%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189741189742%_))
                  (let ((_%e188192188377%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189741189742%_))))
                    (let ((_%tl188190188382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188192188377%_)))
                          (_%hd188191188380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188192188377%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd188191188380%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd188191188380%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl188190188382%_))
                                  (let ((_%e188195188385%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl188190188382%_))))
                                    (let ((_%tl188193188390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188195188385%_)))
                                          (_%hd188194188388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188195188385%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl188193188390%_))
                                          (_%__kont189743189744%_)
                                          (_%__kont189751189752%_))))
                                  (_%__kont189751189752%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd188191188380%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188190188382%_))
                                      (let ((_%e188201188362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188190188382%_))))
                                        (let ((_%tl188199188367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188201188362%_)))
                                              (_%hd188200188365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188201188362%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188199188367%_))
                                              (_%__kont189745189746%_)
                                              (_%__kont189751189752%_))))
                                      (_%__kont189751189752%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd188191188380%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl188190188382%_))
                                          (let ((_%e188209188249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl188190188382%_))))
                                            (let ((_%tl188207188254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188209188249%_)))
                                                  (_%hd188208188252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188209188249%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188208188252%_))
                                                  (let ((_%e188212188257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188208188252%_))))
                                                    (let ((_%tl188210188262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188212188257%_)))
                                                          (_%hd188211188260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188212188257%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188211188260%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd188211188260%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188210188262%_))
                          (let ((_%e188215188265%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188210188262%_))))
                            (let ((_%tl188213188270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188215188265%_)))
                                  (_%hd188214188268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188215188265%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188213188270%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188207188254%_))
                                      (let ((_%__splice189749189750%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188207188254%_
                                                '0))))
                                        (let ((_%tl188218188275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189749189750%_
                                                  '1)))
                                              (_%target188216188273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189749189750%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188218188275%_))
                                              (_%__match189830189831%_
                                               _%e188192188377%_
                                               _%hd188191188380%_
                                               _%tl188190188382%_
                                               _%e188209188249%_
                                               _%hd188208188252%_
                                               _%tl188207188254%_
                                               _%e188212188257%_
                                               _%hd188211188260%_
                                               _%tl188210188262%_
                                               _%e188215188265%_
                                               _%hd188214188268%_
                                               _%tl188213188270%_
                                               _%__splice189749189750%_
                                               _%target188216188273%_
                                               _%tl188218188275%_)
                                              (_%__kont189751189752%_))))
                                      (_%__kont189751189752%_))
                                  (_%__kont189751189752%_))))
                          (_%__kont189751189752%_))
                      (_%__kont189751189752%_))
                  (_%__kont189751189752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189751189752%_))))
                                          (_%__kont189751189752%_))
                                      (_%__kont189751189752%_))))
                          (_%__kont189751189752%_))))
                  (_%__kont189751189752%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx188178%_ _%klass188179%_)
        (let ((_%expr-type188181%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx188178%_))))
          (if _%expr-type188181%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type188181%_ _%klass188179%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx188156%_ _%expr188157%_ _%type188158%_)
        (if (let () (declare (not safe)) (not _%type188158%_))
            (let () '#f)
            (let ((_%$e188161%_
                   (eq? (##structure-ref _%type188158%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e188161%_
                  _%$e188161%_
                  (let ((_%expr-type188165%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr188157%_))))
                    (if (let () (declare (not safe)) (not _%expr-type188165%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type188165%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e188169%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type188165%_
                                      'gxc#!abort::t))))
                              (if _%$e188169%_
                                  _%$e188169%_
                                  (let ((_%$e188172%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type188165%_
                                            _%type188158%_))))
                                    (if _%$e188172%_
                                        _%$e188172%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type188158%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type188158%_
                                                   _%expr-type188165%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx188156%_
                                                   _%expr188157%_
                                                   _%expr-type188165%_
                                                   _%type188158%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187970%_ _%ctx187971%_ _%stx187972%_ _%args187973%_)
        (let ((_%self187976%_ _%self187970%_))
          (let* ((_%klass187986%_
                  (let ((__tmp190107
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187976%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx187972%_ __tmp190107)))
                 (_%fields187988%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass187986%_
                             '5
                             '#f
                             '#f))))
                 (_%args187994%_
                  (map (lambda (_%g187989187991%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx187971%_ _%g187989187991%_)))
                       _%args187973%_))
                 (_%inline-make-object187996%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187976%_
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
                             _%self187976%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields187988%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass187999%_ _%klass187986%_)
                   (_%$e188013%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass187999%_ '6 '#f '#f))))
              (if _%$e188013%_
                  ((lambda (_%ctor188016%_)
                     (let ((_%$obj188018%_
                            (let ((__tmp190108
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp190108)))
                           (_%ctor-impl188019%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass187999%_
                               _%ctor188016%_))))
                       (let ((__tmp190109
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj188018%_ '())
                                                      (cons _%inline-make-object187996%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl188019%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl188019%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj188018%_ '()))
                                          _%args187994%_)))
                        (let ((_%$ctor188021%_
                               (let ((__tmp190110
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp190110))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor188021%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187976%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188018%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor188016%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor188021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor188021%_ '()))
                                  (cons (cons '%#ref (cons _%$obj188018%_ '()))
                                        _%args187994%_)))
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
                                 _%self187976%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor188016%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj188018%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190109 _%stx187972%_))))
                   _%$e188013%_)
                  (let ((_%$e188023%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187999%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e188023%_
                        ((lambda (_%metaclass188026%_)
                           (let* ((_%$obj188028%_
                                   (let ((__tmp190111
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190111)))
                                  (_%metakons188030%_
                                   (let ((__tmp190112
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx187972%_
                                             _%metaclass188026%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp190112
                                      'instance-init!)))
                                  (__tmp190113
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj188028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object187996%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons188030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons188030%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187976%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj188028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args187994%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187976%_
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
                         (cons _%$obj188028%_ '()))
                   _%args187994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj188028%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp190113
                              _%stx187972%_)))
                         _%$e188023%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass187999%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp190114
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args187994%_))))
                                    (declare (not safe))
                                    (##fx= __tmp190114 _%fields187988%_))
                                  (let ((__tmp190115
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187976%_
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
                                                    _%self187976%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args187994%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp190115
                                     _%stx187972%_))
                                  (let ((__tmp190117
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187976%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp190116
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass187999%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx187972%_
                                     __tmp190117
                                     __tmp190116))))
                            (let ((_%$obj188035%_
                                   (let ((__tmp190118
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp190118))))
                              (let _%lp188037%_ ((_%rest188039%_
                                                  _%args187994%_)
                                                 (_%initializers188040%_ '()))
                                (let* ((_%__stx189833189834%_ _%rest188039%_)
                                       (_%g188044188065%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx189833189834%_)))))
                                  (let ((_%__kont189835189836%_
                                         (lambda (_%L188119%_
                                                  _%L188120%_
                                                  _%L188121%_)
                                           (let* ((_%slot188148%_
                                                   (let ((__tmp190119
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L188121%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp190119)))
                                                  (_%off188150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass187999%_
                                                      _%slot188148%_))))
                                             (if _%off188150%_
                                                 (let ((__tmp190120
                                                        (cons (cons _%off188150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L188120%_)
                      _%initializers188040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp188037%_
                                                    _%L188119%_
                                                    __tmp190120))
                                                 (let ((__tmp190121
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187976%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx187972%_
                                                    __tmp190121
                                                    _%slot188148%_))))))
                                        (_%__kont189837189838%_
                                         (lambda ()
                                           (let ((__tmp190122
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj188035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object187996%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp190125
                                         (cons (cons '%#ref
                                                     (cons _%$obj188035%_ '()))
                                               '()))
                                        (__tmp190123
                                         (let ((__tmp190124
                                                (lambda (_%i188079%_
                                                         _%r188080%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187976%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i188079%_) '()))
                                  (cons (cons '%#ref (cons _%$obj188035%_ '()))
                                        (cons (cdr _%i188079%_) '())))))
                _%r188080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp190124
                                            '()
                                            _%initializers188040%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp190125 __tmp190123)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190122
                                              _%stx187972%_))))
                                        (_%__kont189839189840%_
                                         (lambda ()
                                           (let ((__tmp190126
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj188035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object187996%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj188035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args187994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj188035%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp190126
                                              _%stx187972%_)))))
                                    (let* ((_%g188042188082%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx189833189834%_))
                                                  (_%__kont189837189838%_)
                                                  (_%__kont189839189840%_))))
                                           (_%__match189870189871%_
                                            (lambda (_%e188051188087%_
                                                     _%hd188050188090%_
                                                     _%tl188049188092%_
                                                     _%e188054188095%_
                                                     _%hd188053188098%_
                                                     _%tl188052188100%_
                                                     _%e188057188103%_
                                                     _%hd188056188106%_
                                                     _%tl188055188108%_
                                                     _%e188060188111%_
                                                     _%hd188059188114%_
                                                     _%tl188058188116%_)
                                              (let ((_%L188119%_
                                                     _%tl188058188116%_)
                                                    (_%L188120%_
                                                     _%hd188059188114%_)
                                                    (_%L188121%_
                                                     _%hd188056188106%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L188121%_))
                                                    (_%__kont189835189836%_
                                                     _%L188119%_
                                                     _%L188120%_
                                                     _%L188121%_)
                                                    (_%__kont189839189840%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx189833189834%_))
                                          (let ((_%e188051188087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx189833189834%_))))
                                            (let ((_%tl188049188092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e188051188087%_)))
                                                  (_%hd188050188090%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e188051188087%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd188050188090%_))
                                                  (let ((_%e188054188095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd188050188090%_))))
                                                    (let ((_%tl188052188100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188054188095%_)))
                                                          (_%hd188053188098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188054188095%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd188053188098%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd188053188098%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188052188100%_))
                          (let ((_%e188057188103%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188052188100%_))))
                            (let ((_%tl188055188108%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188057188103%_)))
                                  (_%hd188056188106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188057188103%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl188055188108%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl188049188092%_))
                                      (let ((_%e188060188111%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl188049188092%_))))
                                        (let ((_%tl188058188116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188060188111%_)))
                                              (_%hd188059188114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188060188111%_))))
                                          (_%__match189870189871%_
                                           _%e188051188087%_
                                           _%hd188050188090%_
                                           _%tl188049188092%_
                                           _%e188054188095%_
                                           _%hd188053188098%_
                                           _%tl188052188100%_
                                           _%e188057188103%_
                                           _%hd188056188106%_
                                           _%tl188055188108%_
                                           _%e188060188111%_
                                           _%hd188059188114%_
                                           _%tl188058188116%_)))
                                      (_%__kont189839189840%_))
                                  (_%__kont189839189840%_))))
                          (_%__kont189839189840%_))
                      (_%__kont189839189840%_))
                  (_%__kont189839189840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189839189840%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g188042188082%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187753%_ _%ctx187754%_ _%stx187755%_ _%args187756%_)
        (let ((_%self187759%_ _%self187753%_))
          (let* ((_%arguments-ok?187769%_
                  (let ((__method190056
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self187759%_ 'check-arguments))))
                    (if __method190056
                        (__method190056
                         _%self187759%_
                         _%ctx187754%_
                         _%stx187755%_
                         _%args187756%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187759%_
                                 'check-arguments)))))
                 (_%g187771187781%_
                  (lambda (_%g187772187778%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g187772187778%_))))
                 (_%g187770187845%_
                  (lambda (_%g187772187784%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g187772187784%_))
                        (let ((_%e187776187786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g187772187784%_))))
                          (let ((_%hd187775187789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187776187786%_)))
                                (_%tl187774187791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187776187786%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl187774187791%_))
                                ((lambda (_%L187794%_)
                                   (let* ((_%klass187807%_
                                           (let ((__tmp190127
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187759%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx187755%_
                                              __tmp190127)))
                                          (_%field187809%_
                                           (let ((__tmp190128
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187759%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass187807%_
                                              __tmp190128)))
                                          (_%object187811%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx187754%_
                                              _%L187794%_)))
                                          (_%klass187814%_ _%klass187807%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass187814%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp190129
                                                (cons (if (or _%arguments-ok?187769%_
                                                              (let ((__tmp190130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187759%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp190130)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187759%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field187809%_ '()))
                          (cons _%object187811%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp190129
                                            _%stx187755%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass187814%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp190131
                                                    (cons (if (or _%arguments-ok?187769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp190132
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187759%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp190132)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187759%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field187809%_ '()))
                              (cons _%object187811%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp190131
                                                _%stx187755%_))
                                             (let ((_%$e187833%_
                                                    (let ((__tmp190133
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187759%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass187814%_
                                                       __tmp190133))))
                                               (if _%$e187833%_
                                                   ((lambda (_%klass187836%_)
                                                      (let ((__tmp190134
                                                             (cons (if (or _%arguments-ok?187769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp190135
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187759%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp190135)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self187759%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field187809%_ '()))
                                       (cons _%object187811%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190134 _%stx187755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e187833%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187759%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp190136
                                                              (let ((_%$obj187842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp190137
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp190137))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj187842%_ '())
                                                (cons _%object187811%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass187814%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj187842%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187759%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187809%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj187842%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?187769%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187842%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187759%_
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
                                                               _%self187759%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj187842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self187759%_
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
                 (gxc#xform-wrap-source __tmp190136 _%stx187755%_))
               (let ((__tmp190138
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object187811%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187759%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp190138 _%stx187755%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd187775187789%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g187771187781%_ _%g187772187784%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g187771187781%_ _%g187772187784%_))))))
            (declare (not safe))
            (_%g187770187845%_ _%args187756%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187517%_ _%ctx187518%_ _%stx187519%_ _%args187520%_)
        (let ((_%self187523%_ _%self187517%_))
          (let* ((_%arguments-ok?187533%_
                  (let ((__method190057
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self187523%_ 'check-arguments))))
                    (if __method190057
                        (__method190057
                         _%self187523%_
                         _%ctx187518%_
                         _%stx187519%_
                         _%args187520%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self187523%_
                                 'check-arguments)))))
                 (_%g187535187549%_
                  (lambda (_%g187536187546%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g187536187546%_))))
                 (_%g187534187628%_
                  (lambda (_%g187536187552%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g187536187552%_))
                        (let ((_%e187541187554%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g187536187552%_))))
                          (let ((_%hd187540187557%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e187541187554%_)))
                                (_%tl187539187559%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e187541187554%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl187539187559%_))
                                (let ((_%e187544187562%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl187539187559%_))))
                                  (let ((_%hd187543187565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e187544187562%_)))
                                        (_%tl187542187567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e187544187562%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl187542187567%_))
                                        ((lambda (_%L187570%_ _%L187571%_)
                                           (let* ((_%klass187587%_
                                                   (let ((__tmp190139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187523%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx187519%_
                                                      __tmp190139)))
                                                  (_%field187589%_
                                                   (let ((__tmp190140
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self187523%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass187587%_
                                                      __tmp190140)))
                                                  (_%object187591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187518%_
                                                      _%L187571%_)))
                                                  (_%value187593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx187518%_
                                                      _%L187570%_)))
                                                  (_%klass187596%_
                                                   _%klass187587%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass187596%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp190141
                                                        (cons (if (or _%arguments-ok?187533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp190142
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187523%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp190142)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187523%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187589%_ '()))
                                  (cons _%object187591%_
                                        (cons _%value187593%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp190141
                                                    _%stx187519%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass187596%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp190143
                                                            (cons (if (or _%arguments-ok?187533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp190144
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187523%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp190144)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187523%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187589%_ '()))
                                      (cons _%object187591%_
                                            (cons _%value187593%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp190143 _%stx187519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e187616%_
                                                            (let ((__tmp190145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self187523%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass187596%_
                       __tmp190145))))
               (if _%$e187616%_
                   ((lambda (_%klass187619%_)
                      (let ((__tmp190146
                             (cons (if (or _%arguments-ok?187533%_
                                           (let ((__tmp190147
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self187523%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp190147)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self187523%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field187589%_
                                                           '()))
                                               (cons _%object187591%_
                                                     (cons _%value187593%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp190146 _%stx187519%_)))
                    _%$e187616%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self187523%_ '4 '#f '#f))
                       (let ((__tmp190148
                              (let ((_%$obj187625%_
                                     (let ((__tmp190149
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp190149))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187625%_
                                                              '())
                                                        (cons _%object187591%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187596%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187625%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187523%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187589%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187625%_
                                                                '()))
                                                    (cons _%value187593%_
                                                          '())))))
                            (cons (if _%arguments-ok?187533%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187523%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187593%_ '())))))
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
                               _%self187523%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187625%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187523%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value187593%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp190148 _%stx187519%_))
                       (let ((__tmp190150
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object187591%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187523%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value187593%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp190150
                          _%stx187519%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd187543187565%_
                                         _%hd187540187557%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g187535187549%_
                                           _%g187536187552%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g187535187549%_ _%g187536187552%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g187535187549%_ _%g187536187552%_))))))
            (declare (not safe))
            (_%g187534187628%_ _%args187520%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self187332%_ _%ctx187333%_ _%stx187334%_ _%args187335%_)
        (let ((_%self187338%_ _%self187332%_))
          (let* ((_%self187347187357%_ _%self187338%_)
                 (_%E187349187361%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self187347187357%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K187350187371%_
                  (lambda (_%inline187364%_ _%dispatch187365%_ _%arity187366%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self187338%_
                           _%args187335%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx187334%_
                           _%arity187366%_)))
                    (if _%inline187364%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp190151
                                 (let ((__tmp190152
                                        (_%inline187364%_ _%stx187334%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp190152
                                    _%stx187334%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx187333%_ __tmp190151)))
                        (if (and _%dispatch187365%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch187365%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch187365%_))
                              (let ((__tmp190153
                                     (let ((__tmp190154
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch187365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args187335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp190154
                                        _%stx187334%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx187333%_ __tmp190153)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self187338%_
                               _%ctx187333%_
                               _%stx187334%_
                               _%args187335%_)))))))
            (if '#t
                (let* ((_%e187351187374%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187347187357%_
                           '1
                           '#f
                           '#f)))
                       (_%e187352187377%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187347187357%_
                           '2
                           '#f
                           '#f)))
                       (_%e187353187380%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187347187357%_
                           '3
                           '#f
                           '#f)))
                       (_%arity187383%_ _%e187353187380%_)
                       (_%e187354187385%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187347187357%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch187388%_ _%e187354187385%_)
                       (_%e187355187390%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187347187357%_
                           '5
                           '#f
                           '#f)))
                       (_%inline187393%_ _%e187355187390%_))
                  (declare (not safe))
                  (_%K187350187371%_
                   _%inline187393%_
                   _%dispatch187388%_
                   _%arity187383%_))
                (let () (declare (not safe)) (_%E187349187361%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self187184%_ _%ctx187185%_ _%stx187186%_ _%args187187%_)
        (let ()
          (let* ((_%self187190%_ _%self187184%_)
                 (_%$e187204%_
                  (let ((__tmp190156
                         (lambda (_%g187199187201%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g187199187201%_
                              _%args187187%_))))
                        (__tmp190155
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187190%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp190156 __tmp190155))))
            (if _%$e187204%_
                ((lambda (_%clause187207%_)
                   (let ((__method190058
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause187207%_ 'optimize-call))))
                     (if __method190058
                         (__method190058
                          _%clause187207%_
                          _%ctx187185%_
                          _%stx187186%_
                          _%args187187%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause187207%_
                                  'optimize-call)))))
                 _%$e187204%_)
                (let ((__tmp190157
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self187190%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx187186%_
                   __tmp190157)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186924%_ _%ctx186925%_ _%stx186926%_ _%args186927%_)
        (let ((_%self186930%_ _%self186924%_))
          (let* ((_%self186939186948%_ _%self186930%_)
                 (_%E186941186952%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self186939186948%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K186942187043%_
                  (lambda (_%dispatch186955%_ _%table186956%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch186955%_))
                        (let* ((_%g186957186967%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch186955%_)))
                               (_%else186959186975%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch186955%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx186925%_
                                     _%stx186926%_))))
                               (_%K186961187024%_
                                (lambda (_%main186978%_ _%keys186979%_)
                                  (let ((_g190158_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx186926%_
                                            _%args186927%_))))
                                    (begin
                                      (let ((_g190159_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g190158_)
                                                   (##vector-length _g190158_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g190159_ 2)))
                                            (error "Context expects 2 values"
                                                   _g190159_)))
                                      (let ((_%pargs186981%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g190158_ 0)))
                                            (_%kwargs186982%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g190158_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main186978%_))
                                          (if _%table186956%_
                                              (let ((_%xargs186990%_
                                                     (map (lambda (_%key186984%_)
                                                            (let ((_%$e186986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key186984%_ _%kwargs186982%_))))
                      (if _%$e186986%_
                          _%$e186986%_
                          (let () '(%#ref absent-value)))))
                  _%keys186979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw186992%_)
                                                   (if (memq (car _%kw186992%_)
                                                             _%keys186979%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx186926%_
                                                          _%keys186979%_
                                                          _%kw186992%_))))
                                                 _%kwargs186982%_)
                                                (let ((__tmp190160
                                                       (let ((__tmp190161
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main186978%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs186981%_
                                           _%xargs186990%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp190161 _%stx186926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx186925%_
                                                   __tmp190160)))
                                              (let* ((_%kwt186994%_
                                                      (let ((__tmp190162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp190162)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars186998%_
                                                      (map (lambda (_%_186996%_)
                                                             (let ((__tmp190163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp190163)))
                   _%kwargs186982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind187003%_
                                                      (map (lambda (_%kw187000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187001%_)
                     (cons (cons _%kwvar187001%_ '())
                           (cons (cdr _%kw187000%_) '())))
                   _%kwargs186982%_
                   _%kwvars186998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset187008%_
                                                      (map (lambda (_%kw187005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187006%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt186994%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw187005%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar187006%_
                                                               '()))
                                                   '()))))))
                   _%kwargs186982%_
                   _%kwvars186998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs187013%_
                                                      (map (lambda (_%kw187010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar187011%_)
                     (cons (car _%kw187010%_)
                           (cons '%#ref (cons _%kwvar187011%_ '()))))
                   _%kwargs186982%_
                   _%kwvars186998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs187021%_
                                                      (map (lambda (_%key187015%_)
                                                             (let ((_%$e187017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key187015%_ _%xkwargs187013%_))))
                       (if _%$e187017%_
                           _%$e187017%_
                           (let () '(%#ref absent-value)))))
                   _%keys186979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp190164
                                                      (let ((__tmp190165
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind187003%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt186994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp190166
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs186982%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp190166
                                _%stx186926%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp190167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp190168
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main186978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt186994%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs186981%_ _%xargs187021%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp190168
                                       _%stx186926%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp190167 _%kwset187008%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp190165 _%stx186926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx186925%_
                                                 __tmp190164))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g186957186967%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e186962187027%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186957186967%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e186963187030%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186957186967%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e186964187033%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186957186967%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys187036%_ _%e186964187033%_)
                                     (_%e186965187038%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g186957186967%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main187041%_ _%e186965187038%_))
                                (declare (not safe))
                                (_%K186961187024%_
                                 _%main187041%_
                                 _%keys187036%_))
                              (let ()
                                (declare (not safe))
                                (_%else186959186975%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx186925%_ _%stx186926%_))))))
            (if '#t
                (let* ((_%e186943187046%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186939186948%_
                           '1
                           '#f
                           '#f)))
                       (_%e186944187049%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186939186948%_
                           '2
                           '#f
                           '#f)))
                       (_%e186945187052%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186939186948%_
                           '3
                           '#f
                           '#f)))
                       (_%table187055%_ _%e186945187052%_)
                       (_%e186946187057%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self186939186948%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch187060%_ _%e186946187057%_))
                  (declare (not safe))
                  (_%K186942187043%_ _%dispatch187060%_ _%table187055%_))
                (let () (declare (not safe)) (_%E186941186952%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186537%_ _%args186538%_)
        (let _%lp186540%_ ((_%rest186542%_ _%args186538%_)
                           (_%pargs186543%_ '())
                           (_%kwargs186544%_ '()))
          (let* ((_%__stx189875189876%_ _%rest186542%_)
                 (_%g186550186602%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189875189876%_)))))
            (let ((_%__kont189877189878%_
                   (lambda (_%L186781%_ _%L186782%_)
                     (let ((__tmp190169 (cons _%L186782%_ _%pargs186543%_)))
                       (declare (not safe))
                       (_%lp186540%_
                        _%L186781%_
                        __tmp190169
                        _%kwargs186544%_))))
                  (_%__kont189879189880%_
                   (lambda (_%L186727%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186727%_ _%pargs186543%_))
                             (reverse _%kwargs186544%_))))
                  (_%__kont189881189882%_
                   (lambda (_%L186674%_ _%L186675%_ _%L186676%_)
                     (let ((_%kw186693%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186676%_))))
                       (if (assq _%kw186693%_ _%kwargs186544%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186537%_
                              _%kw186693%_))
                           (let ((__tmp190170
                                  (cons (cons _%kw186693%_ _%L186675%_)
                                        _%kwargs186544%_)))
                             (declare (not safe))
                             (_%lp186540%_
                              _%L186674%_
                              _%pargs186543%_
                              __tmp190170))))))
                  (_%__kont189883189884%_
                   (lambda (_%L186622%_ _%L186623%_)
                     (let ((__tmp190171 (cons _%L186623%_ _%pargs186543%_)))
                       (declare (not safe))
                       (_%lp186540%_
                        _%L186622%_
                        __tmp190171
                        _%kwargs186544%_))))
                  (_%__kont189885189886%_
                   (lambda ()
                     (values (reverse _%pargs186543%_)
                             (reverse _%kwargs186544%_)))))
              (let ((_%__match189982189983%_
                     (lambda (_%e186583186642%_
                              _%hd186582186645%_
                              _%tl186581186647%_
                              _%e186586186650%_
                              _%hd186585186653%_
                              _%tl186584186655%_
                              _%e186589186658%_
                              _%hd186588186661%_
                              _%tl186587186663%_
                              _%e186592186666%_
                              _%hd186591186669%_
                              _%tl186590186671%_)
                       (let ((_%L186674%_ _%tl186590186671%_)
                             (_%L186675%_ _%hd186591186669%_)
                             (_%L186676%_ _%hd186588186661%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186676%_))
                             (_%__kont189881189882%_
                              _%L186674%_
                              _%L186675%_
                              _%L186676%_)
                             (_%__kont189883189884%_
                              _%tl186581186647%_
                              _%hd186582186645%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189875189876%_))
                    (let ((_%e186556186746%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189875189876%_))))
                      (let ((_%tl186554186751%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186556186746%_)))
                            (_%hd186555186749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186556186746%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186555186749%_))
                            (let ((_%e186559186754%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186555186749%_))))
                              (let ((_%tl186557186759%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186559186754%_)))
                                    (_%hd186558186757%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186559186754%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186558186757%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186558186757%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186557186759%_))
                                            (let ((_%e186562186762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186557186759%_))))
                                              (let ((_%tl186560186767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186562186762%_)))
                                                    (_%hd186561186765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186562186762%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186561186765%_))
                                                    (let ((_%e186563186770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186561186765%_))))
                                                      (if (equal? _%e186563186770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186560186767%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186554186751%_))
                          (let ((_%e186566186773%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186554186751%_))))
                            (let ((_%tl186564186778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186566186773%_)))
                                  (_%hd186565186776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186566186773%_))))
                              (_%__kont189877189878%_
                               _%tl186564186778%_
                               _%hd186565186776%_)))
                          (_%__kont189883189884%_
                           _%tl186554186751%_
                           _%hd186555186749%_))
                      (_%__kont189883189884%_
                       _%tl186554186751%_
                       _%hd186555186749%_))
                  (if (equal? _%e186563186770%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186560186767%_))
                          (_%__kont189879189880%_ _%tl186554186751%_)
                          (_%__kont189883189884%_
                           _%tl186554186751%_
                           _%hd186555186749%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186560186767%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186554186751%_))
                              (let ((_%e186592186666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186554186751%_))))
                                (let ((_%tl186590186671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186592186666%_)))
                                      (_%hd186591186669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186592186666%_))))
                                  (_%__match189982189983%_
                                   _%e186556186746%_
                                   _%hd186555186749%_
                                   _%tl186554186751%_
                                   _%e186559186754%_
                                   _%hd186558186757%_
                                   _%tl186557186759%_
                                   _%e186562186762%_
                                   _%hd186561186765%_
                                   _%tl186560186767%_
                                   _%e186592186666%_
                                   _%hd186591186669%_
                                   _%tl186590186671%_)))
                              (_%__kont189883189884%_
                               _%tl186554186751%_
                               _%hd186555186749%_))
                          (_%__kont189883189884%_
                           _%tl186554186751%_
                           _%hd186555186749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186560186767%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186554186751%_))
                                                            (let ((_%e186592186666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186554186751%_))))
                      (let ((_%tl186590186671%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186592186666%_)))
                            (_%hd186591186669%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186592186666%_))))
                        (_%__match189982189983%_
                         _%e186556186746%_
                         _%hd186555186749%_
                         _%tl186554186751%_
                         _%e186559186754%_
                         _%hd186558186757%_
                         _%tl186557186759%_
                         _%e186562186762%_
                         _%hd186561186765%_
                         _%tl186560186767%_
                         _%e186592186666%_
                         _%hd186591186669%_
                         _%tl186590186671%_)))
                    (_%__kont189883189884%_
                     _%tl186554186751%_
                     _%hd186555186749%_))
                (_%__kont189883189884%_
                 _%tl186554186751%_
                 _%hd186555186749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189883189884%_
                                             _%tl186554186751%_
                                             _%hd186555186749%_))
                                        (_%__kont189883189884%_
                                         _%tl186554186751%_
                                         _%hd186555186749%_))
                                    (_%__kont189883189884%_
                                     _%tl186554186751%_
                                     _%hd186555186749%_))))
                            (_%__kont189883189884%_
                             _%tl186554186751%_
                             _%hd186555186749%_))))
                    (_%__kont189885189886%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186521%_ _%ctx186522%_ _%stx186523%_ _%args186524%_)
        (let ((_%self186527%_ _%self186521%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx186522%_ _%stx186523%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self186209%_ _%stx186210%_)
        (let* ((_%__stx189991189992%_ _%stx186210%_)
               (_%g186213186253%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189991189992%_)))))
          (let ((_%__kont189993189994%_
                 (lambda (_%L186359%_ _%L186360%_)
                   (let ((_%$e186387%_
                          (member 'return:
                                  (let ((__tmp190172
                                         (lambda (_%g186379186382%_
                                                  _%g186380186384%_)
                                           (cons _%g186379186382%_
                                                 _%g186380186384%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp190172 '() _%L186360%_))
                                  gx#stx-eq?)))
                     (if _%$e186387%_
                         ((lambda (_%tail186390%_)
                            (let ((_%type186392%_
                                   (let ((__tmp190173
                                          (let ((__tmp190174
                                                 (cadr _%tail186390%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp190174))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx186210%_
                                      __tmp190173))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx186210%_
                                 _%L186359%_
                                 _%type186392%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self186209%_
                                 _%L186359%_))))
                          _%$e186387%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self186209%_ _%L186359%_))))))
                (_%__kont189997189998%_
                 (lambda (_%L186282%_ _%L186283%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self186209%_ _%L186282%_)))))
            (let ((_%__match190028190029%_
                   (lambda (_%e186219186303%_
                            _%hd186218186306%_
                            _%tl186217186308%_
                            _%e186222186311%_
                            _%hd186221186314%_
                            _%tl186220186316%_
                            _%e186225186319%_
                            _%hd186224186322%_
                            _%tl186223186324%_
                            _%__splice189995189996%_
                            _%target186226186327%_
                            _%tl186228186329%_)
                     (letrec ((_%loop186229186332%_
                               (lambda (_%hd186227186335%_
                                        _%signature186233186337%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd186227186335%_))
                                     (let ((_%e186230186340%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd186227186335%_))))
                                       (let ((_%lp-tl186232186345%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e186230186340%_)))
                                             (_%lp-hd186231186343%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e186230186340%_))))
                                         (let ((__tmp190175
                                                (cons _%lp-hd186231186343%_
                                                      _%signature186233186337%_)))
                                           (declare (not safe))
                                           (_%loop186229186332%_
                                            _%lp-tl186232186345%_
                                            __tmp190175))))
                                     (let ((_%signature186234186348%_
                                            (reverse _%signature186233186337%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl186220186316%_))
                                           (let ((_%e186237186351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl186220186316%_))))
                                             (let ((_%tl186235186356%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e186237186351%_)))
                                                   (_%hd186236186354%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e186237186351%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl186235186356%_))
                                                   (_%__kont189993189994%_
                                                    _%hd186236186354%_
                                                    _%signature186234186348%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g186213186253%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g186213186253%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop186229186332%_ _%target186226186327%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189991189992%_))
                  (let ((_%e186219186303%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189991189992%_))))
                    (let ((_%tl186217186308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e186219186303%_)))
                          (_%hd186218186306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e186219186303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186217186308%_))
                          (let ((_%e186222186311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186217186308%_))))
                            (let ((_%tl186220186316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186222186311%_)))
                                  (_%hd186221186314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186222186311%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd186221186314%_))
                                  (let ((_%e186225186319%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd186221186314%_))))
                                    (let ((_%tl186223186324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e186225186319%_)))
                                          (_%hd186224186322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e186225186319%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd186224186322%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd186224186322%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl186223186324%_))
                                                  (let ((_%__splice189995189996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl186223186324%_
                                                            '0))))
                                                    (let ((_%tl186228186329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189995189996%_
                                                              '1)))
                                                          (_%target186226186327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189995189996%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186228186329%_))
                                                          (_%__match190028190029%_
                                                           _%e186219186303%_
                                                           _%hd186218186306%_
                                                           _%tl186217186308%_
                                                           _%e186222186311%_
                                                           _%hd186221186314%_
                                                           _%tl186220186316%_
                                                           _%e186225186319%_
                                                           _%hd186224186322%_
                                                           _%tl186223186324%_
                                                           _%__splice189995189996%_
                                                           _%target186226186327%_
                                                           _%tl186228186329%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl186220186316%_))
                      (let ((_%e186248186274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl186220186316%_))))
                        (let ((_%tl186246186279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e186248186274%_)))
                              (_%hd186247186277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e186248186274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl186246186279%_))
                              (_%__kont189997189998%_
                               _%hd186247186277%_
                               _%hd186221186314%_)
                              (let ()
                                (declare (not safe))
                                (_%g186213186253%_)))))
                      (let () (declare (not safe)) (_%g186213186253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl186220186316%_))
                                                      (let ((_%e186248186274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl186220186316%_))))
                (let ((_%tl186246186279%_
                       (let () (declare (not safe)) (##cdr _%e186248186274%_)))
                      (_%hd186247186277%_
                       (let ()
                         (declare (not safe))
                         (##car _%e186248186274%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186246186279%_))
                      (_%__kont189997189998%_
                       _%hd186247186277%_
                       _%hd186221186314%_)
                      (let () (declare (not safe)) (_%g186213186253%_)))))
              (let () (declare (not safe)) (_%g186213186253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl186220186316%_))
                                                  (let ((_%e186248186274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl186220186316%_))))
                                                    (let ((_%tl186246186279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e186248186274%_)))
                                                          (_%hd186247186277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e186248186274%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl186246186279%_))
                                                          (_%__kont189997189998%_
                                                           _%hd186247186277%_
                                                           _%hd186221186314%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g186213186253%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g186213186253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl186220186316%_))
                                              (let ((_%e186248186274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl186220186316%_))))
                                                (let ((_%tl186246186279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e186248186274%_)))
                                                      (_%hd186247186277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e186248186274%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl186246186279%_))
                                                      (_%__kont189997189998%_
                                                       _%hd186247186277%_
                                                       _%hd186221186314%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g186213186253%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g186213186253%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl186220186316%_))
                                      (let ((_%e186248186274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl186220186316%_))))
                                        (let ((_%tl186246186279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e186248186274%_)))
                                              (_%hd186247186277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e186248186274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl186246186279%_))
                                              (_%__kont189997189998%_
                                               _%hd186247186277%_
                                               _%hd186221186314%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g186213186253%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g186213186253%_))))))
                          (let () (declare (not safe)) (_%g186213186253%_)))))
                  (let () (declare (not safe)) (_%g186213186253%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx186187%_ _%expr186188%_ _%type186189%_)
        (let ((_%$e186191%_
               (let () (declare (not safe)) (not _%type186189%_))))
          (if _%$e186191%_
              _%$e186191%_
              (let ((_%$e186194%_
                     (eq? (##structure-ref _%type186189%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e186194%_
                    _%$e186194%_
                    (let ((_%expr-type186198%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr186188%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type186198%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx186187%_
                             _%type186189%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type186198%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx186187%_
                                 _%type186189%_
                                 _%expr-type186198%_))
                              (let ((_%$e186202%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type186198%_
                                        'gxc#!abort::t))))
                                (if _%$e186202%_
                                    _%$e186202%_
                                    (let ((_%$e186205%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type186198%_
                                              _%type186189%_))))
                                      (if _%$e186205%_
                                          _%$e186205%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx186187%_
                                             _%type186189%_
                                             _%expr-type186198%_)))))))))))))))))
