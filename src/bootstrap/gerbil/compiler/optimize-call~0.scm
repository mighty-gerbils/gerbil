(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1755903083)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp201926 (list gxc#::basic-xform::t))
            (__tmp201925 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp201926
         '()
         __tmp201925
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args201203%_
        (apply make-instance gxc#::optimize-call::t _%$args201203%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp201927
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
        (__make-promise __tmp201927)))
    (define gxc#apply-optimize-call
      (lambda (_%stx201195%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self201198%_
                (let ((__obj201917
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj201917))
               (__tmp201928
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201198%_ _%stx201195%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201928
           gxc#current-compile-method
           _%self201198%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp201930 (list gxc#::void::t))
            (__tmp201929 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp201930
         '()
         __tmp201929
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args201192%_
        (apply make-instance gxc#::check-return-type::t _%$args201192%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp201931
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
        (__make-promise __tmp201931)))
    (define gxc#apply-check-return-type
      (lambda (_%stx201184%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self201187%_
                (let ((__obj201919
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj201919))
               (__tmp201932
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201187%_ _%stx201184%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201932
           gxc#current-compile-method
           _%self201187%_))))
    (define gxc#optimize-call%
      (lambda (_%self200785%_ _%stx200786%_)
        (let* ((_%__stx201272201273%_ _%stx200786%_)
               (_%g200789200835%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201272201273%_)))))
          (let ((_%__kont201274201275%_
                 (lambda (_%L200978%_ _%L200979%_)
                   (let* ((_%rator-id200999%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L200979%_)))
                          (_%rator-type201001%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id200999%_))))
                     (if (or (not _%rator-type201001%_)
                             (eq? (##structure-ref
                                   _%rator-type201001%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self200785%_ _%stx200786%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type201001%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp201933
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type201001%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id200999%_
                                  '" => "
                                  _%rator-type201001%_
                                  '" "
                                  __tmp201933))
                               (let* ((_%optimized201016%_
                                       (let ((__method201920
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type201001%_
                                                 'optimize-call))))
                                         (if __method201920
                                             (let ((__tmp201934
                                                    (let ((__tmp201935
                                                           (lambda (_%g201008201011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g201009201013%_)
                     (cons _%g201008201011%_ _%g201009201013%_))))
              (declare (not safe))
              (__foldr1 __tmp201935 '() _%L200978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method201920
                                                _%rator-type201001%_
                                                _%self200785%_
                                                _%stx200786%_
                                                __tmp201934))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type201001%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx201220201221%_
                                       _%optimized201016%_)
                                      (_%g201019201048%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx201220201221%_)))))
                                 (let ((_%__kont201222201223%_
                                        (lambda (_%L201116%_ _%L201117%_)
                                          (let* ((_%optimized-rator-id201144%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%L201117%_)))
                                                 (_%rator-type201149%_
                                                  (let ((_%$e201146%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id201144%_))))
                                                    (if _%$e201146%_
                                                        _%$e201146%_
                                                        _%rator-type201001%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type201149%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id201144%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type201149%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type201149%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized201016%_
                                                (let ((__tmp201936
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%L201117%_ '()))
                           (let ((__tmp201937
                                  (lambda (_%g201157201160%_ _%g201158201162%_)
                                    (cons _%g201157201160%_
                                          _%g201158201162%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201937 '() _%L201116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp201936
                                                   _%stx200786%_))))))
                                       (_%__kont201226201227%_
                                        (lambda () _%optimized201016%_)))
                                   (let ((_%__match201269201270%_
                                          (lambda (_%e201023201060%_
                                                   _%hd201024201063%_
                                                   _%tl201025201065%_
                                                   _%e201026201068%_
                                                   _%hd201027201071%_
                                                   _%tl201028201073%_
                                                   _%e201029201076%_
                                                   _%hd201030201079%_
                                                   _%tl201031201081%_
                                                   _%e201032201084%_
                                                   _%hd201033201087%_
                                                   _%tl201034201089%_
                                                   _%__splice201224201225%_
                                                   _%target201035201092%_
                                                   _%tl201037201094%_)
                                            (letrec ((_%loop201038201097%_
                                                      (lambda (_%hd201036201100%_
                                                               _%arg201042201102%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd201036201100%_))
                                                            (let ((_%e201039201105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd201036201100%_))))
                      (let ((_%lp-tl201041201110%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201039201105%_)))
                            (_%lp-hd201040201108%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201039201105%_))))
                        (_%loop201038201097%_
                         _%lp-tl201041201110%_
                         (cons _%lp-hd201040201108%_ _%arg201042201102%_))))
                    (let ((_%arg201043201113%_ (reverse _%arg201042201102%_)))
                      (_%__kont201222201223%_
                       _%arg201043201113%_
                       _%hd201033201087%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop201038201097%_
                                               _%target201035201092%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx201220201221%_))
                                         (let ((_%e201023201060%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx201220201221%_))))
                                           (let ((_%tl201025201065%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201023201060%_)))
                                                 (_%hd201024201063%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201023201060%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd201024201063%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd201024201063%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl201025201065%_))
                                                         (let ((_%e201026201068%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl201025201065%_))))
                   (let ((_%tl201028201073%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e201026201068%_)))
                         (_%hd201027201071%_
                          (let ()
                            (declare (not safe))
                            (##car _%e201026201068%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd201027201071%_))
                         (let ((_%e201029201076%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd201027201071%_))))
                           (let ((_%tl201031201081%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201029201076%_)))
                                 (_%hd201030201079%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201029201076%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd201030201079%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd201030201079%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl201031201081%_))
                                         (let ((_%e201032201084%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl201031201081%_))))
                                           (let ((_%tl201034201089%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201032201084%_)))
                                                 (_%hd201033201087%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201032201084%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl201034201089%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl201028201073%_))
                                                     (let ((_%__splice201224201225%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl201028201073%_
                                                               '0))))
                                                       (let ((_%tl201037201094%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice201224201225%_ '1)))
                     (_%target201035201092%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice201224201225%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201037201094%_))
                     (_%__match201269201270%_
                      _%e201023201060%_
                      _%hd201024201063%_
                      _%tl201025201065%_
                      _%e201026201068%_
                      _%hd201027201071%_
                      _%tl201028201073%_
                      _%e201029201076%_
                      _%hd201030201079%_
                      _%tl201031201081%_
                      _%e201032201084%_
                      _%hd201033201087%_
                      _%tl201034201089%_
                      _%__splice201224201225%_
                      _%target201035201092%_
                      _%tl201037201094%_)
                     (_%__kont201226201227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont201226201227%_))
                                                 (_%__kont201226201227%_))))
                                         (_%__kont201226201227%_))
                                     (_%__kont201226201227%_))
                                 (_%__kont201226201227%_))))
                         (_%__kont201226201227%_))))
                 (_%__kont201226201227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont201226201227%_))
                                                 (_%__kont201226201227%_))))
                                         (_%__kont201226201227%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type201001%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type201001%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp201938
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L200979%_
                                                                '()))
                                                    (map (lambda (_%g201168201170%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self200785%_
                                                              _%g201168201170%_)))
                                                         (let ((__tmp201939
                                                                (lambda (_%g201172201175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g201173201177%_)
                          (cons _%g201172201175%_ _%g201173201177%_))))
                   (declare (not safe))
                   (__foldr1 __tmp201939 '() _%L200978%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp201938
                                    _%stx200786%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx200786%_
                                    _%rator-type201001%_))))))))
                (_%__kont201278201279%_
                 (lambda (_%L200880%_ _%L200881%_)
                   (let ((_%rator-type200898%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L200881%_))))
                     (if (and _%rator-type200898%_
                              (eq? (##structure-ref
                                    _%rator-type200898%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type200898%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type200898%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type200898%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp201940
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self200785%_
                                               _%L200881%_))
                                            (map (lambda (_%g200900200902%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200785%_
                                                      _%g200900200902%_)))
                                                 (let ((__tmp201941
                                                        (lambda (_%g200904200907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g200905200909%_)
                  (cons _%g200904200907%_ _%g200905200909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp201941
                                                    '()
                                                    _%L200880%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp201940 _%stx200786%_))
                         (if (or (not _%rator-type200898%_)
                                 (let ((__tmp201942
                                        (##structure-ref
                                         _%rator-type200898%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp201942 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self200785%_ _%stx200786%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx200786%_
                                _%rator-type200898%_))))))))
            (let* ((_%__match201339201340%_
                    (lambda (_%e200816200840%_
                             _%hd200817200843%_
                             _%tl200818200845%_
                             _%e200819200848%_
                             _%hd200820200851%_
                             _%tl200821200853%_
                             _%__splice201280201281%_
                             _%target200822200856%_
                             _%tl200824200858%_)
                      (letrec ((_%loop200825200861%_
                                (lambda (_%hd200823200864%_
                                         _%rand200829200866%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200823200864%_))
                                      (let ((_%e200826200869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200823200864%_))))
                                        (let ((_%lp-tl200828200874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200826200869%_)))
                                              (_%lp-hd200827200872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200826200869%_))))
                                          (_%loop200825200861%_
                                           _%lp-tl200828200874%_
                                           (cons _%lp-hd200827200872%_
                                                 _%rand200829200866%_))))
                                      (let ((_%rand200830200877%_
                                             (reverse _%rand200829200866%_)))
                                        (_%__kont201278201279%_
                                         _%rand200830200877%_
                                         _%hd200820200851%_))))))
                        (_%loop200825200861%_ _%target200822200856%_ '()))))
                   (_%__match201319201320%_
                    (lambda (_%e200793200922%_
                             _%hd200794200925%_
                             _%tl200795200927%_
                             _%e200796200930%_
                             _%hd200797200933%_
                             _%tl200798200935%_
                             _%e200799200938%_
                             _%hd200800200941%_
                             _%tl200801200943%_
                             _%e200802200946%_
                             _%hd200803200949%_
                             _%tl200804200951%_
                             _%__splice201276201277%_
                             _%target200805200954%_
                             _%tl200807200956%_)
                      (letrec ((_%loop200808200959%_
                                (lambda (_%hd200806200962%_
                                         _%rand200812200964%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200806200962%_))
                                      (let ((_%e200809200967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200806200962%_))))
                                        (let ((_%lp-tl200811200972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200809200967%_)))
                                              (_%lp-hd200810200970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200809200967%_))))
                                          (_%loop200808200959%_
                                           _%lp-tl200811200972%_
                                           (cons _%lp-hd200810200970%_
                                                 _%rand200812200964%_))))
                                      (let ((_%rand200813200975%_
                                             (reverse _%rand200812200964%_)))
                                        (_%__kont201274201275%_
                                         _%rand200813200975%_
                                         _%hd200803200949%_))))))
                        (_%loop200808200959%_ _%target200805200954%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201272201273%_))
                  (let ((_%e200793200922%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201272201273%_))))
                    (let ((_%tl200795200927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200793200922%_)))
                          (_%hd200794200925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200793200922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200795200927%_))
                          (let ((_%e200796200930%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200795200927%_))))
                            (let ((_%tl200798200935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200796200930%_)))
                                  (_%hd200797200933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200796200930%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200797200933%_))
                                  (let ((_%e200799200938%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200797200933%_))))
                                    (let ((_%tl200801200943%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200799200938%_)))
                                          (_%hd200800200941%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200799200938%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200800200941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200800200941%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200801200943%_))
                                                  (let ((_%e200802200946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200801200943%_))))
                                                    (let ((_%tl200804200951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200802200946%_)))
                                                          (_%hd200803200949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200802200946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200804200951%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl200798200935%_))
                      (let ((_%__splice201276201277%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl200798200935%_
                                '0))))
                        (let ((_%tl200807200956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201276201277%_ '1)))
                              (_%target200805200954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201276201277%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200807200956%_))
                              (_%__match201319201320%_
                               _%e200793200922%_
                               _%hd200794200925%_
                               _%tl200795200927%_
                               _%e200796200930%_
                               _%hd200797200933%_
                               _%tl200798200935%_
                               _%e200799200938%_
                               _%hd200800200941%_
                               _%tl200801200943%_
                               _%e200802200946%_
                               _%hd200803200949%_
                               _%tl200804200951%_
                               _%__splice201276201277%_
                               _%target200805200954%_
                               _%tl200807200956%_)
                              (let ()
                                (declare (not safe))
                                (_%g200789200835%_)))))
                      (let () (declare (not safe)) (_%g200789200835%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl200798200935%_))
                      (let ((_%__splice201280201281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl200798200935%_
                                '0))))
                        (let ((_%tl200824200858%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201280201281%_ '1)))
                              (_%target200822200856%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201280201281%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200824200858%_))
                              (_%__match201339201340%_
                               _%e200793200922%_
                               _%hd200794200925%_
                               _%tl200795200927%_
                               _%e200796200930%_
                               _%hd200797200933%_
                               _%tl200798200935%_
                               _%__splice201280201281%_
                               _%target200822200856%_
                               _%tl200824200858%_)
                              (let ()
                                (declare (not safe))
                                (_%g200789200835%_)))))
                      (let () (declare (not safe)) (_%g200789200835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200798200935%_))
                                                      (let ((_%__splice201280201281%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl200798200935%_
                        '0))))
                (let ((_%tl200824200858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201280201281%_ '1)))
                      (_%target200822200856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201280201281%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200824200858%_))
                      (_%__match201339201340%_
                       _%e200793200922%_
                       _%hd200794200925%_
                       _%tl200795200927%_
                       _%e200796200930%_
                       _%hd200797200933%_
                       _%tl200798200935%_
                       _%__splice201280201281%_
                       _%target200822200856%_
                       _%tl200824200858%_)
                      (let () (declare (not safe)) (_%g200789200835%_)))))
              (let () (declare (not safe)) (_%g200789200835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl200798200935%_))
                                                  (let ((_%__splice201280201281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl200798200935%_
                                                            '0))))
                                                    (let ((_%tl200824200858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice201280201281%_
                                                              '1)))
                                                          (_%target200822200856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice201280201281%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200824200858%_))
                                                          (_%__match201339201340%_
                                                           _%e200793200922%_
                                                           _%hd200794200925%_
                                                           _%tl200795200927%_
                                                           _%e200796200930%_
                                                           _%hd200797200933%_
                                                           _%tl200798200935%_
                                                           _%__splice201280201281%_
                                                           _%target200822200856%_
                                                           _%tl200824200858%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200789200835%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200789200835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200798200935%_))
                                              (let ((_%__splice201280201281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl200798200935%_
                                                        '0))))
                                                (let ((_%tl200824200858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201280201281%_
                                                          '1)))
                                                      (_%target200822200856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201280201281%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200824200858%_))
                                                      (_%__match201339201340%_
                                                       _%e200793200922%_
                                                       _%hd200794200925%_
                                                       _%tl200795200927%_
                                                       _%e200796200930%_
                                                       _%hd200797200933%_
                                                       _%tl200798200935%_
                                                       _%__splice201280201281%_
                                                       _%target200822200856%_
                                                       _%tl200824200858%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200789200835%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200789200835%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200798200935%_))
                                      (let ((_%__splice201280201281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl200798200935%_
                                                '0))))
                                        (let ((_%tl200824200858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201280201281%_
                                                  '1)))
                                              (_%target200822200856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201280201281%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200824200858%_))
                                              (_%__match201339201340%_
                                               _%e200793200922%_
                                               _%hd200794200925%_
                                               _%tl200795200927%_
                                               _%e200796200930%_
                                               _%hd200797200933%_
                                               _%tl200798200935%_
                                               _%__splice201280201281%_
                                               _%target200822200856%_
                                               _%tl200824200858%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g200789200835%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200789200835%_))))))
                          (let () (declare (not safe)) (_%g200789200835%_)))))
                  (let () (declare (not safe)) (_%g200789200835%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self197164200745%_ _%ctx200747%_ _%stx200748%_ _%args200749%_)
        (let* ((_%self200751%_ _%self197164200745%_)
               (_%self200753%_ _%self200751%_))
          (if (let ((__method201921
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self200753%_ 'check-arguments))))
                (if __method201921
                    (let ()
                      (declare (not safe))
                      (__method201921
                       _%self200753%_
                       _%ctx200747%_
                       _%stx200748%_
                       _%args200749%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self200753%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature200763%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200753%_ '2 '#f '#f)))
                     (_%signature200765%_ _%signature200763%_)
                     (_%$e200775%_
                      (if _%signature200765%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature200765%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e200775%_
                    ((lambda (_%unchecked200778%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked200778%_))
                           (let ((__tmp201943
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked200778%_
                                                          '()))
                                              (map (lambda (_%g200779200781%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx200747%_
                                                        _%g200779200781%_)))
                                                   _%args200749%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp201943
                              _%stx200748%_
                              _%ctx200747%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx200747%_ _%stx200748%_))))
                     _%$e200775%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx200747%_ _%stx200748%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx200747%_ _%stx200748%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass201205 __method-table201206)
        (let ((__check-arguments201207
               (let ((__tmp201944
                      (lambda ()
                        (let ((__method201208
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table201206
                                  'check-arguments
                                  '#f))))
                          (if __method201208
                              __method201208
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp201944))))
          (lambda (_%self197164200745%_
                   _%ctx200747%_
                   _%stx200748%_
                   _%args200749%_)
            (let* ((_%self200751%_ _%self197164200745%_)
                   (_%self200753%_ _%self200751%_))
              (if ((force __check-arguments201207)
                   _%self200753%_
                   _%ctx200747%_
                   _%stx200748%_
                   _%args200749%_)
                  (let* ((_%signature200763%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self200753%_
                             '2
                             '#f
                             '#f)))
                         (_%signature200765%_ _%signature200763%_)
                         (_%$e200775%_
                          (if _%signature200765%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature200765%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e200775%_
                        ((lambda (_%unchecked200778%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked200778%_))
                               (let ((__tmp201945
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked200778%_
                                                              '()))
                                                  (map (lambda (_%g200779200781%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx200747%_
                                                            _%g200779200781%_)))
                                                       _%args200749%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp201945
                                  _%stx200748%_
                                  _%ctx200747%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx200747%_
                                  _%stx200748%_))))
                         _%$e200775%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx200747%_ _%stx200748%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx200747%_ _%stx200748%_))))))))
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
      (lambda (_%self197165200494%_ _%ctx200496%_ _%stx200497%_ _%args200498%_)
        (let* ((_%self200500%_ _%self197165200494%_)
               (_%self200502%_ _%self200500%_)
               (_%signature200511200513%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200502%_ '2 '#f '#f))))
          (if _%signature200511200513%_
              (let* ((_%signature200516%_ _%signature200511200513%_)
                     (_%argument-types200517200519%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature200516%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types200517200519%_
                    (let* ((_%argument-types200522%_
                            _%argument-types200517200519%_)
                           (_%argument-types200527%_
                            (let ((__tmp201946
                                   (lambda (_%t200525%_)
                                     (if _%t200525%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx200497%_
                                            _%t200525%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp201946
                               _%argument-types200522%_))))
                      (let _%loop200529%_ ((_%rest-args200531%_ _%args200498%_)
                                           (_%rest-types200532%_
                                            _%argument-types200527%_)
                                           (_%result200533%_ '#t))
                        (let* ((_%rest-args200534200542%_ _%rest-args200531%_)
                               (_%else200536200550%_
                                (lambda () _%result200533%_))
                               (_%K200538200611%_
                                (lambda (_%rest-args200553%_ _%arg200554%_)
                                  (let* ((_%rest-types200555200566%_
                                          _%rest-types200532%_)
                                         (_%E200559200570%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types200555200566%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K200562200599%_
                                           (lambda (_%rest-types200596%_
                                                    _%type200597%_)
                                             (_%loop200529%_
                                              _%rest-args200553%_
                                              _%rest-types200596%_
                                              (if (gxc#check-expression-type!
                                                   _%stx200497%_
                                                   _%arg200554%_
                                                   _%type200597%_)
                                                  _%result200533%_
                                                  '#f))))
                                          (_%K200561200590%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx200497%_
                                                _%argument-types200527%_))))
                                          (_%K200560200580%_
                                           (lambda (_%tail-type200574%_)
                                             (if (let ((__tmp201947
                                                        (lambda (_%g200575200577%_)
                                                          (gxc#check-expression-type!
                                                           _%stx200497%_
                                                           _%g200575200577%_
                                                           _%tail-type200574%_))))
                                                   (declare (not safe))
                                                   (__andmap1
                                                    __tmp201947
                                                    _%rest-args200553%_))
                                                 _%result200533%_
                                                 '#f))))
                                      (let ((_%try-match200557200593%_
                                             (lambda ()
                                               (if (null? _%rest-types200555200566%_)
                                                   (_%K200561200590%_)
                                                   (let ((_%tail-type200583%_
                                                          _%rest-types200555200566%_))
                                                     (_%K200560200580%_
                                                      _%tail-type200583%_))))))
                                        (if (pair? _%rest-types200555200566%_)
                                            (let ((_%tl200564200604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types200555200566%_)))
                                                  (_%hd200563200602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types200555200566%_))))
                                              (let ((_%type200607%_
                                                     _%hd200563200602%_)
                                                    (_%rest-types200609%_
                                                     _%tl200564200604%_))
                                                (_%K200562200599%_
                                                 _%rest-types200609%_
                                                 _%type200607%_)))
                                            (_%try-match200557200593%_))))))))
                          (if (pair? _%rest-args200534200542%_)
                              (let ((_%hd200539200614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args200534200542%_)))
                                    (_%tl200540200616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args200534200542%_))))
                                (let* ((_%arg200619%_ _%hd200539200614%_)
                                       (_%rest-args200621%_
                                        _%tl200540200616%_))
                                  (_%K200538200611%_
                                   _%rest-args200621%_
                                   _%arg200619%_)))
                              (_%else200536200550%_)))))
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
      (lambda (_%self197166200303%_ _%ctx200305%_ _%stx200306%_ _%args200307%_)
        (let* ((_%self200309%_ _%self197166200303%_)
               (_%self200311%_ _%self200309%_)
               (_%g200321200331%_
                (lambda (_%g200322200328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200322200328%_))))
               (_%g200320200369%_
                (lambda (_%g200322200334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200322200334%_))
                      (let ((_%e200324200336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200322200334%_))))
                        (let ((_%hd200325200339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200324200336%_)))
                              (_%tl200326200341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200324200336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200326200341%_))
                              ((lambda (_%L200344%_)
                                 (let* ((_%klass200356%_
                                         (let ((__tmp201948
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self200311%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx200306%_
                                            __tmp201948)))
                                        (_%object200358%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx200305%_
                                            _%L200344%_)))
                                        (_%instance?200363%_
                                         (let ((_%$e200360%_
                                                (gxc#expression-type?
                                                 _%object200358%_
                                                 _%klass200356%_)))
                                           (if _%$e200360%_
                                               _%$e200360%_
                                               (gxc#expression-type?
                                                _%L200344%_
                                                _%klass200356%_)))))
                                   (if _%instance?200363%_
                                       (let ((__tmp201949
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object200358%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L200344%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object200358%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp201949
                                          _%stx200306%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx200305%_
                                          _%stx200306%_)))))
                               _%hd200325200339%_)
                              (_%g200321200331%_ _%g200322200334%_))))
                      (_%g200321200331%_ _%g200322200334%_)))))
          (_%g200320200369%_ _%args200307%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self197167200097%_ _%ctx200099%_ _%stx200100%_ _%args200101%_)
        (let* ((_%self200103%_ _%self197167200097%_)
               (_%self200105%_ _%self200103%_)
               (_%g200115200125%_
                (lambda (_%g200116200122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200116200122%_))))
               (_%g200114200178%_
                (lambda (_%g200116200128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200116200128%_))
                      (let ((_%e200118200130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200116200128%_))))
                        (let ((_%hd200119200133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200118200130%_)))
                              (_%tl200120200135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200118200130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200120200135%_))
                              ((lambda (_%L200138%_)
                                 (let* ((_%klass200150%_
                                         (let ((__tmp201950
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self200105%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx200100%_
                                            __tmp201950)))
                                        (_%object200152%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx200099%_
                                            _%L200138%_)))
                                        (_%instance?200157%_
                                         (let ((_%$e200154%_
                                                (gxc#expression-type?
                                                 _%object200152%_
                                                 _%klass200150%_)))
                                           (if _%$e200154%_
                                               _%$e200154%_
                                               (gxc#expression-type?
                                                _%L200138%_
                                                _%klass200150%_))))
                                        (_%klass200160%_ _%klass200150%_))
                                   (if _%instance?200157%_
                                       (let ((__tmp201951
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object200152%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%L200138%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object200152%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp201951
                                          _%stx200100%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass200160%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp201952
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass200160%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object200152%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp201952
                                              _%stx200100%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass200160%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp201953
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass200160%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object200152%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201953
                                                  _%stx200100%_))
                                               (let ((__tmp201954
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self200105%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object200152%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201954
                                                  _%stx200100%_)))))))
                               _%hd200119200133%_)
                              (_%g200115200125%_ _%g200116200128%_))))
                      (_%g200115200125%_ _%g200116200128%_)))))
          (_%g200114200178%_ _%args200101%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx199760%_)
        (let* ((_%__stx201349201350%_ _%stx199760%_)
               (_%g199765199806%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201349201350%_)))))
          (let ((_%__kont201351201352%_ (lambda () '#t))
                (_%__kont201353201354%_ (lambda () '#t))
                (_%__kont201355201356%_
                 (lambda (_%L199874%_ _%L199875%_)
                   (let ((_%rator-type199896199898%_
                          (let ((__tmp201955
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L199875%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp201955))))
                     (if _%rator-type199896199898%_
                         (let* ((_%rator-type199901%_
                                 _%rator-type199896199898%_)
                                (_%rator-signature199902199904%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type199901%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type199901%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature199902199904%_
                               (let* ((_%rator-signature199907%_
                                       _%rator-signature199902199904%_)
                                      (_%rator-effect199908199910%_
                                       (if _%rator-signature199907%_
                                           (##direct-structure-ref
                                            _%rator-signature199907%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect199908199910%_
                                     (let ((_%rator-effect199913%_
                                            _%rator-effect199908199910%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect199913%_)
                                               (equal? '(alloc)
                                                       _%rator-effect199913%_))
                                           (let ((__tmp201956
                                                  (let ((__tmp201957
                                                         (lambda (_%g199918199921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199919199923%_)
                   (cons _%g199918199921%_ _%g199919199923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp201957
                                                     '()
                                                     _%L199874%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp201956))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont201359201360%_ (lambda () '#f)))
            (let ((_%__match201438201439%_
                   (lambda (_%e199781199818%_
                            _%hd199782199821%_
                            _%tl199783199823%_
                            _%e199784199826%_
                            _%hd199785199829%_
                            _%tl199786199831%_
                            _%e199787199834%_
                            _%hd199788199837%_
                            _%tl199789199839%_
                            _%e199790199842%_
                            _%hd199791199845%_
                            _%tl199792199847%_
                            _%__splice201357201358%_
                            _%target199793199850%_
                            _%tl199795199852%_)
                     (letrec ((_%loop199796199855%_
                               (lambda (_%hd199794199858%_
                                        _%rand199800199860%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199794199858%_))
                                     (let ((_%e199797199863%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199794199858%_))))
                                       (let ((_%lp-tl199799199868%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199797199863%_)))
                                             (_%lp-hd199798199866%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199797199863%_))))
                                         (_%loop199796199855%_
                                          _%lp-tl199799199868%_
                                          (cons _%lp-hd199798199866%_
                                                _%rand199800199860%_))))
                                     (let ((_%rand199801199871%_
                                            (reverse _%rand199800199860%_)))
                                       (_%__kont201355201356%_
                                        _%rand199801199871%_
                                        _%hd199791199845%_))))))
                       (_%loop199796199855%_ _%target199793199850%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201349201350%_))
                  (let ((_%e199767199954%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201349201350%_))))
                    (let ((_%tl199769199959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199767199954%_)))
                          (_%hd199768199957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199767199954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199768199957%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199768199957%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199769199959%_))
                                  (let ((_%e199770199962%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199769199959%_))))
                                    (let ((_%tl199772199967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199770199962%_)))
                                          (_%hd199771199965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199770199962%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199772199967%_))
                                          (_%__kont201351201352%_)
                                          (_%__kont201359201360%_))))
                                  (_%__kont201359201360%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199768199957%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199769199959%_))
                                      (let ((_%e199776199939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199769199959%_))))
                                        (let ((_%tl199778199944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199776199939%_)))
                                              (_%hd199777199942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199776199939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199778199944%_))
                                              (_%__kont201353201354%_)
                                              (_%__kont201359201360%_))))
                                      (_%__kont201359201360%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd199768199957%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199769199959%_))
                                          (let ((_%e199784199826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199769199959%_))))
                                            (let ((_%tl199786199831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199784199826%_)))
                                                  (_%hd199785199829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199784199826%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199785199829%_))
                                                  (let ((_%e199787199834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd199785199829%_))))
                                                    (let ((_%tl199789199839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199787199834%_)))
                                                          (_%hd199788199837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199787199834%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd199788199837%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd199788199837%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199789199839%_))
                          (let ((_%e199790199842%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199789199839%_))))
                            (let ((_%tl199792199847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199790199842%_)))
                                  (_%hd199791199845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199790199842%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199792199847%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199786199831%_))
                                      (let ((_%__splice201357201358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl199786199831%_
                                                '0))))
                                        (let ((_%tl199795199852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201357201358%_
                                                  '1)))
                                              (_%target199793199850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201357201358%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199795199852%_))
                                              (_%__match201438201439%_
                                               _%e199767199954%_
                                               _%hd199768199957%_
                                               _%tl199769199959%_
                                               _%e199784199826%_
                                               _%hd199785199829%_
                                               _%tl199786199831%_
                                               _%e199787199834%_
                                               _%hd199788199837%_
                                               _%tl199789199839%_
                                               _%e199790199842%_
                                               _%hd199791199845%_
                                               _%tl199792199847%_
                                               _%__splice201357201358%_
                                               _%target199793199850%_
                                               _%tl199795199852%_)
                                              (_%__kont201359201360%_))))
                                      (_%__kont201359201360%_))
                                  (_%__kont201359201360%_))))
                          (_%__kont201359201360%_))
                      (_%__kont201359201360%_))
                  (_%__kont201359201360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201359201360%_))))
                                          (_%__kont201359201360%_))
                                      (_%__kont201359201360%_))))
                          (_%__kont201359201360%_))))
                  (_%__kont201359201360%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx199755%_ _%klass199756%_)
        (let ((_%expr-type199758%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx199755%_))))
          (if _%expr-type199758%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type199758%_ _%klass199756%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx199733%_ _%expr199734%_ _%type199735%_)
        (if (not _%type199735%_)
            '#f
            (let ((_%$e199738%_
                   (eq? (##structure-ref _%type199735%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e199738%_
                  _%$e199738%_
                  (let ((_%expr-type199742%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr199734%_))))
                    (if (not _%expr-type199742%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type199742%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e199746%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type199742%_
                                      'gxc#!abort::t))))
                              (if _%$e199746%_
                                  _%$e199746%_
                                  (let ((_%$e199749%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type199742%_
                                            _%type199735%_))))
                                    (if _%$e199749%_
                                        _%$e199749%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type199735%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type199735%_
                                                   _%expr-type199742%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx199733%_
                                                   _%expr199734%_
                                                   _%expr-type199742%_
                                                   _%type199735%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self197168199545%_ _%ctx199547%_ _%stx199548%_ _%args199549%_)
        (let* ((_%self199551%_ _%self197168199545%_)
               (_%self199553%_ _%self199551%_)
               (_%klass199563%_
                (let ((__tmp201958
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199553%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx199548%_ __tmp201958)))
               (_%fields199565%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass199563%_
                           '5
                           '#f
                           '#f))))
               (_%args199571%_
                (map (lambda (_%g199566199568%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx199547%_ _%g199566199568%_)))
                     _%args199549%_))
               (_%inline-make-object199573%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self199553%_
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
                           _%self199553%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields199565%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass199576%_ _%klass199563%_)
               (_%$e199590%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass199576%_ '6 '#f '#f))))
          (if _%$e199590%_
              ((lambda (_%ctor199593%_)
                 (let ((_%$obj199595%_
                        (let ((__tmp201959
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp201959)))
                       (_%ctor-impl199596%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass199576%_
                           _%ctor199593%_))))
                   (let ((__tmp201960
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj199595%_ '())
                                                  (cons _%inline-make-object199573%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl199596%_
                                                            (let ((__tmp201961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl199596%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj199595%_ '()))
                                             _%args199571%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp201961
                       _%stx199548%_
                       _%ctx199547%_))
                    (let ((_%$ctor199598%_
                           (let ((__tmp201962
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201962))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor199598%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199553%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj199595%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor199593%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor199598%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor199598%_ '()))
                              (cons (cons '%#ref (cons _%$obj199595%_ '()))
                                    _%args199571%_)))
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
                             _%self199553%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor199593%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj199595%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp201960 _%stx199548%_))))
               _%$e199590%_)
              (let ((_%$e199600%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass199576%_
                        '10
                        '#f
                        '#f))))
                (if _%$e199600%_
                    ((lambda (_%metaclass199603%_)
                       (let* ((_%$obj199605%_
                               (let ((__tmp201963
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp201963)))
                              (_%metakons199607%_
                               (let ((__tmp201964
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx199548%_
                                         _%metaclass199603%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp201964
                                  'instance-init!)))
                              (__tmp201965
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj199605%_
                                                             '())
                                                       (cons _%inline-make-object199573%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons199607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp201966
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons199607%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self199553%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj199605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args199571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp201966
                            _%stx199548%_
                            _%ctx199547%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self199553%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj199605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args199571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj199605%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201965 _%stx199548%_)))
                     _%$e199600%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass199576%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp201967
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args199571%_))))
                              (declare (not safe))
                              (##fx= __tmp201967 _%fields199565%_))
                            (let ((__tmp201968
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self199553%_
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
                                              _%self199553%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args199571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201968
                               _%stx199548%_))
                            (let ((__tmp201970
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self199553%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp201969
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass199576%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx199548%_
                               __tmp201970
                               __tmp201969)))
                        (let ((_%$obj199612%_
                               (let ((__tmp201971
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp201971))))
                          (let _%lp199614%_ ((_%rest199616%_ _%args199571%_)
                                             (_%initializers199617%_ '()))
                            (let* ((_%__stx201441201442%_ _%rest199616%_)
                                   (_%g199621199642%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx201441201442%_)))))
                              (let ((_%__kont201443201444%_
                                     (lambda (_%L199696%_
                                              _%L199697%_
                                              _%L199698%_)
                                       (let* ((_%slot199725%_
                                               (let ((__tmp201972
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%L199698%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp201972)))
                                              (_%off199727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass199576%_
                                                  _%slot199725%_))))
                                         (if _%off199727%_
                                             (_%lp199614%_
                                              _%L199696%_
                                              (cons (cons _%off199727%_
                                                          _%L199697%_)
                                                    _%initializers199617%_))
                                             (let ((__tmp201973
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self199553%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx199548%_
                                                __tmp201973
                                                _%slot199725%_))))))
                                    (_%__kont201445201446%_
                                     (lambda ()
                                       (let ((__tmp201974
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj199612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object199573%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp201977
                                     (cons (cons '%#ref
                                                 (cons _%$obj199612%_ '()))
                                           '()))
                                    (__tmp201975
                                     (let ((__tmp201976
                                            (lambda (_%i199656%_ _%r199657%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self199553%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i199656%_) '()))
                              (cons (cons '%#ref (cons _%$obj199612%_ '()))
                                    (cons (cdr _%i199656%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r199657%_))))
                                       (declare (not safe))
                                       (__foldl1
                                        __tmp201976
                                        '()
                                        _%initializers199617%_))))
                                (declare (not safe))
                                (__foldr1 cons __tmp201977 __tmp201975)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp201974
                                          _%stx199548%_))))
                                    (_%__kont201447201448%_
                                     (lambda ()
                                       (let ((__tmp201978
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj199612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object199573%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj199612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args199571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj199612%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp201978
                                          _%stx199548%_)))))
                                (let* ((_%g199619199659%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx201441201442%_))
                                              (_%__kont201445201446%_)
                                              (_%__kont201447201448%_))))
                                       (_%__match201478201479%_
                                        (lambda (_%e199626199664%_
                                                 _%hd199627199667%_
                                                 _%tl199628199669%_
                                                 _%e199629199672%_
                                                 _%hd199630199675%_
                                                 _%tl199631199677%_
                                                 _%e199632199680%_
                                                 _%hd199633199683%_
                                                 _%tl199634199685%_
                                                 _%e199635199688%_
                                                 _%hd199636199691%_
                                                 _%tl199637199693%_)
                                          (let ((_%L199696%_
                                                 _%tl199637199693%_)
                                                (_%L199697%_
                                                 _%hd199636199691%_)
                                                (_%L199698%_
                                                 _%hd199633199683%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%L199698%_))
                                                (_%__kont201443201444%_
                                                 _%L199696%_
                                                 _%L199697%_
                                                 _%L199698%_)
                                                (_%__kont201447201448%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx201441201442%_))
                                      (let ((_%e199626199664%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx201441201442%_))))
                                        (let ((_%tl199628199669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199626199664%_)))
                                              (_%hd199627199667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199626199664%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd199627199667%_))
                                              (let ((_%e199629199672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199627199667%_))))
                                                (let ((_%tl199631199677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199629199672%_)))
                                                      (_%hd199630199675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199629199672%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd199630199675%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd199630199675%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199631199677%_))
                      (let ((_%e199632199680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199631199677%_))))
                        (let ((_%tl199634199685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199632199680%_)))
                              (_%hd199633199683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199632199680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199634199685%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199628199669%_))
                                  (let ((_%e199635199688%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199628199669%_))))
                                    (let ((_%tl199637199693%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199635199688%_)))
                                          (_%hd199636199691%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199635199688%_))))
                                      (_%__match201478201479%_
                                       _%e199626199664%_
                                       _%hd199627199667%_
                                       _%tl199628199669%_
                                       _%e199629199672%_
                                       _%hd199630199675%_
                                       _%tl199631199677%_
                                       _%e199632199680%_
                                       _%hd199633199683%_
                                       _%tl199634199685%_
                                       _%e199635199688%_
                                       _%hd199636199691%_
                                       _%tl199637199693%_)))
                                  (_%__kont201447201448%_))
                              (_%__kont201447201448%_))))
                      (_%__kont201447201448%_))
                  (_%__kont201447201448%_))
              (_%__kont201447201448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201447201448%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199619199659%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self197169199326%_ _%ctx199328%_ _%stx199329%_ _%args199330%_)
        (let* ((_%self199332%_ _%self197169199326%_)
               (_%self199334%_ _%self199332%_)
               (_%arguments-ok?199344%_
                (let ((__method201922
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self199334%_ 'check-arguments))))
                  (if __method201922
                      (let ()
                        (declare (not safe))
                        (__method201922
                         _%self199334%_
                         _%ctx199328%_
                         _%stx199329%_
                         _%args199330%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self199334%_
                                 'check-arguments))
                        '#!void))))
               (_%g199346199356%_
                (lambda (_%g199347199353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199347199353%_))))
               (_%g199345199420%_
                (lambda (_%g199347199359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199347199359%_))
                      (let ((_%e199349199361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199347199359%_))))
                        (let ((_%hd199350199364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199349199361%_)))
                              (_%tl199351199366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199349199361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199351199366%_))
                              ((lambda (_%L199369%_)
                                 (let* ((_%klass199382%_
                                         (let ((__tmp201979
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self199334%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx199329%_
                                            __tmp201979)))
                                        (_%field199384%_
                                         (let ((__tmp201980
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self199334%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass199382%_
                                            __tmp201980)))
                                        (_%object199386%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx199328%_
                                            _%L199369%_)))
                                        (_%klass199389%_ _%klass199382%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass199389%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp201981
                                              (cons (if (or _%arguments-ok?199344%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self199334%_
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
                                 _%self199334%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field199384%_ '()))
                        (cons _%object199386%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp201981
                                          _%stx199329%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass199389%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp201982
                                                  (cons (if (or _%arguments-ok?199344%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self199334%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199334%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field199384%_ '()))
                            (cons _%object199386%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp201982
                                              _%stx199329%_))
                                           (let ((_%$e199408%_
                                                  (let ((__tmp201983
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self199334%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass199389%_
                                                     __tmp201983))))
                                             (if _%$e199408%_
                                                 ((lambda (_%klass199411%_)
                                                    (let ((__tmp201984
                                                           (cons (if (or _%arguments-ok?199344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self199334%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self199334%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field199384%_ '()))
                                     (cons _%object199386%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp201984 _%stx199329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e199408%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self199334%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp201985
                                                            (let ((_%$obj199417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp201986
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201986))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj199417%_ '())
                                              (cons _%object199386%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass199389%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj199417%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199334%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field199384%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj199417%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?199344%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj199417%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self199334%_
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
                                                             _%self199334%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj199417%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self199334%_
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
               (gxc#xform-wrap-source __tmp201985 _%stx199329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp201987
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object199386%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self199334%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp201987 _%stx199329%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd199350199364%_)
                              (_%g199346199356%_ _%g199347199359%_))))
                      (_%g199346199356%_ _%g199347199359%_)))))
          (_%g199345199420%_ _%args199330%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass201209 __method-table201210)
        (let ((__check-arguments201211
               (let ((__tmp201988
                      (lambda ()
                        (let ((__method201212
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table201210
                                  'check-arguments
                                  '#f))))
                          (if __method201212
                              __method201212
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp201988)))
              (__slot201213
               (let ((__slot201214
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass201209 'slot))))
                 (if __slot201214
                     __slot201214
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self197169199326%_
                   _%ctx199328%_
                   _%stx199329%_
                   _%args199330%_)
            (let* ((_%self199332%_ _%self197169199326%_)
                   (_%self199334%_ _%self199332%_)
                   (_%arguments-ok?199344%_
                    ((force __check-arguments201211)
                     _%self199334%_
                     _%ctx199328%_
                     _%stx199329%_
                     _%args199330%_))
                   (_%g199346199356%_
                    (lambda (_%g199347199353%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g199347199353%_))))
                   (_%g199345199420%_
                    (lambda (_%g199347199359%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g199347199359%_))
                          (let ((_%e199349199361%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g199347199359%_))))
                            (let ((_%hd199350199364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199349199361%_)))
                                  (_%tl199351199366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199349199361%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199351199366%_))
                                  ((lambda (_%L199369%_)
                                     (let* ((_%klass199382%_
                                             (let ((__tmp201989
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self199334%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx199329%_
                                                __tmp201989)))
                                            (_%field199384%_
                                             (let ((__tmp201990
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self199334%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass199382%_
                                                __tmp201990)))
                                            (_%object199386%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx199328%_
                                                _%L199369%_)))
                                            (_%klass199389%_ _%klass199382%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass199389%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp201991
                                                  (cons (if (or _%arguments-ok?199344%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self199334%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199334%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field199384%_ '()))
                            (cons _%object199386%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp201991
                                              _%stx199329%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass199389%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp201992
                                                      (cons (if (or _%arguments-ok?199344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self199334%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self199334%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field199384%_ '()))
                                (cons _%object199386%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201992
                                                  _%stx199329%_))
                                               (let ((_%$e199408%_
                                                      (let ((__tmp201993
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self199334%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass199389%_ __tmp201993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e199408%_
                                                     ((lambda (_%klass199411%_)
                                                        (let ((__tmp201994
                                                               (cons (if (or _%arguments-ok?199344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199334%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self199334%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field199384%_ '()))
                                         (cons _%object199386%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp201994 _%stx199329%_)))
              _%$e199408%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self199334%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp201995
                                                                (let ((_%$obj199417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp201996
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp201996))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj199417%_ '())
                                                  (cons _%object199386%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass199389%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj199417%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self199334%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field199384%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj199417%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?199344%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj199417%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199334%_
                               __slot201213
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
                        (##unchecked-structure-ref _%self199334%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj199417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199334%_
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
                   (gxc#xform-wrap-source __tmp201995 _%stx199329%_))
                 (let ((__tmp201997
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object199386%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self199334%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp201997 _%stx199329%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd199350199364%_)
                                  (_%g199346199356%_ _%g199347199359%_))))
                          (_%g199346199356%_ _%g199347199359%_)))))
              (_%g199345199420%_ _%args199330%_))))))
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
      (lambda (_%self197170199088%_ _%ctx199090%_ _%stx199091%_ _%args199092%_)
        (let* ((_%self199094%_ _%self197170199088%_)
               (_%self199096%_ _%self199094%_)
               (_%arguments-ok?199106%_
                (let ((__method201923
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self199096%_ 'check-arguments))))
                  (if __method201923
                      (let ()
                        (declare (not safe))
                        (__method201923
                         _%self199096%_
                         _%ctx199090%_
                         _%stx199091%_
                         _%args199092%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self199096%_
                                 'check-arguments))
                        '#!void))))
               (_%g199108199122%_
                (lambda (_%g199109199119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199109199119%_))))
               (_%g199107199201%_
                (lambda (_%g199109199125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199109199125%_))
                      (let ((_%e199112199127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199109199125%_))))
                        (let ((_%hd199113199130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199112199127%_)))
                              (_%tl199114199132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199112199127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199114199132%_))
                              (let ((_%e199115199135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199114199132%_))))
                                (let ((_%hd199116199138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199115199135%_)))
                                      (_%tl199117199140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199115199135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199117199140%_))
                                      ((lambda (_%L199143%_ _%L199144%_)
                                         (let* ((_%klass199160%_
                                                 (let ((__tmp201998
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self199096%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx199091%_
                                                    __tmp201998)))
                                                (_%field199162%_
                                                 (let ((__tmp201999
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self199096%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass199160%_
                                                    __tmp201999)))
                                                (_%object199164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx199090%_
                                                    _%L199144%_)))
                                                (_%value199166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx199090%_
                                                    _%L199143%_)))
                                                (_%klass199169%_
                                                 _%klass199160%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass199169%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp202000
                                                      (cons (if (or _%arguments-ok?199106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self199096%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self199096%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field199162%_ '()))
                                (cons _%object199164%_
                                      (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp202000
                                                  _%stx199091%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass199169%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp202001
                                                          (cons (if (or _%arguments-ok?199106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self199096%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199096%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field199162%_ '()))
                                    (cons _%object199164%_
                                          (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp202001
                                                      _%stx199091%_))
                                                   (let ((_%$e199189%_
                                                          (let ((__tmp202002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self199096%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass199169%_
                     __tmp202002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e199189%_
                                                         ((lambda (_%klass199192%_)
                                                            (let ((__tmp202003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?199106%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self199096%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self199096%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field199162%_ '()))
                                             (cons _%object199164%_
                                                   (cons _%value199166%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp202003 _%stx199091%_)))
                  _%$e199189%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self199096%_ '4 '#f '#f))
                     (let ((__tmp202004
                            (let ((_%$obj199198%_
                                   (let ((__tmp202005
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp202005))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj199198%_ '())
                                                      (cons _%object199164%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass199169%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj199198%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self199096%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field199162%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj199198%_
                                                              '()))
                                                  (cons _%value199166%_
                                                        '())))))
                          (cons (if _%arguments-ok?199106%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj199198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self199096%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value199166%_ '())))))
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
                             _%self199096%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj199198%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self199096%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp202004 _%stx199091%_))
                     (let ((__tmp202006
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object199164%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self199096%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value199166%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp202006
                        _%stx199091%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd199116199138%_
                                       _%hd199113199130%_)
                                      (_%g199108199122%_ _%g199109199125%_))))
                              (_%g199108199122%_ _%g199109199125%_))))
                      (_%g199108199122%_ _%g199109199125%_)))))
          (_%g199107199201%_ _%args199092%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass201215 __method-table201216)
        (let ((__check-arguments201217
               (let ((__tmp202007
                      (lambda ()
                        (let ((__method201218
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table201216
                                  'check-arguments
                                  '#f))))
                          (if __method201218
                              __method201218
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp202007))))
          (lambda (_%self197170199088%_
                   _%ctx199090%_
                   _%stx199091%_
                   _%args199092%_)
            (let* ((_%self199094%_ _%self197170199088%_)
                   (_%self199096%_ _%self199094%_)
                   (_%arguments-ok?199106%_
                    ((force __check-arguments201217)
                     _%self199096%_
                     _%ctx199090%_
                     _%stx199091%_
                     _%args199092%_))
                   (_%g199108199122%_
                    (lambda (_%g199109199119%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g199109199119%_))))
                   (_%g199107199201%_
                    (lambda (_%g199109199125%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g199109199125%_))
                          (let ((_%e199112199127%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g199109199125%_))))
                            (let ((_%hd199113199130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199112199127%_)))
                                  (_%tl199114199132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199112199127%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199114199132%_))
                                  (let ((_%e199115199135%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199114199132%_))))
                                    (let ((_%hd199116199138%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199115199135%_)))
                                          (_%tl199117199140%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199115199135%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199117199140%_))
                                          ((lambda (_%L199143%_ _%L199144%_)
                                             (let* ((_%klass199160%_
                                                     (let ((__tmp202008
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self199096%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx199091%_
                                                        __tmp202008)))
                                                    (_%field199162%_
                                                     (let ((__tmp202009
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self199096%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass199160%_
                                                        __tmp202009)))
                                                    (_%object199164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx199090%_
                                                        _%L199144%_)))
                                                    (_%value199166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx199090%_
                                                        _%L199143%_)))
                                                    (_%klass199169%_
                                                     _%klass199160%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass199169%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp202010
                                                          (cons (if (or _%arguments-ok?199106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self199096%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199096%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field199162%_ '()))
                                    (cons _%object199164%_
                                          (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp202010
                                                      _%stx199091%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass199169%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp202011
                                                              (cons (if (or _%arguments-ok?199106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self199096%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self199096%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field199162%_ '()))
                                        (cons _%object199164%_
                                              (cons _%value199166%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp202011 _%stx199091%_))
               (let ((_%$e199189%_
                      (let ((__tmp202012
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self199096%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass199169%_
                         __tmp202012))))
                 (if _%$e199189%_
                     ((lambda (_%klass199192%_)
                        (let ((__tmp202013
                               (cons (if (or _%arguments-ok?199106%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self199096%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self199096%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field199162%_
                                                             '()))
                                                 (cons _%object199164%_
                                                       (cons _%value199166%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp202013 _%stx199091%_)))
                      _%$e199189%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self199096%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp202014
                                (let ((_%$obj199198%_
                                       (let ((__tmp202015
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp202015))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj199198%_
                                                                '())
                                                          (cons _%object199164%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass199169%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj199198%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self199096%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field199162%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj199198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value199166%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?199106%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj199198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self199096%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value199166%_ '())))))
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
                                 _%self199096%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj199198%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self199096%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp202014 _%stx199091%_))
                         (let ((__tmp202016
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object199164%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199096%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value199166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp202016
                            _%stx199091%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd199116199138%_
                                           _%hd199113199130%_)
                                          (_%g199108199122%_
                                           _%g199109199125%_))))
                                  (_%g199108199122%_ _%g199109199125%_))))
                          (_%g199108199122%_ _%g199109199125%_)))))
              (_%g199107199201%_ _%args199092%_))))))
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
      (lambda (_%self197171198901%_ _%ctx198903%_ _%stx198904%_ _%args198905%_)
        (let* ((_%self198907%_ _%self197171198901%_)
               (_%self198909%_ _%self198907%_)
               (_%self198918198928%_ _%self198909%_)
               (_%E198920198932%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198918198928%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K198921198942%_
                (lambda (_%inline198935%_ _%dispatch198936%_ _%arity198937%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self198909%_
                         _%args198905%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx198904%_
                         _%arity198937%_)))
                  (if _%inline198935%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp202017 (_%inline198935%_ _%stx198904%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp202017
                           _%stx198904%_
                           _%ctx198903%_)))
                      (if (and _%dispatch198936%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch198936%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch198936%_))
                            (let ((__tmp202018
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch198936%_
                                                           '()))
                                               _%args198905%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp202018
                               _%stx198904%_
                               _%ctx198903%_)))
                          (gxc#!procedure::optimize-call
                           _%self198909%_
                           _%ctx198903%_
                           _%stx198904%_
                           _%args198905%_)))))
               (_%e198922198945%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198918198928%_ '1 '#f '#f)))
               (_%e198923198948%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198918198928%_ '2 '#f '#f)))
               (_%e198924198951%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198918198928%_ '3 '#f '#f)))
               (_%arity198954%_ _%e198924198951%_)
               (_%e198925198956%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198918198928%_ '4 '#f '#f)))
               (_%dispatch198959%_ _%e198925198956%_)
               (_%e198926198961%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198918198928%_ '5 '#f '#f)))
               (_%inline198964%_ _%e198926198961%_))
          (_%K198921198942%_
           _%inline198964%_
           _%dispatch198959%_
           _%arity198954%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self197172198751%_ _%ctx198753%_ _%stx198754%_ _%args198755%_)
        (let* ((_%self198757%_ _%self197172198751%_)
               (_%self198759%_ _%self198757%_)
               (_%$e198773%_
                (let ((__tmp202020
                       (lambda (_%g198768198770%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g198768198770%_
                            _%args198755%_))))
                      (__tmp202019
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self198759%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp202020 __tmp202019))))
          (if _%$e198773%_
              ((lambda (_%clause198776%_)
                 (let ((__method201924
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause198776%_ 'optimize-call))))
                   (if __method201924
                       (let ()
                         (declare (not safe))
                         (__method201924
                          _%clause198776%_
                          _%ctx198753%_
                          _%stx198754%_
                          _%args198755%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause198776%_
                                  'optimize-call))
                         '#!void))))
               _%$e198773%_)
              (let ((__tmp202021
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self198759%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx198754%_
                 __tmp202021))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self197173198489%_ _%ctx198491%_ _%stx198492%_ _%args198493%_)
        (let* ((_%self198495%_ _%self197173198489%_)
               (_%self198497%_ _%self198495%_)
               (_%self198506198515%_ _%self198497%_)
               (_%E198508198519%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198506198515%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K198509198610%_
                (lambda (_%dispatch198522%_ _%table198523%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch198522%_))
                      (let* ((_%g198524198534%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch198522%_)))
                             (_%else198526198542%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch198522%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx198491%_
                                   _%stx198492%_))))
                             (_%K198528198591%_
                              (lambda (_%main198545%_ _%keys198546%_)
                                (let ((_g202022_
                                       (gxc#!kw-lambda-split-args
                                        _%stx198492%_
                                        _%args198493%_)))
                                  (begin
                                    (let ((_g202023_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g202022_)
                                                 (##values-length _g202022_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g202023_ 2)))
                                          (error "Context expects 2 values"
                                                 _g202023_)))
                                    (let ((_%pargs198548%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202022_ 0)))
                                          (_%kwargs198549%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g202022_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main198545%_))
                                        (if _%table198523%_
                                            (let ((_%xargs198557%_
                                                   (map (lambda (_%key198551%_)
                                                          (let ((_%$e198553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key198551%_ _%kwargs198549%_))))
                    (if _%$e198553%_ _%$e198553%_ '(%#ref absent-value))))
                _%keys198546%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw198559%_)
                                                 (if (memq (car _%kw198559%_)
                                                           _%keys198546%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx198492%_
                                                        _%keys198546%_
                                                        _%kw198559%_))))
                                               _%kwargs198549%_)
                                              (let ((__tmp202024
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main198545%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  _%pargs198548%_
                                  _%xargs198557%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp202024
                                                 _%stx198492%_
                                                 _%ctx198491%_)))
                                            (let* ((_%kwt198561%_
                                                    (let ((__tmp202025
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp202025)))
                                                   (_%kwvars198565%_
                                                    (map (lambda (_%_198563%_)
                                                           (let ((__tmp202026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp202026)))
                 _%kwargs198549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind198570%_
                                                    (map (lambda (_%kw198567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar198568%_)
                   (cons (cons _%kwvar198568%_ '())
                         (cons (cdr _%kw198567%_) '())))
                 _%kwargs198549%_
                 _%kwvars198565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset198575%_
                                                    (map (lambda (_%kw198572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar198573%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt198561%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw198572%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar198573%_
                                                             '()))
                                                 '()))))))
                 _%kwargs198549%_
                 _%kwvars198565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs198580%_
                                                    (map (lambda (_%kw198577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar198578%_)
                   (cons (car _%kw198577%_)
                         (cons '%#ref (cons _%kwvar198578%_ '()))))
                 _%kwargs198549%_
                 _%kwvars198565%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs198588%_
                                                    (map (lambda (_%key198582%_)
                                                           (let ((_%$e198584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key198582%_ _%xkwargs198580%_))))
                     (if _%$e198584%_ _%$e198584%_ '(%#ref absent-value))))
                 _%keys198546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp202027
                                                    (cons '%#let-values
                                                          (cons _%kwbind198570%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt198561%_ '())
                                                      (cons (let ((__tmp202028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs198549%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp202028 _%stx198492%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp202029
                                                             (cons (let ((__tmp202030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main198545%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt198561%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldr1
                                                       cons
                                                       _%pargs198548%_
                                                       _%xargs198588%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp202030 _%stx198492%_))
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp202029 _%kwset198575%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp202027
                                               _%stx198492%_
                                               _%ctx198491%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g198524198534%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e198529198594%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g198524198534%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e198530198597%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g198524198534%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e198531198600%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g198524198534%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys198603%_ _%e198531198600%_)
                                   (_%e198532198605%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g198524198534%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main198608%_ _%e198532198605%_))
                              (_%K198528198591%_
                               _%main198608%_
                               _%keys198603%_))
                            (_%else198526198542%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx198491%_ _%stx198492%_)))))
               (_%e198510198613%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198506198515%_ '1 '#f '#f)))
               (_%e198511198616%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198506198515%_ '2 '#f '#f)))
               (_%e198512198619%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198506198515%_ '3 '#f '#f)))
               (_%table198622%_ _%e198512198619%_)
               (_%e198513198624%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198506198515%_ '4 '#f '#f)))
               (_%dispatch198627%_ _%e198513198624%_))
          (_%K198509198610%_ _%dispatch198627%_ _%table198622%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx198102%_ _%args198103%_)
        (let _%lp198105%_ ((_%rest198107%_ _%args198103%_)
                           (_%pargs198108%_ '())
                           (_%kwargs198109%_ '()))
          (let* ((_%__stx201483201484%_ _%rest198107%_)
                 (_%g198115198167%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201483201484%_)))))
            (let ((_%__kont201485201486%_
                   (lambda (_%L198346%_ _%L198347%_)
                     (_%lp198105%_
                      _%L198346%_
                      (cons _%L198347%_ _%pargs198108%_)
                      _%kwargs198109%_)))
                  (_%__kont201487201488%_
                   (lambda (_%L198292%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L198292%_ _%pargs198108%_))
                             (reverse _%kwargs198109%_))))
                  (_%__kont201489201490%_
                   (lambda (_%L198239%_ _%L198240%_ _%L198241%_)
                     (let ((_%kw198258%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198241%_))))
                       (if (assq _%kw198258%_ _%kwargs198109%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx198102%_
                              _%kw198258%_))
                           (_%lp198105%_
                            _%L198239%_
                            _%pargs198108%_
                            (cons (cons _%kw198258%_ _%L198240%_)
                                  _%kwargs198109%_))))))
                  (_%__kont201491201492%_
                   (lambda (_%L198187%_ _%L198188%_)
                     (_%lp198105%_
                      _%L198187%_
                      (cons _%L198188%_ _%pargs198108%_)
                      _%kwargs198109%_)))
                  (_%__kont201493201494%_
                   (lambda ()
                     (values (reverse _%pargs198108%_)
                             (reverse _%kwargs198109%_)))))
              (let ((_%__match201590201591%_
                     (lambda (_%e198146198207%_
                              _%hd198147198210%_
                              _%tl198148198212%_
                              _%e198149198215%_
                              _%hd198150198218%_
                              _%tl198151198220%_
                              _%e198152198223%_
                              _%hd198153198226%_
                              _%tl198154198228%_
                              _%e198155198231%_
                              _%hd198156198234%_
                              _%tl198157198236%_)
                       (let ((_%L198239%_ _%tl198157198236%_)
                             (_%L198240%_ _%hd198156198234%_)
                             (_%L198241%_ _%hd198153198226%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L198241%_))
                             (_%__kont201489201490%_
                              _%L198239%_
                              _%L198240%_
                              _%L198241%_)
                             (_%__kont201491201492%_
                              _%tl198148198212%_
                              _%hd198147198210%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201483201484%_))
                    (let ((_%e198119198311%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201483201484%_))))
                      (let ((_%tl198121198316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198119198311%_)))
                            (_%hd198120198314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198119198311%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd198120198314%_))
                            (let ((_%e198122198319%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd198120198314%_))))
                              (let ((_%tl198124198324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198122198319%_)))
                                    (_%hd198123198322%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198122198319%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198123198322%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd198123198322%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198124198324%_))
                                            (let ((_%e198125198327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198124198324%_))))
                                              (let ((_%tl198127198332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198125198327%_)))
                                                    (_%hd198126198330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198125198327%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198126198330%_))
                                                    (let ((_%e198128198335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198126198330%_))))
                                                      (if (equal? _%e198128198335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198127198332%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198121198316%_))
                          (let ((_%e198129198338%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198121198316%_))))
                            (let ((_%tl198131198343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198129198338%_)))
                                  (_%hd198130198341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198129198338%_))))
                              (_%__kont201485201486%_
                               _%tl198131198343%_
                               _%hd198130198341%_)))
                          (_%__kont201491201492%_
                           _%tl198121198316%_
                           _%hd198120198314%_))
                      (_%__kont201491201492%_
                       _%tl198121198316%_
                       _%hd198120198314%_))
                  (if (equal? _%e198128198335%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198127198332%_))
                          (_%__kont201487201488%_ _%tl198121198316%_)
                          (_%__kont201491201492%_
                           _%tl198121198316%_
                           _%hd198120198314%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198127198332%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198121198316%_))
                              (let ((_%e198155198231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198121198316%_))))
                                (let ((_%tl198157198236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198155198231%_)))
                                      (_%hd198156198234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198155198231%_))))
                                  (_%__match201590201591%_
                                   _%e198119198311%_
                                   _%hd198120198314%_
                                   _%tl198121198316%_
                                   _%e198122198319%_
                                   _%hd198123198322%_
                                   _%tl198124198324%_
                                   _%e198125198327%_
                                   _%hd198126198330%_
                                   _%tl198127198332%_
                                   _%e198155198231%_
                                   _%hd198156198234%_
                                   _%tl198157198236%_)))
                              (_%__kont201491201492%_
                               _%tl198121198316%_
                               _%hd198120198314%_))
                          (_%__kont201491201492%_
                           _%tl198121198316%_
                           _%hd198120198314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198127198332%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198121198316%_))
                                                            (let ((_%e198155198231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198121198316%_))))
                      (let ((_%tl198157198236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198155198231%_)))
                            (_%hd198156198234%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198155198231%_))))
                        (_%__match201590201591%_
                         _%e198119198311%_
                         _%hd198120198314%_
                         _%tl198121198316%_
                         _%e198122198319%_
                         _%hd198123198322%_
                         _%tl198124198324%_
                         _%e198125198327%_
                         _%hd198126198330%_
                         _%tl198127198332%_
                         _%e198155198231%_
                         _%hd198156198234%_
                         _%tl198157198236%_)))
                    (_%__kont201491201492%_
                     _%tl198121198316%_
                     _%hd198120198314%_))
                (_%__kont201491201492%_
                 _%tl198121198316%_
                 _%hd198120198314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont201491201492%_
                                             _%tl198121198316%_
                                             _%hd198120198314%_))
                                        (_%__kont201491201492%_
                                         _%tl198121198316%_
                                         _%hd198120198314%_))
                                    (_%__kont201491201492%_
                                     _%tl198121198316%_
                                     _%hd198120198314%_))))
                            (_%__kont201491201492%_
                             _%tl198121198316%_
                             _%hd198120198314%_))))
                    (_%__kont201493201494%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self197174198084%_ _%ctx198086%_ _%stx198087%_ _%args198088%_)
        (let* ((_%self198090%_ _%self197174198084%_)
               (_%self198092%_ _%self198090%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx198086%_ _%stx198087%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self197772%_ _%stx197773%_)
        (let* ((_%__stx201599201600%_ _%stx197773%_)
               (_%g197776197816%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201599201600%_)))))
          (let ((_%__kont201601201602%_
                 (lambda (_%L197922%_ _%L197923%_)
                   (let ((_%$e197950%_
                          (member 'return:
                                  (let ((__tmp202031
                                         (lambda (_%g197942197945%_
                                                  _%g197943197947%_)
                                           (cons _%g197942197945%_
                                                 _%g197943197947%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp202031 '() _%L197923%_))
                                  gx#stx-eq?)))
                     (if _%$e197950%_
                         ((lambda (_%tail197953%_)
                            (let ((_%type197955%_
                                   (let ((__tmp202032
                                          (let ((__tmp202033
                                                 (cadr _%tail197953%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp202033))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx197773%_
                                      __tmp202032))))
                              (gxc#check-return-type!
                               _%stx197773%_
                               _%L197922%_
                               _%type197955%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self197772%_
                                 _%L197922%_))))
                          _%$e197950%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self197772%_ _%L197922%_))))))
                (_%__kont201605201606%_
                 (lambda (_%L197845%_ _%L197846%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197772%_ _%L197845%_)))))
            (let ((_%__match201636201637%_
                   (lambda (_%e197780197866%_
                            _%hd197781197869%_
                            _%tl197782197871%_
                            _%e197783197874%_
                            _%hd197784197877%_
                            _%tl197785197879%_
                            _%e197786197882%_
                            _%hd197787197885%_
                            _%tl197788197887%_
                            _%__splice201603201604%_
                            _%target197789197890%_
                            _%tl197791197892%_)
                     (letrec ((_%loop197792197895%_
                               (lambda (_%hd197790197898%_
                                        _%signature197796197900%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197790197898%_))
                                     (let ((_%e197793197903%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd197790197898%_))))
                                       (let ((_%lp-tl197795197908%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197793197903%_)))
                                             (_%lp-hd197794197906%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197793197903%_))))
                                         (_%loop197792197895%_
                                          _%lp-tl197795197908%_
                                          (cons _%lp-hd197794197906%_
                                                _%signature197796197900%_))))
                                     (let ((_%signature197797197911%_
                                            (reverse _%signature197796197900%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl197785197879%_))
                                           (let ((_%e197798197914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl197785197879%_))))
                                             (let ((_%tl197800197919%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197798197914%_)))
                                                   (_%hd197799197917%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197798197914%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl197800197919%_))
                                                   (_%__kont201601201602%_
                                                    _%hd197799197917%_
                                                    _%signature197797197911%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g197776197816%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g197776197816%_))))))))
                       (_%loop197792197895%_ _%target197789197890%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201599201600%_))
                  (let ((_%e197780197866%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201599201600%_))))
                    (let ((_%tl197782197871%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197780197866%_)))
                          (_%hd197781197869%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197780197866%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197782197871%_))
                          (let ((_%e197783197874%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197782197871%_))))
                            (let ((_%tl197785197879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197783197874%_)))
                                  (_%hd197784197877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197783197874%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197784197877%_))
                                  (let ((_%e197786197882%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197784197877%_))))
                                    (let ((_%tl197788197887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197786197882%_)))
                                          (_%hd197787197885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197786197882%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197787197885%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd197787197885%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl197788197887%_))
                                                  (let ((_%__splice201603201604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl197788197887%_
                                                            '0))))
                                                    (let ((_%tl197791197892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice201603201604%_
                                                              '1)))
                                                          (_%target197789197890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice201603201604%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197791197892%_))
                                                          (_%__match201636201637%_
                                                           _%e197780197866%_
                                                           _%hd197781197869%_
                                                           _%tl197782197871%_
                                                           _%e197783197874%_
                                                           _%hd197784197877%_
                                                           _%tl197785197879%_
                                                           _%e197786197882%_
                                                           _%hd197787197885%_
                                                           _%tl197788197887%_
                                                           _%__splice201603201604%_
                                                           _%target197789197890%_
                                                           _%tl197791197892%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197785197879%_))
                      (let ((_%e197809197837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197785197879%_))))
                        (let ((_%tl197811197842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197809197837%_)))
                              (_%hd197810197840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197809197837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197811197842%_))
                              (_%__kont201605201606%_
                               _%hd197810197840%_
                               _%hd197784197877%_)
                              (let ()
                                (declare (not safe))
                                (_%g197776197816%_)))))
                      (let () (declare (not safe)) (_%g197776197816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197785197879%_))
                                                      (let ((_%e197809197837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197785197879%_))))
                (let ((_%tl197811197842%_
                       (let () (declare (not safe)) (##cdr _%e197809197837%_)))
                      (_%hd197810197840%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197809197837%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197811197842%_))
                      (_%__kont201605201606%_
                       _%hd197810197840%_
                       _%hd197784197877%_)
                      (let () (declare (not safe)) (_%g197776197816%_)))))
              (let () (declare (not safe)) (_%g197776197816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197785197879%_))
                                                  (let ((_%e197809197837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197785197879%_))))
                                                    (let ((_%tl197811197842%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197809197837%_)))
                                                          (_%hd197810197840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197809197837%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197811197842%_))
                                                          (_%__kont201605201606%_
                                                           _%hd197810197840%_
                                                           _%hd197784197877%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197776197816%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197776197816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197785197879%_))
                                              (let ((_%e197809197837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197785197879%_))))
                                                (let ((_%tl197811197842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197809197837%_)))
                                                      (_%hd197810197840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197809197837%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197811197842%_))
                                                      (_%__kont201605201606%_
                                                       _%hd197810197840%_
                                                       _%hd197784197877%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197776197816%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197776197816%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197785197879%_))
                                      (let ((_%e197809197837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197785197879%_))))
                                        (let ((_%tl197811197842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197809197837%_)))
                                              (_%hd197810197840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197809197837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197811197842%_))
                                              (_%__kont201605201606%_
                                               _%hd197810197840%_
                                               _%hd197784197877%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197776197816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197776197816%_))))))
                          (let () (declare (not safe)) (_%g197776197816%_)))))
                  (let () (declare (not safe)) (_%g197776197816%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx197750%_ _%expr197751%_ _%type197752%_)
        (let ((_%$e197754%_ (not _%type197752%_)))
          (if _%$e197754%_
              _%$e197754%_
              (let ((_%$e197757%_
                     (eq? (##structure-ref _%type197752%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e197757%_
                    _%$e197757%_
                    (let ((_%expr-type197761%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr197751%_))))
                      (if (not _%expr-type197761%_)
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx197750%_
                             _%type197752%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type197761%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx197750%_
                                 _%type197752%_
                                 _%expr-type197761%_))
                              (let ((_%$e197765%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type197761%_
                                        'gxc#!abort::t))))
                                (if _%$e197765%_
                                    _%$e197765%_
                                    (let ((_%$e197768%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type197761%_
                                              _%type197752%_))))
                                      (if _%$e197768%_
                                          _%$e197768%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx197750%_
                                             _%type197752%_
                                             _%expr-type197761%_)))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self197176%_ _%stx197177%_)
        (let* ((_%__stx201681201682%_ _%stx197177%_)
               (_%g197182197292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201681201682%_)))))
          (let ((_%__kont201683201684%_
                 (lambda (_%L197724%_ _%L197725%_ _%L197726%_)
                   (if (let () (declare (not safe)) (gx#stx-e _%L197726%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self197176%_ _%L197725%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self197176%_ _%L197724%_)))))
                (_%__kont201685201686%_
                 (lambda (_%L197550%_ _%L197551%_ _%L197552%_ _%L197553%_)
                   (let ((_%$e197585%_
                          (let ((__tmp202034
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L197553%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp202034))))
                     (if _%$e197585%_
                         ((lambda (_%pred-type197588%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type197588%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type197588%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test197593%_
                                        (let ((__tmp202035
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%L197553%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%L197552%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp202035
                                           _%stx197177%_
                                           _%self197176%_)))
                                       (_%K197597%_
                                        (let ((__tmp202036
                                               (lambda ()
                                                 (let ((__tmp202039
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self197176%_
                                                             _%L197551%_))))
                                                       (__tmp202037
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%L197552%_))
                            (let ((__tmp202038
                                   (##structure-ref
                                    _%pred-type197588%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx197177%_
                               __tmp202038)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp202039
                                                    gxc#current-compile-path-type
                                                    __tmp202037)))))
                                          (declare (not safe))
                                          (__make-promise __tmp202036)))
                                       (_%E197600%_
                                        (let ((__tmp202040
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self197176%_
                                                    _%L197550%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp202040)))
                                       (_%__stx201659201660%_ _%test197593%_)
                                       (_%g197604197618%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx201659201660%_)))))
                                  (let ((_%__kont201661201662%_
                                         (lambda (_%L197646%_ _%L197647%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L197646%_))
                                               (force _%K197597%_)
                                               (force _%E197600%_))))
                                        (_%__kont201663201664%_
                                         (lambda ()
                                           (let ((__tmp202041
                                                  (cons '%#if
                                                        (cons _%test197593%_
                                                              (cons (force _%K197597%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E197600%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp202041
                                              _%stx197177%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx201659201660%_))
                                        (let ((_%e197608197630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx201659201660%_))))
                                          (let ((_%tl197610197635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197608197630%_)))
                                                (_%hd197609197633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197608197630%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197610197635%_))
                                                (let ((_%e197611197638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197610197635%_))))
                                                  (let ((_%tl197613197643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197611197638%_)))
                                                        (_%hd197612197641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197611197638%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197613197643%_))
                                                        (_%__kont201661201662%_
                                                         _%hd197612197641%_
                                                         _%hd197609197633%_)
                                                        (_%__kont201663201664%_))))
                                                (_%__kont201663201664%_))))
                                        (_%__kont201663201664%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self197176%_
                                   _%stx197177%_))))
                          _%$e197585%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self197176%_
                            _%stx197177%_))))))
                (_%__kont201687201688%_
                 (lambda (_%L197426%_ _%L197427%_ _%L197428%_ _%L197429%_)
                   (gxc#optimize-if%
                    _%self197176%_
                    (let ((__tmp202042
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%L197428%_
                                       (cons _%L197426%_
                                             (cons _%L197427%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp202042 _%stx197177%_)))))
                (_%__kont201689201690%_
                 (lambda (_%L197329%_ _%L197330%_ _%L197331%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self197176%_ _%stx197177%_)))))
            (let ((_%__match201888201889%_
                   (lambda (_%e197246197354%_
                            _%hd197247197357%_
                            _%tl197248197359%_
                            _%e197249197362%_
                            _%hd197250197365%_
                            _%tl197251197367%_
                            _%e197252197370%_
                            _%hd197253197373%_
                            _%tl197254197375%_
                            _%e197255197378%_
                            _%hd197256197381%_
                            _%tl197257197383%_
                            _%e197258197386%_
                            _%hd197259197389%_
                            _%tl197260197391%_
                            _%e197261197394%_
                            _%hd197262197397%_
                            _%tl197263197399%_
                            _%e197264197402%_
                            _%hd197265197405%_
                            _%tl197266197407%_
                            _%e197267197410%_
                            _%hd197268197413%_
                            _%tl197269197415%_
                            _%e197270197418%_
                            _%hd197271197421%_
                            _%tl197272197423%_)
                     (let ((_%L197426%_ _%hd197271197421%_)
                           (_%L197427%_ _%hd197268197413%_)
                           (_%L197428%_ _%hd197265197405%_)
                           (_%L197429%_ _%hd197262197397%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%L197429%_ 'not))
                           (_%__kont201687201688%_
                            _%L197426%_
                            _%L197427%_
                            _%L197428%_
                            _%L197429%_)
                           (_%__kont201689201690%_
                            _%hd197271197421%_
                            _%hd197268197413%_
                            _%hd197250197365%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201681201682%_))
                  (let ((_%e197187197676%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201681201682%_))))
                    (let ((_%tl197189197681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197187197676%_)))
                          (_%hd197188197679%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197187197676%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197189197681%_))
                          (let ((_%e197190197684%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197189197681%_))))
                            (let ((_%tl197192197689%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197190197684%_)))
                                  (_%hd197191197687%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197190197684%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197191197687%_))
                                  (let ((_%e197193197692%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197191197687%_))))
                                    (let ((_%tl197195197697%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197193197692%_)))
                                          (_%hd197194197695%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197193197692%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197194197695%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd197194197695%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197195197697%_))
                                                  (let ((_%e197196197700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197195197697%_))))
                                                    (let ((_%tl197198197705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197196197700%_)))
                                                          (_%hd197197197703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197196197700%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197198197705%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197192197689%_))
                      (let ((_%e197199197708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197192197689%_))))
                        (let ((_%tl197201197713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197199197708%_)))
                              (_%hd197200197711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197199197708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197201197713%_))
                              (let ((_%e197202197716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197201197713%_))))
                                (let ((_%tl197204197721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197202197716%_)))
                                      (_%hd197203197719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197202197716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197204197721%_))
                                      (_%__kont201683201684%_
                                       _%hd197203197719%_
                                       _%hd197200197711%_
                                       _%hd197197197703%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197182197292%_)))))
                      (let () (declare (not safe)) (_%g197182197292%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197192197689%_))
                      (let ((_%e197282197313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197192197689%_))))
                        (let ((_%tl197284197318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197282197313%_)))
                              (_%hd197283197316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197282197313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197284197318%_))
                              (let ((_%e197285197321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197284197318%_))))
                                (let ((_%tl197287197326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197285197321%_)))
                                      (_%hd197286197324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197285197321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197287197326%_))
                                      (_%__kont201689201690%_
                                       _%hd197286197324%_
                                       _%hd197283197316%_
                                       _%hd197191197687%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197182197292%_)))))
                      (let () (declare (not safe)) (_%g197182197292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197192197689%_))
                                                      (let ((_%e197282197313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197192197689%_))))
                (let ((_%tl197284197318%_
                       (let () (declare (not safe)) (##cdr _%e197282197313%_)))
                      (_%hd197283197316%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197282197313%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197284197318%_))
                      (let ((_%e197285197321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197284197318%_))))
                        (let ((_%tl197287197326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197285197321%_)))
                              (_%hd197286197324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197285197321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197287197326%_))
                              (_%__kont201689201690%_
                               _%hd197286197324%_
                               _%hd197283197316%_
                               _%hd197191197687%_)
                              (let ()
                                (declare (not safe))
                                (_%g197182197292%_)))))
                      (let () (declare (not safe)) (_%g197182197292%_)))))
              (let () (declare (not safe)) (_%g197182197292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd197194197695%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197195197697%_))
                                                      (let ((_%e197218197486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197195197697%_))))
                (let ((_%tl197220197491%_
                       (let () (declare (not safe)) (##cdr _%e197218197486%_)))
                      (_%hd197219197489%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197218197486%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197219197489%_))
                      (let ((_%e197221197494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197219197489%_))))
                        (let ((_%tl197223197499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197221197494%_)))
                              (_%hd197222197497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197221197494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197222197497%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197222197497%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197223197499%_))
                                      (let ((_%e197224197502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197223197499%_))))
                                        (let ((_%tl197226197507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197224197502%_)))
                                              (_%hd197225197505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197224197502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197226197507%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197220197491%_))
                                                  (let ((_%e197227197510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197220197491%_))))
                                                    (let ((_%tl197229197515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197227197510%_)))
                                                          (_%hd197228197513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197227197510%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197228197513%_))
                                                          (let ((_%e197230197518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197228197513%_))))
                    (let ((_%tl197232197523%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197230197518%_)))
                          (_%hd197231197521%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197230197518%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197231197521%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd197231197521%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197232197523%_))
                                  (let ((_%e197233197526%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197232197523%_))))
                                    (let ((_%tl197235197531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197233197526%_)))
                                          (_%hd197234197529%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197233197526%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197235197531%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197229197515%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197192197689%_))
                                                  (let ((_%e197236197534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197192197689%_))))
                                                    (let ((_%tl197238197539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197236197534%_)))
                                                          (_%hd197237197537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197236197534%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197238197539%_))
                                                          (let ((_%e197239197542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197238197539%_))))
                    (let ((_%tl197241197547%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197239197542%_)))
                          (_%hd197240197545%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197239197542%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197241197547%_))
                          (_%__kont201685201686%_
                           _%hd197240197545%_
                           _%hd197237197537%_
                           _%hd197234197529%_
                           _%hd197225197505%_)
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197192197689%_))
                                                  (let ((_%e197282197313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197192197689%_))))
                                                    (let ((_%tl197284197318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197282197313%_)))
                                                          (_%hd197283197316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197282197313%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197284197318%_))
                                                          (let ((_%e197285197321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197284197318%_))))
                    (let ((_%tl197287197326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197285197321%_)))
                          (_%hd197286197324%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197285197321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197287197326%_))
                          (_%__kont201689201690%_
                           _%hd197286197324%_
                           _%hd197283197316%_
                           _%hd197191197687%_)
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197229197515%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197192197689%_))
                                                  (let ((_%e197267197410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197192197689%_))))
                                                    (let ((_%tl197269197415%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197267197410%_)))
                                                          (_%hd197268197413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197267197410%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197269197415%_))
                                                          (let ((_%e197270197418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197269197415%_))))
                    (let ((_%tl197272197423%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197270197418%_)))
                          (_%hd197271197421%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197270197418%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197272197423%_))
                          (_%__match201888201889%_
                           _%e197187197676%_
                           _%hd197188197679%_
                           _%tl197189197681%_
                           _%e197190197684%_
                           _%hd197191197687%_
                           _%tl197192197689%_
                           _%e197193197692%_
                           _%hd197194197695%_
                           _%tl197195197697%_
                           _%e197218197486%_
                           _%hd197219197489%_
                           _%tl197220197491%_
                           _%e197221197494%_
                           _%hd197222197497%_
                           _%tl197223197499%_
                           _%e197224197502%_
                           _%hd197225197505%_
                           _%tl197226197507%_
                           _%e197227197510%_
                           _%hd197228197513%_
                           _%tl197229197515%_
                           _%e197267197410%_
                           _%hd197268197413%_
                           _%tl197269197415%_
                           _%e197270197418%_
                           _%hd197271197421%_
                           _%tl197272197423%_)
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197192197689%_))
                                                  (let ((_%e197282197313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197192197689%_))))
                                                    (let ((_%tl197284197318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197282197313%_)))
                                                          (_%hd197283197316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197282197313%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197284197318%_))
                                                          (let ((_%e197285197321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197284197318%_))))
                    (let ((_%tl197287197326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197285197321%_)))
                          (_%hd197286197324%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197285197321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197287197326%_))
                          (_%__kont201689201690%_
                           _%hd197286197324%_
                           _%hd197283197316%_
                           _%hd197191197687%_)
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197229197515%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197192197689%_))
                                          (let ((_%e197267197410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197192197689%_))))
                                            (let ((_%tl197269197415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197267197410%_)))
                                                  (_%hd197268197413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197267197410%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197269197415%_))
                                                  (let ((_%e197270197418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197269197415%_))))
                                                    (let ((_%tl197272197423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197270197418%_)))
                                                          (_%hd197271197421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197270197418%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197272197423%_))
                                                          (_%__match201888201889%_
                                                           _%e197187197676%_
                                                           _%hd197188197679%_
                                                           _%tl197189197681%_
                                                           _%e197190197684%_
                                                           _%hd197191197687%_
                                                           _%tl197192197689%_
                                                           _%e197193197692%_
                                                           _%hd197194197695%_
                                                           _%tl197195197697%_
                                                           _%e197218197486%_
                                                           _%hd197219197489%_
                                                           _%tl197220197491%_
                                                           _%e197221197494%_
                                                           _%hd197222197497%_
                                                           _%tl197223197499%_
                                                           _%e197224197502%_
                                                           _%hd197225197505%_
                                                           _%tl197226197507%_
                                                           _%e197227197510%_
                                                           _%hd197228197513%_
                                                           _%tl197229197515%_
                                                           _%e197267197410%_
                                                           _%hd197268197413%_
                                                           _%tl197269197415%_
                                                           _%e197270197418%_
                                                           _%hd197271197421%_
                                                           _%tl197272197423%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197182197292%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197192197689%_))
                                          (let ((_%e197282197313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197192197689%_))))
                                            (let ((_%tl197284197318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197282197313%_)))
                                                  (_%hd197283197316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197282197313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197284197318%_))
                                                  (let ((_%e197285197321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197284197318%_))))
                                                    (let ((_%tl197287197326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197285197321%_)))
                                                          (_%hd197286197324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197285197321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197287197326%_))
                                                          (_%__kont201689201690%_
                                                           _%hd197286197324%_
                                                           _%hd197283197316%_
                                                           _%hd197191197687%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197182197292%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197229197515%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197192197689%_))
                                      (let ((_%e197267197410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197192197689%_))))
                                        (let ((_%tl197269197415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197267197410%_)))
                                              (_%hd197268197413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197267197410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197269197415%_))
                                              (let ((_%e197270197418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197269197415%_))))
                                                (let ((_%tl197272197423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197270197418%_)))
                                                      (_%hd197271197421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197270197418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197272197423%_))
                                                      (_%__match201888201889%_
                                                       _%e197187197676%_
                                                       _%hd197188197679%_
                                                       _%tl197189197681%_
                                                       _%e197190197684%_
                                                       _%hd197191197687%_
                                                       _%tl197192197689%_
                                                       _%e197193197692%_
                                                       _%hd197194197695%_
                                                       _%tl197195197697%_
                                                       _%e197218197486%_
                                                       _%hd197219197489%_
                                                       _%tl197220197491%_
                                                       _%e197221197494%_
                                                       _%hd197222197497%_
                                                       _%tl197223197499%_
                                                       _%e197224197502%_
                                                       _%hd197225197505%_
                                                       _%tl197226197507%_
                                                       _%e197227197510%_
                                                       _%hd197228197513%_
                                                       _%tl197229197515%_
                                                       _%e197267197410%_
                                                       _%hd197268197413%_
                                                       _%tl197269197415%_
                                                       _%e197270197418%_
                                                       _%hd197271197421%_
                                                       _%tl197272197423%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197182197292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197182197292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197192197689%_))
                                      (let ((_%e197282197313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197192197689%_))))
                                        (let ((_%tl197284197318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197282197313%_)))
                                              (_%hd197283197316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197282197313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197284197318%_))
                                              (let ((_%e197285197321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197284197318%_))))
                                                (let ((_%tl197287197326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197285197321%_)))
                                                      (_%hd197286197324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197285197321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197287197326%_))
                                                      (_%__kont201689201690%_
                                                       _%hd197286197324%_
                                                       _%hd197283197316%_
                                                       _%hd197191197687%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197182197292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197182197292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197229197515%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197192197689%_))
                                  (let ((_%e197267197410%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197192197689%_))))
                                    (let ((_%tl197269197415%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197267197410%_)))
                                          (_%hd197268197413%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197267197410%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197269197415%_))
                                          (let ((_%e197270197418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197269197415%_))))
                                            (let ((_%tl197272197423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197270197418%_)))
                                                  (_%hd197271197421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197270197418%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197272197423%_))
                                                  (_%__match201888201889%_
                                                   _%e197187197676%_
                                                   _%hd197188197679%_
                                                   _%tl197189197681%_
                                                   _%e197190197684%_
                                                   _%hd197191197687%_
                                                   _%tl197192197689%_
                                                   _%e197193197692%_
                                                   _%hd197194197695%_
                                                   _%tl197195197697%_
                                                   _%e197218197486%_
                                                   _%hd197219197489%_
                                                   _%tl197220197491%_
                                                   _%e197221197494%_
                                                   _%hd197222197497%_
                                                   _%tl197223197499%_
                                                   _%e197224197502%_
                                                   _%hd197225197505%_
                                                   _%tl197226197507%_
                                                   _%e197227197510%_
                                                   _%hd197228197513%_
                                                   _%tl197229197515%_
                                                   _%e197267197410%_
                                                   _%hd197268197413%_
                                                   _%tl197269197415%_
                                                   _%e197270197418%_
                                                   _%hd197271197421%_
                                                   _%tl197272197423%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197192197689%_))
                                  (let ((_%e197282197313%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197192197689%_))))
                                    (let ((_%tl197284197318%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197282197313%_)))
                                          (_%hd197283197316%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197282197313%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197284197318%_))
                                          (let ((_%e197285197321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197284197318%_))))
                                            (let ((_%tl197287197326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197285197321%_)))
                                                  (_%hd197286197324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197285197321%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197287197326%_))
                                                  (_%__kont201689201690%_
                                                   _%hd197286197324%_
                                                   _%hd197283197316%_
                                                   _%hd197191197687%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197229197515%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197192197689%_))
                          (let ((_%e197267197410%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197192197689%_))))
                            (let ((_%tl197269197415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197267197410%_)))
                                  (_%hd197268197413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197267197410%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197269197415%_))
                                  (let ((_%e197270197418%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197269197415%_))))
                                    (let ((_%tl197272197423%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197270197418%_)))
                                          (_%hd197271197421%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197270197418%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197272197423%_))
                                          (_%__match201888201889%_
                                           _%e197187197676%_
                                           _%hd197188197679%_
                                           _%tl197189197681%_
                                           _%e197190197684%_
                                           _%hd197191197687%_
                                           _%tl197192197689%_
                                           _%e197193197692%_
                                           _%hd197194197695%_
                                           _%tl197195197697%_
                                           _%e197218197486%_
                                           _%hd197219197489%_
                                           _%tl197220197491%_
                                           _%e197221197494%_
                                           _%hd197222197497%_
                                           _%tl197223197499%_
                                           _%e197224197502%_
                                           _%hd197225197505%_
                                           _%tl197226197507%_
                                           _%e197227197510%_
                                           _%hd197228197513%_
                                           _%tl197229197515%_
                                           _%e197267197410%_
                                           _%hd197268197413%_
                                           _%tl197269197415%_
                                           _%e197270197418%_
                                           _%hd197271197421%_
                                           _%tl197272197423%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))))
                          (let () (declare (not safe)) (_%g197182197292%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197192197689%_))
                          (let ((_%e197282197313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197192197689%_))))
                            (let ((_%tl197284197318%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197282197313%_)))
                                  (_%hd197283197316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197282197313%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197284197318%_))
                                  (let ((_%e197285197321%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197284197318%_))))
                                    (let ((_%tl197287197326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197285197321%_)))
                                          (_%hd197286197324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197285197321%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197287197326%_))
                                          (_%__kont201689201690%_
                                           _%hd197286197324%_
                                           _%hd197283197316%_
                                           _%hd197191197687%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g197182197292%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197192197689%_))
                                                      (let ((_%e197282197313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197192197689%_))))
                (let ((_%tl197284197318%_
                       (let () (declare (not safe)) (##cdr _%e197282197313%_)))
                      (_%hd197283197316%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197282197313%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197284197318%_))
                      (let ((_%e197285197321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197284197318%_))))
                        (let ((_%tl197287197326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197285197321%_)))
                              (_%hd197286197324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197285197321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197287197326%_))
                              (_%__kont201689201690%_
                               _%hd197286197324%_
                               _%hd197283197316%_
                               _%hd197191197687%_)
                              (let ()
                                (declare (not safe))
                                (_%g197182197292%_)))))
                      (let () (declare (not safe)) (_%g197182197292%_)))))
              (let () (declare (not safe)) (_%g197182197292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197192197689%_))
                                                  (let ((_%e197282197313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197192197689%_))))
                                                    (let ((_%tl197284197318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197282197313%_)))
                                                          (_%hd197283197316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197282197313%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197284197318%_))
                                                          (let ((_%e197285197321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197284197318%_))))
                    (let ((_%tl197287197326%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197285197321%_)))
                          (_%hd197286197324%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197285197321%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197287197326%_))
                          (_%__kont201689201690%_
                           _%hd197286197324%_
                           _%hd197283197316%_
                           _%hd197191197687%_)
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197192197689%_))
                                          (let ((_%e197282197313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197192197689%_))))
                                            (let ((_%tl197284197318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197282197313%_)))
                                                  (_%hd197283197316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197282197313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197284197318%_))
                                                  (let ((_%e197285197321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197284197318%_))))
                                                    (let ((_%tl197287197326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197285197321%_)))
                                                          (_%hd197286197324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197285197321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197287197326%_))
                                                          (_%__kont201689201690%_
                                                           _%hd197286197324%_
                                                           _%hd197283197316%_
                                                           _%hd197191197687%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197182197292%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197192197689%_))
                                      (let ((_%e197282197313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197192197689%_))))
                                        (let ((_%tl197284197318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197282197313%_)))
                                              (_%hd197283197316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197282197313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197284197318%_))
                                              (let ((_%e197285197321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197284197318%_))))
                                                (let ((_%tl197287197326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197285197321%_)))
                                                      (_%hd197286197324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197285197321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197287197326%_))
                                                      (_%__kont201689201690%_
                                                       _%hd197286197324%_
                                                       _%hd197283197316%_
                                                       _%hd197191197687%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197182197292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197182197292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197192197689%_))
                                  (let ((_%e197282197313%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197192197689%_))))
                                    (let ((_%tl197284197318%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197282197313%_)))
                                          (_%hd197283197316%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197282197313%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197284197318%_))
                                          (let ((_%e197285197321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197284197318%_))))
                                            (let ((_%tl197287197326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197285197321%_)))
                                                  (_%hd197286197324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197285197321%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197287197326%_))
                                                  (_%__kont201689201690%_
                                                   _%hd197286197324%_
                                                   _%hd197283197316%_
                                                   _%hd197191197687%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197182197292%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197192197689%_))
                          (let ((_%e197282197313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197192197689%_))))
                            (let ((_%tl197284197318%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197282197313%_)))
                                  (_%hd197283197316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197282197313%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197284197318%_))
                                  (let ((_%e197285197321%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197284197318%_))))
                                    (let ((_%tl197287197326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197285197321%_)))
                                          (_%hd197286197324%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197285197321%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197287197326%_))
                                          (_%__kont201689201690%_
                                           _%hd197286197324%_
                                           _%hd197283197316%_
                                           _%hd197191197687%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g197182197292%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))))
                          (let () (declare (not safe)) (_%g197182197292%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl197192197689%_))
                  (let ((_%e197282197313%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197192197689%_))))
                    (let ((_%tl197284197318%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197282197313%_)))
                          (_%hd197283197316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197282197313%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197284197318%_))
                          (let ((_%e197285197321%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197284197318%_))))
                            (let ((_%tl197287197326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197285197321%_)))
                                  (_%hd197286197324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197285197321%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197287197326%_))
                                  (_%__kont201689201690%_
                                   _%hd197286197324%_
                                   _%hd197283197316%_
                                   _%hd197191197687%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197182197292%_)))))
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197192197689%_))
                                                      (let ((_%e197282197313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197192197689%_))))
                (let ((_%tl197284197318%_
                       (let () (declare (not safe)) (##cdr _%e197282197313%_)))
                      (_%hd197283197316%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197282197313%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197284197318%_))
                      (let ((_%e197285197321%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197284197318%_))))
                        (let ((_%tl197287197326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197285197321%_)))
                              (_%hd197286197324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197285197321%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197287197326%_))
                              (_%__kont201689201690%_
                               _%hd197286197324%_
                               _%hd197283197316%_
                               _%hd197191197687%_)
                              (let ()
                                (declare (not safe))
                                (_%g197182197292%_)))))
                      (let () (declare (not safe)) (_%g197182197292%_)))))
              (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197192197689%_))
                                              (let ((_%e197282197313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197192197689%_))))
                                                (let ((_%tl197284197318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197282197313%_)))
                                                      (_%hd197283197316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197282197313%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197284197318%_))
                                                      (let ((_%e197285197321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197284197318%_))))
                (let ((_%tl197287197326%_
                       (let () (declare (not safe)) (##cdr _%e197285197321%_)))
                      (_%hd197286197324%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197285197321%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197287197326%_))
                      (_%__kont201689201690%_
                       _%hd197286197324%_
                       _%hd197283197316%_
                       _%hd197191197687%_)
                      (let () (declare (not safe)) (_%g197182197292%_)))))
              (let () (declare (not safe)) (_%g197182197292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197182197292%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197192197689%_))
                                      (let ((_%e197282197313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197192197689%_))))
                                        (let ((_%tl197284197318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197282197313%_)))
                                              (_%hd197283197316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197282197313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197284197318%_))
                                              (let ((_%e197285197321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197284197318%_))))
                                                (let ((_%tl197287197326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197285197321%_)))
                                                      (_%hd197286197324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197285197321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197287197326%_))
                                                      (_%__kont201689201690%_
                                                       _%hd197286197324%_
                                                       _%hd197283197316%_
                                                       _%hd197191197687%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197182197292%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197182197292%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197182197292%_))))))
                          (let () (declare (not safe)) (_%g197182197292%_)))))
                  (let () (declare (not safe)) (_%g197182197292%_))))))))))
