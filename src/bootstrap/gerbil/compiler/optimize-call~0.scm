(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1771178571)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp254969 (list gxc#::basic-xform::t))
            (__tmp254968 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp254969
         '()
         __tmp254968
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args254246%_
        (apply make-instance gxc#::optimize-call::t _%$args254246%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp254970
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
        (__make-atomic-promise __tmp254970)))
    (define gxc#apply-optimize-call
      (lambda (_%stx254238%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self254241%_
                (let ((__obj254960
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj254960))
               (__tmp254971
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254241%_ _%stx254238%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254971
           gxc#current-compile-method
           _%self254241%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp254973 (list gxc#::void::t))
            (__tmp254972 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp254973
         '()
         __tmp254972
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args254235%_
        (apply make-instance gxc#::check-return-type::t _%$args254235%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp254974
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
        (__make-atomic-promise __tmp254974)))
    (define gxc#apply-check-return-type
      (lambda (_%stx254227%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self254230%_
                (let ((__obj254962
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj254962))
               (__tmp254975
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254230%_ _%stx254227%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254975
           gxc#current-compile-method
           _%self254230%_))))
    (define gxc#optimize-call%
      (lambda (_%self253834%_ _%stx253835%_)
        (let* ((_%__stx254315254316%_ _%stx253835%_)
               (_%g253838253884%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254315254316%_)))))
          (let ((_%__kont254317254318%_
                 (lambda (_%g253840254023%_ _%g253841254024%_)
                   (let* ((_%rator-id254044%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%g253841254024%_)))
                          (_%rator-type254046%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id254044%_))))
                     (if (or (not _%rator-type254046%_)
                             (eq? (##structure-ref
                                   _%rator-type254046%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self253834%_ _%stx253835%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type254046%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp254976
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%rator-type254046%_
                                         '1
                                         '#f
                                         '#f))))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id254044%_
                                  '" => "
                                  _%rator-type254046%_
                                  '" "
                                  __tmp254976))
                               (let* ((_%optimized254061%_
                                       (let ((__method254963
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type254046%_
                                                 'optimize-call))))
                                         (if __method254963
                                             (let ((__tmp254977
                                                    (let ((__tmp254978
                                                           (lambda (_%g254053254056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g254054254058%_)
                     (cons _%g254053254056%_ _%g254054254058%_))))
              (declare (not safe))
              (foldr__0 __tmp254978 '() _%g253840254023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__method254963
                                                _%rator-type254046%_
                                                _%self253834%_
                                                _%stx253835%_
                                                __tmp254977))
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (error '"Missing method"
                                                        _%rator-type254046%_
                                                        'optimize-call))
                                               '#!void))))
                                      (_%__stx254263254264%_
                                       _%optimized254061%_)
                                      (_%g254064254093%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx254263254264%_)))))
                                 (let ((_%__kont254265254266%_
                                        (lambda (_%g254066254159%_
                                                 _%g254067254160%_)
                                          (let* ((_%optimized-rator-id254187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _%g254067254160%_)))
                                                 (_%rator-type254192%_
                                                  (let ((_%$e254189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#optimizer-lookup-type
                                                            _%optimized-rator-id254187%_))))
                                                    (if _%$e254189%_
                                                        _%$e254189%_
                                                        _%rator-type254046%_))))
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (class-instance?
                                                       gxc#!primitive::t
                                                       _%rator-type254192%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id254187%_
                                                              gxc#checked-primitives))
                                                    (and (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%rator-type254192%_
                                                            'gxc#!procedure::t))
                                                         (eq? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#!procedure-origin _%rator-type254192%_))
                      (##structure-ref
                       (let ()
                         (declare (not safe))
                         (gx#current-expander-context))
                       '1
                       gx#expander-context::t
                       '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%optimized254061%_
                                                (let ((__tmp254979
                                                       (cons '%#call-unchecked
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#ref))
                                 (cons _%g254067254160%_ '()))
                           (let ((__tmp254980
                                  (lambda (_%g254200254203%_ _%g254201254205%_)
                                    (cons _%g254200254203%_
                                          _%g254201254205%_))))
                             (declare (not safe))
                             (foldr__0 __tmp254980 '() _%g254066254159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp254979
                                                   _%stx253835%_))))))
                                       (_%__kont254269254270%_
                                        (lambda () _%optimized254061%_)))
                                   (let ((_%__match254312254313%_
                                          (lambda (_%e254068254105%_
                                                   _%hd254069254108%_
                                                   _%tl254070254110%_
                                                   _%e254071254113%_
                                                   _%hd254072254116%_
                                                   _%tl254073254118%_
                                                   _%e254074254121%_
                                                   _%hd254075254124%_
                                                   _%tl254076254126%_
                                                   _%e254077254129%_
                                                   _%hd254078254132%_
                                                   _%tl254079254134%_
                                                   _%__splice254267254268%_
                                                   _%target254080254137%_
                                                   _%tl254082254139%_)
                                            (letrec ((_%loop254083254142%_
                                                      (lambda (_%hd254081254145%_
                                                               _%arg254087254147%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd254081254145%_))
                                                            (let ((_%e254084254149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd254081254145%_))))
                      (let ((_%lp-tl254086254154%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254084254149%_)))
                            (_%lp-hd254085254152%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254084254149%_))))
                        (_%loop254083254142%_
                         _%lp-tl254086254154%_
                         (cons _%lp-hd254085254152%_ _%arg254087254147%_))))
                    (let ((_%arg254088254157%_ (reverse _%arg254087254147%_)))
                      (_%__kont254265254266%_
                       _%arg254088254157%_
                       _%hd254078254132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop254083254142%_
                                               _%target254080254137%_
                                               '())))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx254263254264%_))
                                         (let ((_%e254068254105%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx254263254264%_))))
                                           (let ((_%tl254070254110%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254068254105%_)))
                                                 (_%hd254069254108%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254068254105%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd254069254108%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd254069254108%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl254070254110%_))
                                                         (let ((_%e254071254113%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl254070254110%_))))
                   (let ((_%tl254073254118%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e254071254113%_)))
                         (_%hd254072254116%_
                          (let ()
                            (declare (not safe))
                            (##car _%e254071254113%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd254072254116%_))
                         (let ((_%e254074254121%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd254072254116%_))))
                           (let ((_%tl254076254126%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e254074254121%_)))
                                 (_%hd254075254124%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e254074254121%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd254075254124%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd254075254124%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl254076254126%_))
                                         (let ((_%e254077254129%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl254076254126%_))))
                                           (let ((_%tl254079254134%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e254077254129%_)))
                                                 (_%hd254078254132%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e254077254129%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl254079254134%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl254073254118%_))
                                                     (let ((_%__splice254267254268%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice->vector
                                                               _%tl254073254118%_
                                                               '0))))
                                                       (let ((_%tl254082254139%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice254267254268%_ '1)))
                     (_%target254080254137%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice254267254268%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl254082254139%_))
                     (_%__match254312254313%_
                      _%e254068254105%_
                      _%hd254069254108%_
                      _%tl254070254110%_
                      _%e254071254113%_
                      _%hd254072254116%_
                      _%tl254073254118%_
                      _%e254074254121%_
                      _%hd254075254124%_
                      _%tl254076254126%_
                      _%e254077254129%_
                      _%hd254078254132%_
                      _%tl254079254134%_
                      _%__splice254267254268%_
                      _%target254080254137%_
                      _%tl254082254139%_)
                     (_%__kont254269254270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254269254270%_))
                                                 (_%__kont254269254270%_))))
                                         (_%__kont254269254270%_))
                                     (_%__kont254269254270%_))
                                 (_%__kont254269254270%_))))
                         (_%__kont254269254270%_))))
                 (_%__kont254269254270%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont254269254270%_))
                                                 (_%__kont254269254270%_))))
                                         (_%__kont254269254270%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type254046%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type254046%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp254981
                                        (cons '%#call-unchecked
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g253841254024%_
                                                                '()))
                                                    (map (lambda (_%g254211254213%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__1
                                                              _%self253834%_
                                                              _%g254211254213%_)))
                                                         (let ((__tmp254982
                                                                (lambda (_%g254215254218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g254216254220%_)
                          (cons _%g254215254218%_ _%g254216254220%_))))
                   (declare (not safe))
                   (foldr__0 __tmp254982 '() _%g253840254023%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp254981
                                    _%stx253835%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx253835%_
                                    _%rator-type254046%_))))))))
                (_%__kont254321254322%_
                 (lambda (_%g253863253927%_ _%g253864253928%_)
                   (let ((_%rator-type253945%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%g253864253928%_))))
                     (if (and _%rator-type253945%_
                              (eq? (##structure-ref
                                    _%rator-type253945%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type253945%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type253945%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type253945%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp254983
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self253834%_
                                               _%g253864253928%_))
                                            (map (lambda (_%g253947253949%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self253834%_
                                                      _%g253947253949%_)))
                                                 (let ((__tmp254984
                                                        (lambda (_%g253951253954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g253952253956%_)
                  (cons _%g253951253954%_ _%g253952253956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp254984
                                                    '()
                                                    _%g253863253927%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp254983 _%stx253835%_))
                         (if (or (not _%rator-type253945%_)
                                 (let ((__tmp254985
                                        (##structure-ref
                                         _%rator-type253945%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp254985 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self253834%_ _%stx253835%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx253835%_
                                _%rator-type253945%_))))))))
            (let* ((_%__match254382254383%_
                    (lambda (_%e253865253889%_
                             _%hd253866253892%_
                             _%tl253867253894%_
                             _%e253868253897%_
                             _%hd253869253900%_
                             _%tl253870253902%_
                             _%__splice254323254324%_
                             _%target253871253905%_
                             _%tl253873253907%_)
                      (letrec ((_%loop253874253910%_
                                (lambda (_%hd253872253913%_
                                         _%rand253878253915%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253872253913%_))
                                      (let ((_%e253875253917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253872253913%_))))
                                        (let ((_%lp-tl253877253922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253875253917%_)))
                                              (_%lp-hd253876253920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253875253917%_))))
                                          (_%loop253874253910%_
                                           _%lp-tl253877253922%_
                                           (cons _%lp-hd253876253920%_
                                                 _%rand253878253915%_))))
                                      (let ((_%rand253879253925%_
                                             (reverse _%rand253878253915%_)))
                                        (_%__kont254321254322%_
                                         _%rand253879253925%_
                                         _%hd253869253900%_))))))
                        (_%loop253874253910%_ _%target253871253905%_ '()))))
                   (_%__match254362254363%_
                    (lambda (_%e253842253969%_
                             _%hd253843253972%_
                             _%tl253844253974%_
                             _%e253845253977%_
                             _%hd253846253980%_
                             _%tl253847253982%_
                             _%e253848253985%_
                             _%hd253849253988%_
                             _%tl253850253990%_
                             _%e253851253993%_
                             _%hd253852253996%_
                             _%tl253853253998%_
                             _%__splice254319254320%_
                             _%target253854254001%_
                             _%tl253856254003%_)
                      (letrec ((_%loop253857254006%_
                                (lambda (_%hd253855254009%_
                                         _%rand253861254011%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd253855254009%_))
                                      (let ((_%e253858254013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd253855254009%_))))
                                        (let ((_%lp-tl253860254018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253858254013%_)))
                                              (_%lp-hd253859254016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253858254013%_))))
                                          (_%loop253857254006%_
                                           _%lp-tl253860254018%_
                                           (cons _%lp-hd253859254016%_
                                                 _%rand253861254011%_))))
                                      (let ((_%rand253862254021%_
                                             (reverse _%rand253861254011%_)))
                                        (_%__kont254317254318%_
                                         _%rand253862254021%_
                                         _%hd253852253996%_))))))
                        (_%loop253857254006%_ _%target253854254001%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254315254316%_))
                  (let ((_%e253842253969%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254315254316%_))))
                    (let ((_%tl253844253974%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253842253969%_)))
                          (_%hd253843253972%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253842253969%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253844253974%_))
                          (let ((_%e253845253977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253844253974%_))))
                            (let ((_%tl253847253982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253845253977%_)))
                                  (_%hd253846253980%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253845253977%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253846253980%_))
                                  (let ((_%e253848253985%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253846253980%_))))
                                    (let ((_%tl253850253990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253848253985%_)))
                                          (_%hd253849253988%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253848253985%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253849253988%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253849253988%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253850253990%_))
                                                  (let ((_%e253851253993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253850253990%_))))
                                                    (let ((_%tl253853253998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253851253993%_)))
                                                          (_%hd253852253996%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253851253993%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253853253998%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl253847253982%_))
                      (let ((_%__splice254319254320%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253847253982%_
                                '0))))
                        (let ((_%tl253856254003%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254319254320%_ '1)))
                              (_%target253854254001%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254319254320%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253856254003%_))
                              (_%__match254362254363%_
                               _%e253842253969%_
                               _%hd253843253972%_
                               _%tl253844253974%_
                               _%e253845253977%_
                               _%hd253846253980%_
                               _%tl253847253982%_
                               _%e253848253985%_
                               _%hd253849253988%_
                               _%tl253850253990%_
                               _%e253851253993%_
                               _%hd253852253996%_
                               _%tl253853253998%_
                               _%__splice254319254320%_
                               _%target253854254001%_
                               _%tl253856254003%_)
                              (let ()
                                (declare (not safe))
                                (_%g253838253884%_)))))
                      (let () (declare (not safe)) (_%g253838253884%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl253847253982%_))
                      (let ((_%__splice254323254324%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl253847253982%_
                                '0))))
                        (let ((_%tl253873253907%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254323254324%_ '1)))
                              (_%target253871253905%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice254323254324%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253873253907%_))
                              (_%__match254382254383%_
                               _%e253842253969%_
                               _%hd253843253972%_
                               _%tl253844253974%_
                               _%e253845253977%_
                               _%hd253846253980%_
                               _%tl253847253982%_
                               _%__splice254323254324%_
                               _%target253871253905%_
                               _%tl253873253907%_)
                              (let ()
                                (declare (not safe))
                                (_%g253838253884%_)))))
                      (let () (declare (not safe)) (_%g253838253884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl253847253982%_))
                                                      (let ((_%__splice254323254324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl253847253982%_
                        '0))))
                (let ((_%tl253873253907%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254323254324%_ '1)))
                      (_%target253871253905%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice254323254324%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl253873253907%_))
                      (_%__match254382254383%_
                       _%e253842253969%_
                       _%hd253843253972%_
                       _%tl253844253974%_
                       _%e253845253977%_
                       _%hd253846253980%_
                       _%tl253847253982%_
                       _%__splice254323254324%_
                       _%target253871253905%_
                       _%tl253873253907%_)
                      (let () (declare (not safe)) (_%g253838253884%_)))))
              (let () (declare (not safe)) (_%g253838253884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl253847253982%_))
                                                  (let ((_%__splice254323254324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl253847253982%_
                                                            '0))))
                                                    (let ((_%tl253873253907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254323254324%_
                                                              '1)))
                                                          (_%target253871253905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254323254324%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253873253907%_))
                                                          (_%__match254382254383%_
                                                           _%e253842253969%_
                                                           _%hd253843253972%_
                                                           _%tl253844253974%_
                                                           _%e253845253977%_
                                                           _%hd253846253980%_
                                                           _%tl253847253982%_
                                                           _%__splice254323254324%_
                                                           _%target253871253905%_
                                                           _%tl253873253907%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g253838253884%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g253838253884%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl253847253982%_))
                                              (let ((_%__splice254323254324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl253847253982%_
                                                        '0))))
                                                (let ((_%tl253873253907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254323254324%_
                                                          '1)))
                                                      (_%target253871253905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice254323254324%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253873253907%_))
                                                      (_%__match254382254383%_
                                                       _%e253842253969%_
                                                       _%hd253843253972%_
                                                       _%tl253844253974%_
                                                       _%e253845253977%_
                                                       _%hd253846253980%_
                                                       _%tl253847253982%_
                                                       _%__splice254323254324%_
                                                       _%target253871253905%_
                                                       _%tl253873253907%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g253838253884%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g253838253884%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl253847253982%_))
                                      (let ((_%__splice254323254324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl253847253982%_
                                                '0))))
                                        (let ((_%tl253873253907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254323254324%_
                                                  '1)))
                                              (_%target253871253905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254323254324%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253873253907%_))
                                              (_%__match254382254383%_
                                               _%e253842253969%_
                                               _%hd253843253972%_
                                               _%tl253844253974%_
                                               _%e253845253977%_
                                               _%hd253846253980%_
                                               _%tl253847253982%_
                                               _%__splice254323254324%_
                                               _%target253871253905%_
                                               _%tl253873253907%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g253838253884%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g253838253884%_))))))
                          (let () (declare (not safe)) (_%g253838253884%_)))))
                  (let () (declare (not safe)) (_%g253838253884%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self253796%_ _%ctx253797%_ _%stx253798%_ _%args253799%_)
        (let ((_%self253802%_ _%self253796%_))
          (if (let ((__method254964
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self253802%_ 'check-arguments))))
                (if __method254964
                    (let ()
                      (declare (not safe))
                      (__method254964
                       _%self253802%_
                       _%ctx253797%_
                       _%stx253798%_
                       _%args253799%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self253802%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature253812%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253802%_ '2 '#f '#f)))
                     (_%signature253814%_ _%signature253812%_)
                     (_%$e253824%_
                      (if _%signature253814%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253814%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e253824%_
                    ((lambda (_%unchecked253827%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked253827%_))
                           (let ((__tmp254986
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%unchecked253827%_
                                                          '()))
                                              (map (lambda (_%g253828253830%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx253797%_
                                                        _%g253828253830%_)))
                                                   _%args253799%_)))))
                             (declare (not safe))
                             (gxc#xform-wrap-apply
                              __tmp254986
                              _%stx253798%_
                              _%ctx253797%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx253797%_ _%stx253798%_))))
                     _%$e253824%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx253797%_ _%stx253798%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx253797%_ _%stx253798%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass254248 __method-table254249)
        (let ((__check-arguments254250
               (let ((__tmp254987
                      (lambda ()
                        (let ((__method254251
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254249
                                  'check-arguments
                                  '#f))))
                          (if __method254251
                              __method254251
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp254987))))
          (lambda (_%self253796%_ _%ctx253797%_ _%stx253798%_ _%args253799%_)
            (let ((_%self253802%_ _%self253796%_))
              (if ((force __check-arguments254250)
                   _%self253802%_
                   _%ctx253797%_
                   _%stx253798%_
                   _%args253799%_)
                  (let* ((_%signature253812%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self253802%_
                             '2
                             '#f
                             '#f)))
                         (_%signature253814%_ _%signature253812%_)
                         (_%$e253824%_
                          (if _%signature253814%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature253814%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e253824%_
                        ((lambda (_%unchecked253827%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%unchecked253827%_))
                               (let ((__tmp254988
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons _%unchecked253827%_
                                                              '()))
                                                  (map (lambda (_%g253828253830%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%ctx253797%_
                                                            _%g253828253830%_)))
                                                       _%args253799%_)))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-apply
                                  __tmp254988
                                  _%stx253798%_
                                  _%ctx253797%_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#xform-call%
                                  _%ctx253797%_
                                  _%stx253798%_))))
                         _%$e253824%_)
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx253797%_ _%stx253798%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx253797%_ _%stx253798%_))))))))
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
      (lambda (_%self253549%_ _%ctx253550%_ _%stx253551%_ _%args253552%_)
        (let* ((_%self253555%_ _%self253549%_)
               (_%signature253564253566%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253555%_ '2 '#f '#f))))
          (if _%signature253564253566%_
              (let* ((_%signature253568%_ _%signature253564253566%_)
                     (_%argument-types253569253571%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature253568%_
                         '3
                         '#f
                         '#f))))
                (if _%argument-types253569253571%_
                    (let* ((_%argument-types253573%_
                            _%argument-types253569253571%_)
                           (_%argument-types253578%_
                            (let ((__tmp254989
                                   (lambda (_%t253576%_)
                                     (if _%t253576%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253551%_
                                            _%t253576%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp254989
                               _%argument-types253573%_))))
                      (let _%loop253580%_ ((_%rest-args253582%_ _%args253552%_)
                                           (_%rest-types253583%_
                                            _%argument-types253578%_)
                                           (_%result253584%_ '#t))
                        (let* ((_%rest-args253585253593%_ _%rest-args253582%_)
                               (_%else253587253601%_
                                (lambda () _%result253584%_))
                               (_%K253589253662%_
                                (lambda (_%rest-args253604%_ _%arg253605%_)
                                  (let* ((_%rest-types253606253617%_
                                          _%rest-types253583%_)
                                         (_%E253610253621%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-types253606253617%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%K253613253650%_
                                           (lambda (_%rest-types253647%_
                                                    _%type253648%_)
                                             (_%loop253580%_
                                              _%rest-args253604%_
                                              _%rest-types253647%_
                                              (if (gxc#check-expression-type!
                                                   _%stx253551%_
                                                   _%arg253605%_
                                                   _%type253648%_)
                                                  _%result253584%_
                                                  '#f))))
                                          (_%K253612253641%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx253551%_
                                                _%argument-types253578%_))))
                                          (_%K253611253631%_
                                           (lambda (_%tail-type253625%_)
                                             (if (let ((__tmp254990
                                                        (lambda (_%g253626253628%_)
                                                          (gxc#check-expression-type!
                                                           _%stx253551%_
                                                           _%g253626253628%_
                                                           _%tail-type253625%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp254990
                                                    _%rest-args253604%_))
                                                 _%result253584%_
                                                 '#f))))
                                      (let ((_%try-match253608253644%_
                                             (lambda ()
                                               (if (null? _%rest-types253606253617%_)
                                                   (_%K253612253641%_)
                                                   (let ((_%tail-type253634%_
                                                          _%rest-types253606253617%_))
                                                     (_%K253611253631%_
                                                      _%tail-type253634%_))))))
                                        (if (pair? _%rest-types253606253617%_)
                                            (let ((_%tl253615253655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-types253606253617%_)))
                                                  (_%hd253614253653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-types253606253617%_))))
                                              (let ((_%type253658%_
                                                     _%hd253614253653%_)
                                                    (_%rest-types253660%_
                                                     _%tl253615253655%_))
                                                (_%K253613253650%_
                                                 _%rest-types253660%_
                                                 _%type253658%_)))
                                            (_%try-match253608253644%_))))))))
                          (if (pair? _%rest-args253585253593%_)
                              (let ((_%hd253590253665%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest-args253585253593%_)))
                                    (_%tl253591253667%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest-args253585253593%_))))
                                (let* ((_%arg253670%_ _%hd253590253665%_)
                                       (_%rest-args253672%_
                                        _%tl253591253667%_))
                                  (_%K253589253662%_
                                   _%rest-args253672%_
                                   _%arg253670%_)))
                              (_%else253587253601%_)))))
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
      (lambda (_%self253360%_ _%ctx253361%_ _%stx253362%_ _%args253363%_)
        (let* ((_%self253366%_ _%self253360%_)
               (_%g253376253386%_
                (lambda (_%g253377253383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253377253383%_))))
               (_%g253375253424%_
                (lambda (_%g253377253389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253377253389%_))
                      (let ((_%e253379253391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253377253389%_))))
                        (let ((_%hd253380253394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253379253391%_)))
                              (_%tl253381253396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253379253391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253381253396%_))
                              ((lambda (_%g253378253399%_)
                                 (let* ((_%klass253411%_
                                         (let ((__tmp254991
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253366%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253362%_
                                            __tmp254991)))
                                        (_%object253413%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253361%_
                                            _%g253378253399%_)))
                                        (_%instance?253418%_
                                         (let ((_%$e253415%_
                                                (gxc#expression-type?
                                                 _%object253413%_
                                                 _%klass253411%_)))
                                           (if _%$e253415%_
                                               _%$e253415%_
                                               (gxc#expression-type?
                                                _%g253378253399%_
                                                _%klass253411%_)))))
                                   (if _%instance?253418%_
                                       (let ((__tmp254992
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253413%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253378253399%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253413%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254992
                                          _%stx253362%_))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#xform-call%
                                          _%ctx253361%_
                                          _%stx253362%_)))))
                               _%hd253380253394%_)
                              (_%g253376253386%_ _%g253377253389%_))))
                      (_%g253376253386%_ _%g253377253389%_)))))
          (_%g253375253424%_ _%args253363%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self253156%_ _%ctx253157%_ _%stx253158%_ _%args253159%_)
        (let* ((_%self253162%_ _%self253156%_)
               (_%g253172253182%_
                (lambda (_%g253173253179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g253173253179%_))))
               (_%g253171253235%_
                (lambda (_%g253173253185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g253173253185%_))
                      (let ((_%e253175253187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g253173253185%_))))
                        (let ((_%hd253176253190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253175253187%_)))
                              (_%tl253177253192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253175253187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl253177253192%_))
                              ((lambda (_%g253174253195%_)
                                 (let* ((_%klass253207%_
                                         (let ((__tmp254993
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self253162%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx253158%_
                                            __tmp254993)))
                                        (_%object253209%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx253157%_
                                            _%g253174253195%_)))
                                        (_%instance?253214%_
                                         (let ((_%$e253211%_
                                                (gxc#expression-type?
                                                 _%object253209%_
                                                 _%klass253207%_)))
                                           (if _%$e253211%_
                                               _%$e253211%_
                                               (gxc#expression-type?
                                                _%g253174253195%_
                                                _%klass253207%_))))
                                        (_%klass253217%_ _%klass253207%_))
                                   (if _%instance?253214%_
                                       (let ((__tmp254994
                                              (if (or (gxc#expression-no-side-effects?
                                                       _%object253209%_)
                                                      (gxc#expression-no-side-effects?
                                                       _%g253174253195%_))
                                                  (cons '%#quote
                                                        (cons '#t '()))
                                                  (cons '%#begin
                                                        (cons _%object253209%_
                                                              (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp254994
                                          _%stx253158%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass253217%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp254995
                                                  (cons '%#struct-direct-instance?
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass253217%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%object253209%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp254995
                                              _%stx253158%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass253217%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp254996
                                                      (cons '%#struct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass253217%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%object253209%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254996
                                                  _%stx253158%_))
                                               (let ((__tmp254997
                                                      (cons '%#call
                                                            (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons 'class-instance? '()))
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self253162%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object253209%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp254997
                                                  _%stx253158%_)))))))
                               _%hd253176253190%_)
                              (_%g253172253182%_ _%g253173253185%_))))
                      (_%g253172253182%_ _%g253173253185%_)))))
          (_%g253171253235%_ _%args253159%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx252824%_)
        (let* ((_%__stx254392254393%_ _%stx252824%_)
               (_%g252829252870%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254392254393%_)))))
          (let ((_%__kont254394254395%_ (lambda () '#t))
                (_%__kont254396254397%_ (lambda () '#t))
                (_%__kont254398254399%_
                 (lambda (_%g252843252936%_ _%g252844252937%_)
                   (let ((_%rator-type252958252960%_
                          (let ((__tmp254998
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g252844252937%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp254998))))
                     (if _%rator-type252958252960%_
                         (let* ((_%rator-type252962%_
                                 _%rator-type252958252960%_)
                                (_%rator-signature252963252965%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type252962%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type252962%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature252963252965%_
                               (let* ((_%rator-signature252967%_
                                       _%rator-signature252963252965%_)
                                      (_%rator-effect252968252970%_
                                       (if _%rator-signature252967%_
                                           (##direct-structure-ref
                                            _%rator-signature252967%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect252968252970%_
                                     (let ((_%rator-effect252972%_
                                            _%rator-effect252968252970%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect252972%_)
                                               (equal? '(alloc)
                                                       _%rator-effect252972%_))
                                           (let ((__tmp254999
                                                  (let ((__tmp255000
                                                         (lambda (_%g252977252980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g252978252982%_)
                   (cons _%g252977252980%_ _%g252978252982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp255000
                                                     '()
                                                     _%g252843252936%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp254999))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont254402254403%_ (lambda () '#f)))
            (let ((_%__match254481254482%_
                   (lambda (_%e252845252882%_
                            _%hd252846252885%_
                            _%tl252847252887%_
                            _%e252848252890%_
                            _%hd252849252893%_
                            _%tl252850252895%_
                            _%e252851252898%_
                            _%hd252852252901%_
                            _%tl252853252903%_
                            _%e252854252906%_
                            _%hd252855252909%_
                            _%tl252856252911%_
                            _%__splice254400254401%_
                            _%target252857252914%_
                            _%tl252859252916%_)
                     (letrec ((_%loop252860252919%_
                               (lambda (_%hd252858252922%_
                                        _%rand252864252924%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd252858252922%_))
                                     (let ((_%e252861252926%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd252858252922%_))))
                                       (let ((_%lp-tl252863252931%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e252861252926%_)))
                                             (_%lp-hd252862252929%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e252861252926%_))))
                                         (_%loop252860252919%_
                                          _%lp-tl252863252931%_
                                          (cons _%lp-hd252862252929%_
                                                _%rand252864252924%_))))
                                     (let ((_%rand252865252934%_
                                            (reverse _%rand252864252924%_)))
                                       (_%__kont254398254399%_
                                        _%rand252865252934%_
                                        _%hd252855252909%_))))))
                       (_%loop252860252919%_ _%target252857252914%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254392254393%_))
                  (let ((_%e252831253013%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254392254393%_))))
                    (let ((_%tl252833253018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e252831253013%_)))
                          (_%hd252832253016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e252831253013%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd252832253016%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd252832253016%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252833253018%_))
                                  (let ((_%e252834253021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252833253018%_))))
                                    (let ((_%tl252836253026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252834253021%_)))
                                          (_%hd252835253024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252834253021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252836253026%_))
                                          (_%__kont254394254395%_)
                                          (_%__kont254402254403%_))))
                                  (_%__kont254402254403%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd252832253016%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl252833253018%_))
                                      (let ((_%e252840252998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl252833253018%_))))
                                        (let ((_%tl252842253003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252840252998%_)))
                                              (_%hd252841253001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252840252998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252842253003%_))
                                              (_%__kont254396254397%_)
                                              (_%__kont254402254403%_))))
                                      (_%__kont254402254403%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd252832253016%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl252833253018%_))
                                          (let ((_%e252848252890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl252833253018%_))))
                                            (let ((_%tl252850252895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e252848252890%_)))
                                                  (_%hd252849252893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e252848252890%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd252849252893%_))
                                                  (let ((_%e252851252898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd252849252893%_))))
                                                    (let ((_%tl252853252903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e252851252898%_)))
                                                          (_%hd252852252901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e252851252898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd252852252901%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd252852252901%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl252853252903%_))
                          (let ((_%e252854252906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl252853252903%_))))
                            (let ((_%tl252856252911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252854252906%_)))
                                  (_%hd252855252909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252854252906%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252856252911%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl252850252895%_))
                                      (let ((_%__splice254400254401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl252850252895%_
                                                '0))))
                                        (let ((_%tl252859252916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254400254401%_
                                                  '1)))
                                              (_%target252857252914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice254400254401%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl252859252916%_))
                                              (_%__match254481254482%_
                                               _%e252831253013%_
                                               _%hd252832253016%_
                                               _%tl252833253018%_
                                               _%e252848252890%_
                                               _%hd252849252893%_
                                               _%tl252850252895%_
                                               _%e252851252898%_
                                               _%hd252852252901%_
                                               _%tl252853252903%_
                                               _%e252854252906%_
                                               _%hd252855252909%_
                                               _%tl252856252911%_
                                               _%__splice254400254401%_
                                               _%target252857252914%_
                                               _%tl252859252916%_)
                                              (_%__kont254402254403%_))))
                                      (_%__kont254402254403%_))
                                  (_%__kont254402254403%_))))
                          (_%__kont254402254403%_))
                      (_%__kont254402254403%_))
                  (_%__kont254402254403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254402254403%_))))
                                          (_%__kont254402254403%_))
                                      (_%__kont254402254403%_))))
                          (_%__kont254402254403%_))))
                  (_%__kont254402254403%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx252819%_ _%klass252820%_)
        (let ((_%expr-type252822%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx252819%_))))
          (if _%expr-type252822%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type252822%_ _%klass252820%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx252797%_ _%expr252798%_ _%type252799%_)
        (if (not _%type252799%_)
            '#f
            (let ((_%$e252802%_
                   (eq? (##structure-ref _%type252799%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e252802%_
                  _%$e252802%_
                  (let ((_%expr-type252806%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr252798%_))))
                    (if (not _%expr-type252806%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type252806%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e252810%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type252806%_
                                      'gxc#!abort::t))))
                              (if _%$e252810%_
                                  _%$e252810%_
                                  (let ((_%$e252813%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type252806%_
                                            _%type252799%_))))
                                    (if _%$e252813%_
                                        _%$e252813%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type252799%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type252799%_
                                                   _%expr-type252806%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx252797%_
                                                   _%expr252798%_
                                                   _%expr-type252806%_
                                                   _%type252799%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self252611%_ _%ctx252612%_ _%stx252613%_ _%args252614%_)
        (let* ((_%self252617%_ _%self252611%_)
               (_%klass252627%_
                (let ((__tmp255001
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252617%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx252613%_ __tmp255001)))
               (_%fields252629%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252627%_
                           '5
                           '#f
                           '#f))))
               (_%args252635%_
                (map (lambda (_%g252630252632%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx252612%_ _%g252630252632%_)))
                     _%args252614%_))
               (_%inline-make-object252637%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self252617%_
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
                           _%self252617%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields252629%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass252640%_ _%klass252627%_)
               (_%$e252654%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass252640%_ '6 '#f '#f))))
          (if _%$e252654%_
              ((lambda (_%ctor252657%_)
                 (let ((_%$obj252659%_
                        (let ((__tmp255002
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp255002)))
                       (_%ctor-impl252660%_
                        (let ()
                          (declare (not safe))
                          (gxc#!class-lookup-method
                           _%klass252640%_
                           _%ctor252657%_))))
                   (let ((__tmp255003
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252659%_ '())
                                                  (cons _%inline-make-object252637%_
                                                        '()))
                                            '())
                                      (cons (cons '%#begin
                                                  (cons (if _%ctor-impl252660%_
                                                            (let ((__tmp255004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons (cons '%#ref
                                             (cons _%ctor-impl252660%_ '()))
                                       (cons (cons '%#ref
                                                   (cons _%$obj252659%_ '()))
                                             _%args252635%_)))))
                      (declare (not safe))
                      (gxc#xform-wrap-apply
                       __tmp255004
                       _%stx252613%_
                       _%ctx252612%_))
                    (let ((_%$ctor252662%_
                           (let ((__tmp255005
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__constructor))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255005))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$ctor252662%_ '())
                                              (cons (cons '%#call
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'direct-method-ref '()))
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252617%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#ref (cons _%$obj252659%_ '()))
                                    (cons (cons '%#quote
                                                (cons _%ctor252657%_ '()))
                                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#ref
                                                          (cons _%$ctor252662%_
                                                                '()))
                                                    (cons (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%$ctor252662%_ '()))
                              (cons (cons '%#ref (cons _%$obj252659%_ '()))
                                    _%args252635%_)))
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
                             _%self252617%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'method: '()))
                    (cons (cons '%#quote (cons _%ctor252657%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (cons (cons '%#ref (cons _%$obj252659%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp255003 _%stx252613%_))))
               _%$e252654%_)
              (let ((_%$e252664%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass252640%_
                        '10
                        '#f
                        '#f))))
                (if _%$e252664%_
                    ((lambda (_%metaclass252667%_)
                       (let* ((_%$obj252669%_
                               (let ((__tmp255006
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255006)))
                              (_%metakons252671%_
                               (let ((__tmp255007
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx252613%_
                                         _%metaclass252667%_))))
                                 (declare (not safe))
                                 (gxc#!class-lookup-method
                                  __tmp255007
                                  'instance-init!)))
                              (__tmp255008
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj252669%_
                                                             '())
                                                       (cons _%inline-make-object252637%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#begin
                                                       (cons (if _%metakons252671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp255009
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons _%metakons252671%_
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref _%self252617%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args252635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-apply
                            __tmp255009
                            _%stx252613%_
                            _%ctx252612%_))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'call-method '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252617%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons 'instance-init!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj252669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%args252635%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     (cons (cons '%#ref (cons _%$obj252669%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp255008 _%stx252613%_)))
                     _%$e252664%_)
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass252640%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp255010
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args252635%_))))
                              (declare (not safe))
                              (##fx= __tmp255010 _%fields252629%_))
                            (let ((__tmp255011
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self252617%_
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
                                              _%self252617%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args252635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp255011
                               _%stx252613%_))
                            (let ((__tmp255013
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self252617%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp255012
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass252640%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx252613%_
                               __tmp255013
                               __tmp255012)))
                        (let ((_%$obj252676%_
                               (let ((__tmp255014
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255014))))
                          (let _%lp252678%_ ((_%rest252680%_ _%args252635%_)
                                             (_%initializers252681%_ '()))
                            (let* ((_%__stx254484254485%_ _%rest252680%_)
                                   (_%g252685252706%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx254484254485%_)))))
                              (let ((_%__kont254486254487%_
                                     (lambda (_%g252687252760%_
                                              _%g252688252761%_
                                              _%g252689252762%_)
                                       (let* ((_%slot252789%_
                                               (let ((__tmp255015
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g252689252762%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp255015)))
                                              (_%off252791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass252640%_
                                                  _%slot252789%_))))
                                         (if _%off252791%_
                                             (_%lp252678%_
                                              _%g252687252760%_
                                              (cons (cons _%off252791%_
                                                          _%g252688252761%_)
                                                    _%initializers252681%_))
                                             (let ((__tmp255016
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252617%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx252613%_
                                                __tmp255016
                                                _%slot252789%_))))))
                                    (_%__kont254488254489%_
                                     (lambda ()
                                       (let ((__tmp255017
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252637%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp255020
                                     (cons (cons '%#ref
                                                 (cons _%$obj252676%_ '()))
                                           '()))
                                    (__tmp255018
                                     (let ((__tmp255019
                                            (lambda (_%i252720%_ _%r252721%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252617%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i252720%_) '()))
                              (cons (cons '%#ref (cons _%$obj252676%_ '()))
                                    (cons (cdr _%i252720%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r252721%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp255019
                                        '()
                                        _%initializers252681%_))))
                                (declare (not safe))
                                (foldr__0 cons __tmp255020 __tmp255018)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255017
                                          _%stx252613%_))))
                                    (_%__kont254490254491%_
                                     (lambda ()
                                       (let ((__tmp255021
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj252676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object252637%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args252635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj252676%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255021
                                          _%stx252613%_)))))
                                (let* ((_%g252683252723%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx254484254485%_))
                                              (_%__kont254488254489%_)
                                              (_%__kont254490254491%_))))
                                       (_%__match254521254522%_
                                        (lambda (_%e252690252728%_
                                                 _%hd252691252731%_
                                                 _%tl252692252733%_
                                                 _%e252693252736%_
                                                 _%hd252694252739%_
                                                 _%tl252695252741%_
                                                 _%e252696252744%_
                                                 _%hd252697252747%_
                                                 _%tl252698252749%_
                                                 _%e252699252752%_
                                                 _%hd252700252755%_
                                                 _%tl252701252757%_)
                                          (let ((_%g252687252760%_
                                                 _%tl252701252757%_)
                                                (_%g252688252761%_
                                                 _%hd252700252755%_)
                                                (_%g252689252762%_
                                                 _%hd252697252747%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%g252689252762%_))
                                                (_%__kont254486254487%_
                                                 _%g252687252760%_
                                                 _%g252688252761%_
                                                 _%g252689252762%_)
                                                (_%__kont254490254491%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx254484254485%_))
                                      (let ((_%e252690252728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx254484254485%_))))
                                        (let ((_%tl252692252733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e252690252728%_)))
                                              (_%hd252691252731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e252690252728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd252691252731%_))
                                              (let ((_%e252693252736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd252691252731%_))))
                                                (let ((_%tl252695252741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e252693252736%_)))
                                                      (_%hd252694252739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e252693252736%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd252694252739%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%hd252694252739%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl252695252741%_))
                      (let ((_%e252696252744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl252695252741%_))))
                        (let ((_%tl252698252749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252696252744%_)))
                              (_%hd252697252747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252696252744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252698252749%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252692252733%_))
                                  (let ((_%e252699252752%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252692252733%_))))
                                    (let ((_%tl252701252757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252699252752%_)))
                                          (_%hd252700252755%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252699252752%_))))
                                      (_%__match254521254522%_
                                       _%e252690252728%_
                                       _%hd252691252731%_
                                       _%tl252692252733%_
                                       _%e252693252736%_
                                       _%hd252694252739%_
                                       _%tl252695252741%_
                                       _%e252696252744%_
                                       _%hd252697252747%_
                                       _%tl252698252749%_
                                       _%e252699252752%_
                                       _%hd252700252755%_
                                       _%tl252701252757%_)))
                                  (_%__kont254490254491%_))
                              (_%__kont254490254491%_))))
                      (_%__kont254490254491%_))
                  (_%__kont254490254491%_))
              (_%__kont254490254491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254490254491%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g252683252723%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self252394%_ _%ctx252395%_ _%stx252396%_ _%args252397%_)
        (let* ((_%self252400%_ _%self252394%_)
               (_%arguments-ok?252410%_
                (let ((__method254965
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252400%_ 'check-arguments))))
                  (if __method254965
                      (let ()
                        (declare (not safe))
                        (__method254965
                         _%self252400%_
                         _%ctx252395%_
                         _%stx252396%_
                         _%args252397%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252400%_
                                 'check-arguments))
                        '#!void))))
               (_%g252412252422%_
                (lambda (_%g252413252419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252413252419%_))))
               (_%g252411252486%_
                (lambda (_%g252413252425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252413252425%_))
                      (let ((_%e252415252427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252413252425%_))))
                        (let ((_%hd252416252430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252415252427%_)))
                              (_%tl252417252432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252415252427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl252417252432%_))
                              ((lambda (_%g252414252435%_)
                                 (let* ((_%klass252448%_
                                         (let ((__tmp255022
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252400%_
                                                   '1
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx252396%_
                                            __tmp255022)))
                                        (_%field252450%_
                                         (let ((__tmp255023
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self252400%_
                                                   '3
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _%klass252448%_
                                            __tmp255023)))
                                        (_%object252452%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%ctx252395%_
                                            _%g252414252435%_)))
                                        (_%klass252455%_ _%klass252448%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass252455%_
                                          '8
                                          '#f
                                          '#f))
                                       (let ((__tmp255024
                                              (cons (if (or _%arguments-ok?252410%_
                                                            (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252400%_
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
                                 _%self252400%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons _%field252450%_ '()))
                        (cons _%object252452%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp255024
                                          _%stx252396%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252455%_
                                              '7
                                              '#f
                                              '#f))
                                           (let ((__tmp255025
                                                  (cons (if (or _%arguments-ok?252410%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252400%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252400%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252450%_ '()))
                            (cons _%object252452%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255025
                                              _%stx252396%_))
                                           (let ((_%$e252474%_
                                                  (let ((__tmp255026
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252400%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _%klass252455%_
                                                     __tmp255026))))
                                             (if _%$e252474%_
                                                 ((lambda (_%klass252477%_)
                                                    (let ((__tmp255027
                                                           (cons (if (or _%arguments-ok?252410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252400%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-ref
                             '%#struct-ref)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self252400%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field252450%_ '()))
                                     (cons _%object252452%_ '()))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp255027 _%stx252396%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e252474%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self252400%_
                                                        '4
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp255028
                                                            (let ((_%$obj252483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp255029
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__obj))))
                             (declare (not safe))
                             (make-symbol__0 __tmp255029))))
                      (cons '%#let-values
                            (cons (cons (cons (cons _%$obj252483%_ '())
                                              (cons _%object252452%_ '()))
                                        '())
                                  (cons (cons '%#if
                                              (cons (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass252455%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj252483%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#struct-unchecked-ref
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252400%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252450%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252483%_ '()))
                                          '()))))
                  (cons (if _%arguments-ok?252410%_
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-ref '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252483%_ '()))
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252400%_
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
                                                             _%self252400%_
                                                             '1
                                                             '#f
                                                             '#f))
                                                          '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj252483%_
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self252400%_
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
               (gxc#xform-wrap-source __tmp255028 _%stx252396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp255030
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                (cons _%object252452%_
                                      (cons (cons '%#quote
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252400%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        '()))
                                            '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp255030 _%stx252396%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%hd252416252430%_)
                              (_%g252412252422%_ _%g252413252425%_))))
                      (_%g252412252422%_ _%g252413252425%_)))))
          (_%g252411252486%_ _%args252397%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass254252 __method-table254253)
        (let ((__check-arguments254254
               (let ((__tmp255031
                      (lambda ()
                        (let ((__method254255
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254253
                                  'check-arguments
                                  '#f))))
                          (if __method254255
                              __method254255
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255031)))
              (__slot254256
               (let ((__slot254257
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass254252 'slot))))
                 (if __slot254257
                     __slot254257
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self252394%_ _%ctx252395%_ _%stx252396%_ _%args252397%_)
            (let* ((_%self252400%_ _%self252394%_)
                   (_%arguments-ok?252410%_
                    ((force __check-arguments254254)
                     _%self252400%_
                     _%ctx252395%_
                     _%stx252396%_
                     _%args252397%_))
                   (_%g252412252422%_
                    (lambda (_%g252413252419%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252413252419%_))))
                   (_%g252411252486%_
                    (lambda (_%g252413252425%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252413252425%_))
                          (let ((_%e252415252427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252413252425%_))))
                            (let ((_%hd252416252430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252415252427%_)))
                                  (_%tl252417252432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252415252427%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl252417252432%_))
                                  ((lambda (_%g252414252435%_)
                                     (let* ((_%klass252448%_
                                             (let ((__tmp255032
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252400%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _%stx252396%_
                                                __tmp255032)))
                                            (_%field252450%_
                                             (let ((__tmp255033
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self252400%_
                                                       '3
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _%klass252448%_
                                                __tmp255033)))
                                            (_%object252452%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%ctx252395%_
                                                _%g252414252435%_)))
                                            (_%klass252455%_ _%klass252448%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%klass252455%_
                                              '8
                                              '#f
                                              '#f))
                                           (let ((__tmp255034
                                                  (cons (if (or _%arguments-ok?252410%_
                                                                (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252400%_
                                '4
                                '#f
                                '#f))))
                    '%#struct-unchecked-ref
                    '%#struct-direct-ref)
                (cons (cons '%#ref
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252400%_
                                     '1
                                     '#f
                                     '#f))
                                  '()))
                      (cons (cons '%#quote (cons _%field252450%_ '()))
                            (cons _%object252452%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255034
                                              _%stx252396%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252455%_
                                                  '7
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255035
                                                      (cons (if (or _%arguments-ok?252410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252400%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-ref
                        '%#struct-ref)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252400%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252450%_ '()))
                                (cons _%object252452%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255035
                                                  _%stx252396%_))
                                               (let ((_%$e252474%_
                                                      (let ((__tmp255036
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self252400%_ '3 '#f '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _%klass252455%_ __tmp255036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e252474%_
                                                     ((lambda (_%klass252477%_)
                                                        (let ((__tmp255037
                                                               (cons (if (or _%arguments-ok?252410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (not (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252400%_
                                             '4
                                             '#f
                                             '#f))))
                                 '%#struct-unchecked-ref
                                 '%#struct-ref)
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self252400%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field252450%_ '()))
                                         (cons _%object252452%_ '()))))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp255037 _%stx252396%_)))
              _%$e252474%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self252400%_
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (let ((__tmp255038
                                                                (let ((_%$obj252483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp255039
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp255039))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$obj252483%_ '())
                                                  (cons _%object252452%_ '()))
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#struct-direct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass252455%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#ref (cons _%$obj252483%_ '()))
                                  '())))
                (cons (cons '%#struct-unchecked-ref
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252400%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252450%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj252483%_ '()))
                                              '()))))
                      (cons (if _%arguments-ok?252410%_
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-ref
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252483%_
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252400%_
                               __slot254256
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
                        (##unchecked-structure-ref _%self252400%_ '1 '#f '#f))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#ref
                                                              (cons _%$obj252483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252400%_
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
                   (gxc#xform-wrap-source __tmp255038 _%stx252396%_))
                 (let ((__tmp255040
                        (cons '%#call
                              (cons (cons '%#ref
                                          (cons 'unchecked-slot-ref '()))
                                    (cons _%object252452%_
                                          (cons (cons '%#quote
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252400%_
                                                               '3
                                                               '#f
                                                               '#f))
                                                            '()))
                                                '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp255040 _%stx252396%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd252416252430%_)
                                  (_%g252412252422%_ _%g252413252425%_))))
                          (_%g252412252422%_ _%g252413252425%_)))))
              (_%g252411252486%_ _%args252397%_))))))
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
      (lambda (_%self252158%_ _%ctx252159%_ _%stx252160%_ _%args252161%_)
        (let* ((_%self252164%_ _%self252158%_)
               (_%arguments-ok?252174%_
                (let ((__method254966
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self252164%_ 'check-arguments))))
                  (if __method254966
                      (let ()
                        (declare (not safe))
                        (__method254966
                         _%self252164%_
                         _%ctx252159%_
                         _%stx252160%_
                         _%args252161%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self252164%_
                                 'check-arguments))
                        '#!void))))
               (_%g252176252190%_
                (lambda (_%g252177252187%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g252177252187%_))))
               (_%g252175252269%_
                (lambda (_%g252177252193%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g252177252193%_))
                      (let ((_%e252180252195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g252177252193%_))))
                        (let ((_%hd252181252198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e252180252195%_)))
                              (_%tl252182252200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e252180252195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl252182252200%_))
                              (let ((_%e252183252203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl252182252200%_))))
                                (let ((_%hd252184252206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e252183252203%_)))
                                      (_%tl252185252208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e252183252203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl252185252208%_))
                                      ((lambda (_%g252178252211%_
                                                _%g252179252212%_)
                                         (let* ((_%klass252228%_
                                                 (let ((__tmp255041
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252164%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _%stx252160%_
                                                    __tmp255041)))
                                                (_%field252230%_
                                                 (let ((__tmp255042
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self252164%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _%klass252228%_
                                                    __tmp255042)))
                                                (_%object252232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252159%_
                                                    _%g252179252212%_)))
                                                (_%value252234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%ctx252159%_
                                                    _%g252178252211%_)))
                                                (_%klass252237%_
                                                 _%klass252228%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass252237%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ((__tmp255043
                                                      (cons (if (or _%arguments-ok?252174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (not (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self252164%_
                                    '4
                                    '#f
                                    '#f))))
                        '%#struct-unchecked-set!
                        '%#struct-direct-set!)
                    (cons (cons '%#ref
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252164%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#quote (cons _%field252230%_ '()))
                                (cons _%object252232%_
                                      (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp255043
                                                  _%stx252160%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252237%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255044
                                                          (cons (if (or _%arguments-ok?252174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252164%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252164%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252230%_ '()))
                                    (cons _%object252232%_
                                          (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255044
                                                      _%stx252160%_))
                                                   (let ((_%$e252257%_
                                                          (let ((__tmp255045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252164%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass252237%_
                     __tmp255045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e252257%_
                                                         ((lambda (_%klass252260%_)
                                                            (let ((__tmp255046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?252174%_
                                         (not (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252164%_
                                                 '3
                                                 '#f
                                                 '#f))))
                                     '%#struct-unchecked-set!
                                     '%#struct-set!)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self252164%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field252230%_ '()))
                                             (cons _%object252232%_
                                                   (cons _%value252234%_
                                                         '())))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255046 _%stx252160%_)))
                  _%$e252257%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self252164%_ '4 '#f '#f))
                     (let ((__tmp255047
                            (let ((_%$obj252266%_
                                   (let ((__tmp255048
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp255048))))
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj252266%_ '())
                                                      (cons _%object252232%_
                                                            '()))
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass252237%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#ref (cons _%$obj252266%_ '()))
                                      '())))
                    (cons (cons '%#struct-unchecked-set!
                                (cons (cons '%#ref
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252164%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                  '()))
                                      (cons (cons '%#quote
                                                  (cons _%field252230%_ '()))
                                            (cons (cons '%#ref
                                                        (cons _%$obj252266%_
                                                              '()))
                                                  (cons _%value252234%_
                                                        '())))))
                          (cons (if _%arguments-ok?252174%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'unchecked-slot-set!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self252164%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    (cons _%value252234%_ '())))))
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
                             _%self252164%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj252266%_ '()))
                    (cons (cons '%#quote
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self252164%_
                                         '3
                                         '#f
                                         '#f))
                                      '()))
                          (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp255047 _%stx252160%_))
                     (let ((__tmp255049
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons 'unchecked-slot-set! '()))
                                        (cons _%object252232%_
                                              (cons (cons '%#quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self252164%_
                           '3
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%value252234%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp255049
                        _%stx252160%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd252184252206%_
                                       _%hd252181252198%_)
                                      (_%g252176252190%_ _%g252177252193%_))))
                              (_%g252176252190%_ _%g252177252193%_))))
                      (_%g252176252190%_ _%g252177252193%_)))))
          (_%g252175252269%_ _%args252161%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass254258 __method-table254259)
        (let ((__check-arguments254260
               (let ((__tmp255050
                      (lambda ()
                        (let ((__method254261
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table254259
                                  'check-arguments
                                  '#f))))
                          (if __method254261
                              __method254261
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp255050))))
          (lambda (_%self252158%_ _%ctx252159%_ _%stx252160%_ _%args252161%_)
            (let* ((_%self252164%_ _%self252158%_)
                   (_%arguments-ok?252174%_
                    ((force __check-arguments254260)
                     _%self252164%_
                     _%ctx252159%_
                     _%stx252160%_
                     _%args252161%_))
                   (_%g252176252190%_
                    (lambda (_%g252177252187%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g252177252187%_))))
                   (_%g252175252269%_
                    (lambda (_%g252177252193%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%g252177252193%_))
                          (let ((_%e252180252195%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g252177252193%_))))
                            (let ((_%hd252181252198%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e252180252195%_)))
                                  (_%tl252182252200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e252180252195%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl252182252200%_))
                                  (let ((_%e252183252203%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl252182252200%_))))
                                    (let ((_%hd252184252206%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e252183252203%_)))
                                          (_%tl252185252208%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e252183252203%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl252185252208%_))
                                          ((lambda (_%g252178252211%_
                                                    _%g252179252212%_)
                                             (let* ((_%klass252228%_
                                                     (let ((__tmp255051
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252164%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _%stx252160%_
                                                        __tmp255051)))
                                                    (_%field252230%_
                                                     (let ((__tmp255052
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self252164%_
                                                               '3
                                                               '#f
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _%klass252228%_
                                                        __tmp255052)))
                                                    (_%object252232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252159%_
                                                        _%g252179252212%_)))
                                                    (_%value252234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%ctx252159%_
                                                        _%g252178252211%_)))
                                                    (_%klass252237%_
                                                     _%klass252228%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass252237%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ((__tmp255053
                                                          (cons (if (or _%arguments-ok?252174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (not (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self252164%_
                                        '4
                                        '#f
                                        '#f))))
                            '%#struct-unchecked-set!
                            '%#struct-direct-set!)
                        (cons (cons '%#ref
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252164%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#quote (cons _%field252230%_ '()))
                                    (cons _%object252232%_
                                          (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp255053
                                                      _%stx252160%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass252237%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp255054
                                                              (cons (if (or _%arguments-ok?252174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (not (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self252164%_
                                            '4
                                            '#f
                                            '#f))))
                                '%#struct-unchecked-set!
                                '%#struct-set!)
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self252164%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#quote
                                              (cons _%field252230%_ '()))
                                        (cons _%object252232%_
                                              (cons _%value252234%_ '())))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp255054 _%stx252160%_))
               (let ((_%$e252257%_
                      (let ((__tmp255055
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self252164%_
                                '3
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _%klass252237%_
                         __tmp255055))))
                 (if _%$e252257%_
                     ((lambda (_%klass252260%_)
                        (let ((__tmp255056
                               (cons (if (or _%arguments-ok?252174%_
                                             (not (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self252164%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                         '%#struct-unchecked-set!
                                         '%#struct-set!)
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self252164%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#quote
                                                       (cons _%field252230%_
                                                             '()))
                                                 (cons _%object252232%_
                                                       (cons _%value252234%_
                                                             '())))))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp255056 _%stx252160%_)))
                      _%$e252257%_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self252164%_
                            '4
                            '#f
                            '#f))
                         (let ((__tmp255057
                                (let ((_%$obj252266%_
                                       (let ((__tmp255058
                                              (let ()
                                                (declare (not safe))
                                                (##gensym '__obj))))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp255058))))
                                  (cons '%#let-values
                                        (cons (cons (cons (cons _%$obj252266%_
                                                                '())
                                                          (cons _%object252232%_
                                                                '()))
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass252237%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj252266%_ '()))
                                          '())))
                        (cons (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self252164%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#quote
                                                      (cons _%field252230%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj252266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%value252234%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons (if _%arguments-ok?252174%_
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'unchecked-slot-set!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj252266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self252164%_
                                       '3
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%value252234%_ '())))))
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
                                 _%self252164%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#ref (cons _%$obj252266%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self252164%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp255057 _%stx252160%_))
                         (let ((__tmp255059
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'unchecked-slot-set!
                                                        '()))
                                            (cons _%object252232%_
                                                  (cons (cons '%#quote
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252164%_
                               '3
                               '#f
                               '#f))
                            '()))
                (cons _%value252234%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp255059
                            _%stx252160%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd252184252206%_
                                           _%hd252181252198%_)
                                          (_%g252176252190%_
                                           _%g252177252193%_))))
                                  (_%g252176252190%_ _%g252177252193%_))))
                          (_%g252176252190%_ _%g252177252193%_)))))
              (_%g252175252269%_ _%args252161%_))))))
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
      (lambda (_%self251974%_ _%ctx251975%_ _%stx251976%_ _%args251977%_)
        (let* ((_%self251980%_ _%self251974%_)
               (_%self251989251999%_ _%self251980%_)
               (_%E251991252002%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251989251999%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%K251992252012%_
                (lambda (_%inline252005%_ _%dispatch252006%_ _%arity252007%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self251980%_
                         _%args251977%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx251976%_
                         _%arity252007%_)))
                  (if _%inline252005%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp255060 (_%inline252005%_ _%stx251976%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp255060
                           _%stx251976%_
                           _%ctx251975%_)))
                      (if (and _%dispatch252006%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch252006%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch252006%_))
                            (let ((__tmp255061
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch252006%_
                                                           '()))
                                               _%args251977%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp255061
                               _%stx251976%_
                               _%ctx251975%_)))
                          (gxc#!procedure::optimize-call
                           _%self251980%_
                           _%ctx251975%_
                           _%stx251976%_
                           _%args251977%_)))))
               (_%e251993252015%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251989251999%_ '1 '#f '#f)))
               (_%e251994252018%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251989251999%_ '2 '#f '#f)))
               (_%e251995252021%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251989251999%_ '3 '#f '#f)))
               (_%arity252024%_ _%e251995252021%_)
               (_%e251996252026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251989251999%_ '4 '#f '#f)))
               (_%dispatch252029%_ _%e251996252026%_)
               (_%e251997252031%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251989251999%_ '5 '#f '#f)))
               (_%inline252034%_ _%e251997252031%_))
          (_%K251992252012%_
           _%inline252034%_
           _%dispatch252029%_
           _%arity252024%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self251826%_ _%ctx251827%_ _%stx251828%_ _%args251829%_)
        (let* ((_%self251832%_ _%self251826%_)
               (_%$e251846%_
                (let ((__tmp255063
                       (lambda (_%g251841251843%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%g251841251843%_
                            _%args251829%_))))
                      (__tmp255062
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self251832%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp255063 __tmp255062))))
          (if _%$e251846%_
              ((lambda (_%clause251849%_)
                 (let ((__method254967
                        (let ()
                          (declare (not safe))
                          (__method-ref _%clause251849%_ 'optimize-call))))
                   (if __method254967
                       (let ()
                         (declare (not safe))
                         (__method254967
                          _%clause251849%_
                          _%ctx251827%_
                          _%stx251828%_
                          _%args251829%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause251849%_
                                  'optimize-call))
                         '#!void))))
               _%$e251846%_)
              (let ((__tmp255064
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self251832%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx251828%_
                 __tmp255064))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self251567%_ _%ctx251568%_ _%stx251569%_ _%args251570%_)
        (let* ((_%self251573%_ _%self251567%_)
               (_%self251582251591%_ _%self251573%_)
               (_%E251584251594%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self251582251591%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%K251585251685%_
                (lambda (_%dispatch251597%_ _%table251598%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch251597%_))
                      (let* ((_%g251599251609%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch251597%_)))
                             (_%else251601251617%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch251597%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx251568%_
                                   _%stx251569%_))))
                             (_%K251603251666%_
                              (lambda (_%main251620%_ _%keys251621%_)
                                (let ((_g255065_
                                       (gxc#!kw-lambda-split-args
                                        _%stx251569%_
                                        _%args251570%_)))
                                  (begin
                                    (let ((_g255066_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g255065_)
                                                 (##values-length _g255065_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g255066_ 2)))
                                          (error "Context expects 2 values"
                                                 _g255066_)))
                                    (let ((_%pargs251623%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255065_ 0)))
                                          (_%kwargs251624%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g255065_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main251620%_))
                                        (if _%table251598%_
                                            (let ((_%xargs251632%_
                                                   (map (lambda (_%key251626%_)
                                                          (let ((_%$e251628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key251626%_ _%kwargs251624%_))))
                    (if _%$e251628%_ _%$e251628%_ '(%#ref absent-value))))
                _%keys251621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw251634%_)
                                                 (if (memq (car _%kw251634%_)
                                                           _%keys251621%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx251569%_
                                                        _%keys251621%_
                                                        _%kw251634%_))))
                                               _%kwargs251624%_)
                                              (let ((__tmp255067
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main251620%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (let ()
                                 (declare (not safe))
                                 (foldr__0
                                  cons
                                  _%pargs251623%_
                                  _%xargs251632%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp255067
                                                 _%stx251569%_
                                                 _%ctx251568%_)))
                                            (let* ((_%kwt251636%_
                                                    (let ((__tmp255068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp255068)))
                                                   (_%kwvars251640%_
                                                    (map (lambda (_%_251638%_)
                                                           (let ((__tmp255069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp255069)))
                 _%kwargs251624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind251645%_
                                                    (map (lambda (_%kw251642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251643%_)
                   (cons (cons _%kwvar251643%_ '())
                         (cons (cdr _%kw251642%_) '())))
                 _%kwargs251624%_
                 _%kwvars251640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset251650%_
                                                    (map (lambda (_%kw251647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251648%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt251636%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw251647%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar251648%_
                                                             '()))
                                                 '()))))))
                 _%kwargs251624%_
                 _%kwvars251640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs251655%_
                                                    (map (lambda (_%kw251652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar251653%_)
                   (cons (car _%kw251652%_)
                         (cons '%#ref (cons _%kwvar251653%_ '()))))
                 _%kwargs251624%_
                 _%kwvars251640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs251663%_
                                                    (map (lambda (_%key251657%_)
                                                           (let ((_%$e251659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key251657%_ _%xkwargs251655%_))))
                     (if _%$e251659%_ _%$e251659%_ '(%#ref absent-value))))
                 _%keys251621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp255070
                                                    (cons '%#let-values
                                                          (cons _%kwbind251645%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt251636%_ '())
                                                      (cons (let ((__tmp255071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs251624%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255071 _%stx251569%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp255072
                                                             (cons (let ((__tmp255073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main251620%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt251636%_
                                                                '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldr__0
                                                       cons
                                                       _%pargs251623%_
                                                       _%xargs251663%_)))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp255073 _%stx251569%_))
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp255072 _%kwset251650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp255070
                                               _%stx251569%_
                                               _%ctx251568%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g251599251609%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%e251604251669%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251599251609%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%e251605251672%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251599251609%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%e251606251675%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251599251609%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys251678%_ _%e251606251675%_)
                                   (_%e251607251680%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%g251599251609%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main251683%_ _%e251607251680%_))
                              (_%K251603251666%_
                               _%main251683%_
                               _%keys251678%_))
                            (_%else251601251617%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx251568%_ _%stx251569%_)))))
               (_%e251586251688%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251582251591%_ '1 '#f '#f)))
               (_%e251587251691%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251582251591%_ '2 '#f '#f)))
               (_%e251588251694%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251582251591%_ '3 '#f '#f)))
               (_%table251697%_ _%e251588251694%_)
               (_%e251589251699%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self251582251591%_ '4 '#f '#f)))
               (_%dispatch251702%_ _%e251589251699%_))
          (_%K251585251685%_ _%dispatch251702%_ _%table251697%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx251180%_ _%args251181%_)
        (let _%lp251183%_ ((_%rest251185%_ _%args251181%_)
                           (_%pargs251186%_ '())
                           (_%kwargs251187%_ '()))
          (let* ((_%__stx254526254527%_ _%rest251185%_)
                 (_%g251193251245%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254526254527%_)))))
            (let ((_%__kont254528254529%_
                   (lambda (_%g251195251424%_ _%g251196251425%_)
                     (_%lp251183%_
                      _%g251195251424%_
                      (cons _%g251196251425%_ _%pargs251186%_)
                      _%kwargs251187%_)))
                  (_%__kont254530254531%_
                   (lambda (_%g251210251370%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%g251210251370%_
                                _%pargs251186%_))
                             (reverse _%kwargs251187%_))))
                  (_%__kont254532254533%_
                   (lambda (_%g251221251317%_
                            _%g251222251318%_
                            _%g251223251319%_)
                     (let ((_%kw251336%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%g251223251319%_))))
                       (if (assq _%kw251336%_ _%kwargs251187%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx251180%_
                              _%kw251336%_))
                           (_%lp251183%_
                            _%g251221251317%_
                            _%pargs251186%_
                            (cons (cons _%kw251336%_ _%g251222251318%_)
                                  _%kwargs251187%_))))))
                  (_%__kont254534254535%_
                   (lambda (_%g251236251265%_ _%g251237251266%_)
                     (_%lp251183%_
                      _%g251236251265%_
                      (cons _%g251237251266%_ _%pargs251186%_)
                      _%kwargs251187%_)))
                  (_%__kont254536254537%_
                   (lambda ()
                     (values (reverse _%pargs251186%_)
                             (reverse _%kwargs251187%_)))))
              (let ((_%__match254633254634%_
                     (lambda (_%e251224251285%_
                              _%hd251225251288%_
                              _%tl251226251290%_
                              _%e251227251293%_
                              _%hd251228251296%_
                              _%tl251229251298%_
                              _%e251230251301%_
                              _%hd251231251304%_
                              _%tl251232251306%_
                              _%e251233251309%_
                              _%hd251234251312%_
                              _%tl251235251314%_)
                       (let ((_%g251221251317%_ _%tl251235251314%_)
                             (_%g251222251318%_ _%hd251234251312%_)
                             (_%g251223251319%_ _%hd251231251304%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%g251223251319%_))
                             (_%__kont254532254533%_
                              _%g251221251317%_
                              _%g251222251318%_
                              _%g251223251319%_)
                             (_%__kont254534254535%_
                              _%tl251226251290%_
                              _%hd251225251288%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254526254527%_))
                    (let ((_%e251197251389%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254526254527%_))))
                      (let ((_%tl251199251394%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251197251389%_)))
                            (_%hd251198251392%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251197251389%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd251198251392%_))
                            (let ((_%e251200251397%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd251198251392%_))))
                              (let ((_%tl251202251402%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e251200251397%_)))
                                    (_%hd251201251400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e251200251397%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd251201251400%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd251201251400%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl251202251402%_))
                                            (let ((_%e251203251405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl251202251402%_))))
                                              (let ((_%tl251205251410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e251203251405%_)))
                                                    (_%hd251204251408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e251203251405%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd251204251408%_))
                                                    (let ((_%e251206251413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd251204251408%_))))
                                                      (if (equal? _%e251206251413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl251205251410%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl251199251394%_))
                          (let ((_%e251207251416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl251199251394%_))))
                            (let ((_%tl251209251421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e251207251416%_)))
                                  (_%hd251208251419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e251207251416%_))))
                              (_%__kont254528254529%_
                               _%tl251209251421%_
                               _%hd251208251419%_)))
                          (_%__kont254534254535%_
                           _%tl251199251394%_
                           _%hd251198251392%_))
                      (_%__kont254534254535%_
                       _%tl251199251394%_
                       _%hd251198251392%_))
                  (if (equal? _%e251206251413%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251205251410%_))
                          (_%__kont254530254531%_ _%tl251199251394%_)
                          (_%__kont254534254535%_
                           _%tl251199251394%_
                           _%hd251198251392%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl251205251410%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl251199251394%_))
                              (let ((_%e251233251309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl251199251394%_))))
                                (let ((_%tl251235251314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e251233251309%_)))
                                      (_%hd251234251312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e251233251309%_))))
                                  (_%__match254633254634%_
                                   _%e251197251389%_
                                   _%hd251198251392%_
                                   _%tl251199251394%_
                                   _%e251200251397%_
                                   _%hd251201251400%_
                                   _%tl251202251402%_
                                   _%e251203251405%_
                                   _%hd251204251408%_
                                   _%tl251205251410%_
                                   _%e251233251309%_
                                   _%hd251234251312%_
                                   _%tl251235251314%_)))
                              (_%__kont254534254535%_
                               _%tl251199251394%_
                               _%hd251198251392%_))
                          (_%__kont254534254535%_
                           _%tl251199251394%_
                           _%hd251198251392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl251205251410%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl251199251394%_))
                                                            (let ((_%e251233251309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl251199251394%_))))
                      (let ((_%tl251235251314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e251233251309%_)))
                            (_%hd251234251312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e251233251309%_))))
                        (_%__match254633254634%_
                         _%e251197251389%_
                         _%hd251198251392%_
                         _%tl251199251394%_
                         _%e251200251397%_
                         _%hd251201251400%_
                         _%tl251202251402%_
                         _%e251203251405%_
                         _%hd251204251408%_
                         _%tl251205251410%_
                         _%e251233251309%_
                         _%hd251234251312%_
                         _%tl251235251314%_)))
                    (_%__kont254534254535%_
                     _%tl251199251394%_
                     _%hd251198251392%_))
                (_%__kont254534254535%_
                 _%tl251199251394%_
                 _%hd251198251392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont254534254535%_
                                             _%tl251199251394%_
                                             _%hd251198251392%_))
                                        (_%__kont254534254535%_
                                         _%tl251199251394%_
                                         _%hd251198251392%_))
                                    (_%__kont254534254535%_
                                     _%tl251199251394%_
                                     _%hd251198251392%_))))
                            (_%__kont254534254535%_
                             _%tl251199251394%_
                             _%hd251198251392%_))))
                    (_%__kont254536254537%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self251164%_ _%ctx251165%_ _%stx251166%_ _%args251167%_)
        (let ((_%self251170%_ _%self251164%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx251165%_ _%stx251166%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self250854%_ _%stx250855%_)
        (let* ((_%__stx254642254643%_ _%stx250855%_)
               (_%g250858250898%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254642254643%_)))))
          (let ((_%__kont254644254645%_
                 (lambda (_%g250860251002%_ _%g250861251003%_)
                   (let ((_%$e251030%_
                          (member 'return:
                                  (let ((__tmp255074
                                         (lambda (_%g251022251025%_
                                                  _%g251023251027%_)
                                           (cons _%g251022251025%_
                                                 _%g251023251027%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp255074
                                     '()
                                     _%g250861251003%_))
                                  gx#stx-eq?)))
                     (if _%$e251030%_
                         ((lambda (_%tail251033%_)
                            (let ((_%type251035%_
                                   (let ((__tmp255075
                                          (let ((__tmp255076
                                                 (cadr _%tail251033%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp255076))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx250855%_
                                      __tmp255075))))
                              (gxc#check-return-type!
                               _%stx250855%_
                               _%g250860251002%_
                               _%type251035%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self250854%_
                                 _%g250860251002%_))))
                          _%$e251030%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self250854%_
                            _%g250860251002%_))))))
                (_%__kont254648254649%_
                 (lambda (_%g250883250927%_ _%g250884250928%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self250854%_ _%g250883250927%_)))))
            (let ((_%__match254679254680%_
                   (lambda (_%e250862250948%_
                            _%hd250863250951%_
                            _%tl250864250953%_
                            _%e250865250956%_
                            _%hd250866250959%_
                            _%tl250867250961%_
                            _%e250868250964%_
                            _%hd250869250967%_
                            _%tl250870250969%_
                            _%__splice254646254647%_
                            _%target250871250972%_
                            _%tl250873250974%_)
                     (letrec ((_%loop250874250977%_
                               (lambda (_%hd250872250980%_
                                        _%signature250878250982%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd250872250980%_))
                                     (let ((_%e250875250984%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd250872250980%_))))
                                       (let ((_%lp-tl250877250989%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e250875250984%_)))
                                             (_%lp-hd250876250987%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e250875250984%_))))
                                         (_%loop250874250977%_
                                          _%lp-tl250877250989%_
                                          (cons _%lp-hd250876250987%_
                                                _%signature250878250982%_))))
                                     (let ((_%signature250879250992%_
                                            (reverse _%signature250878250982%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl250867250961%_))
                                           (let ((_%e250880250994%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl250867250961%_))))
                                             (let ((_%tl250882250999%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e250880250994%_)))
                                                   (_%hd250881250997%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e250880250994%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl250882250999%_))
                                                   (_%__kont254644254645%_
                                                    _%hd250881250997%_
                                                    _%signature250879250992%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g250858250898%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g250858250898%_))))))))
                       (_%loop250874250977%_ _%target250871250972%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254642254643%_))
                  (let ((_%e250862250948%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254642254643%_))))
                    (let ((_%tl250864250953%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250862250948%_)))
                          (_%hd250863250951%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250862250948%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250864250953%_))
                          (let ((_%e250865250956%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250864250953%_))))
                            (let ((_%tl250867250961%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250865250956%_)))
                                  (_%hd250866250959%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250865250956%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250866250959%_))
                                  (let ((_%e250868250964%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250866250959%_))))
                                    (let ((_%tl250870250969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250868250964%_)))
                                          (_%hd250869250967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250868250964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250869250967%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd250869250967%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl250870250969%_))
                                                  (let ((_%__splice254646254647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl250870250969%_
                                                            '0))))
                                                    (let ((_%tl250873250974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254646254647%_
                                                              '1)))
                                                          (_%target250871250972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice254646254647%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250873250974%_))
                                                          (_%__match254679254680%_
                                                           _%e250862250948%_
                                                           _%hd250863250951%_
                                                           _%tl250864250953%_
                                                           _%e250865250956%_
                                                           _%hd250866250959%_
                                                           _%tl250867250961%_
                                                           _%e250868250964%_
                                                           _%hd250869250967%_
                                                           _%tl250870250969%_
                                                           _%__splice254646254647%_
                                                           _%target250871250972%_
                                                           _%tl250873250974%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250867250961%_))
                      (let ((_%e250891250919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250867250961%_))))
                        (let ((_%tl250893250924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250891250919%_)))
                              (_%hd250892250922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250891250919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250893250924%_))
                              (_%__kont254648254649%_
                               _%hd250892250922%_
                               _%hd250866250959%_)
                              (let ()
                                (declare (not safe))
                                (_%g250858250898%_)))))
                      (let () (declare (not safe)) (_%g250858250898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250867250961%_))
                                                      (let ((_%e250891250919%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250867250961%_))))
                (let ((_%tl250893250924%_
                       (let () (declare (not safe)) (##cdr _%e250891250919%_)))
                      (_%hd250892250922%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250891250919%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250893250924%_))
                      (_%__kont254648254649%_
                       _%hd250892250922%_
                       _%hd250866250959%_)
                      (let () (declare (not safe)) (_%g250858250898%_)))))
              (let () (declare (not safe)) (_%g250858250898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250867250961%_))
                                                  (let ((_%e250891250919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250867250961%_))))
                                                    (let ((_%tl250893250924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250891250919%_)))
                                                          (_%hd250892250922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250891250919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250893250924%_))
                                                          (_%__kont254648254649%_
                                                           _%hd250892250922%_
                                                           _%hd250866250959%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250858250898%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250858250898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250867250961%_))
                                              (let ((_%e250891250919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250867250961%_))))
                                                (let ((_%tl250893250924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250891250919%_)))
                                                      (_%hd250892250922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250891250919%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250893250924%_))
                                                      (_%__kont254648254649%_
                                                       _%hd250892250922%_
                                                       _%hd250866250959%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250858250898%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250858250898%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250867250961%_))
                                      (let ((_%e250891250919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250867250961%_))))
                                        (let ((_%tl250893250924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250891250919%_)))
                                              (_%hd250892250922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250891250919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250893250924%_))
                                              (_%__kont254648254649%_
                                               _%hd250892250922%_
                                               _%hd250866250959%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g250858250898%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250858250898%_))))))
                          (let () (declare (not safe)) (_%g250858250898%_)))))
                  (let () (declare (not safe)) (_%g250858250898%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx250829%_ _%expr250830%_ _%type250831%_)
        (let ((_%$e250833%_ (not _%type250831%_)))
          (if _%$e250833%_
              _%$e250833%_
              (let ((_%$e250836%_
                     (eq? (##structure-ref _%type250831%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e250836%_
                    _%$e250836%_
                    (let ((_%$e250839%_
                           (eq? (##structure-ref
                                 _%type250831%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e250839%_
                          _%$e250839%_
                          (let ((_%expr-type250843%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr250830%_))))
                            (if (not _%expr-type250843%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx250829%_
                                   _%type250831%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type250843%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx250829%_
                                       _%type250831%_
                                       _%expr-type250843%_))
                                    (let ((_%$e250847%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type250843%_
                                              'gxc#!abort::t))))
                                      (if _%$e250847%_
                                          _%$e250847%_
                                          (let ((_%$e250850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type250843%_
                                                    _%type250831%_))))
                                            (if _%$e250850%_
                                                _%$e250850%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx250829%_
                                                   _%type250831%_
                                                   _%expr-type250843%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self250255%_ _%stx250256%_)
        (let* ((_%__stx254724254725%_ _%stx250256%_)
               (_%g250261250371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254724254725%_)))))
          (let ((_%__kont254726254727%_
                 (lambda (_%g250263250803%_
                          _%g250264250804%_
                          _%g250265250805%_)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-e _%g250265250805%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self250255%_ _%g250264250804%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self250255%_
                          _%g250263250803%_)))))
                (_%__kont254728254729%_
                 (lambda (_%g250284250629%_
                          _%g250285250630%_
                          _%g250286250631%_
                          _%g250287250632%_)
                   (let ((_%$e250664%_
                          (let ((__tmp255077
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%g250287250632%_))))
                            (declare (not safe))
                            (gxc#optimizer-lookup-type __tmp255077))))
                     (if _%$e250664%_
                         ((lambda (_%pred-type250667%_)
                            (if (or (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250667%_
                                       'gxc#!predicate::t))
                                    (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%pred-type250667%_
                                       'gxc#!primitive-predicate::t)))
                                (let* ((_%test250672%_
                                        (let ((__tmp255078
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#call))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref))
                         (cons _%g250287250632%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#ref))
                               (cons _%g250286250631%_ '()))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-apply
                                           __tmp255078
                                           _%stx250256%_
                                           _%self250255%_)))
                                       (_%K250676%_
                                        (let ((__tmp255079
                                               (lambda ()
                                                 (let ((__tmp255082
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _%self250255%_
                                                             _%g250285250630%_))))
                                                       (__tmp255080
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#identifier-symbol _%g250286250631%_))
                            (let ((__tmp255081
                                   (##structure-ref
                                    _%pred-type250667%_
                                    '1
                                    gxc#!type::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#optimizer-resolve-class
                               _%stx250256%_
                               __tmp255081)))
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters__1
                                                    __tmp255082
                                                    gxc#current-compile-path-type
                                                    __tmp255080)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255079)))
                                       (_%E250679%_
                                        (let ((__tmp255083
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self250255%_
                                                    _%g250284250629%_)))))
                                          (declare (not safe))
                                          (__make-promise __tmp255083)))
                                       (_%__stx254702254703%_ _%test250672%_)
                                       (_%g250683250697%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx254702254703%_)))))
                                  (let ((_%__kont254704254705%_
                                         (lambda (_%g250685250725%_
                                                  _%g250686250726%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%g250685250725%_))
                                               (force _%K250676%_)
                                               (force _%E250679%_))))
                                        (_%__kont254706254707%_
                                         (lambda ()
                                           (let ((__tmp255084
                                                  (cons '%#if
                                                        (cons _%test250672%_
                                                              (cons (force _%K250676%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (force _%E250679%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp255084
                                              _%stx250256%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx254702254703%_))
                                        (let ((_%e250687250709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx254702254703%_))))
                                          (let ((_%tl250689250714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e250687250709%_)))
                                                (_%hd250688250712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e250687250709%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl250689250714%_))
                                                (let ((_%e250690250717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl250689250714%_))))
                                                  (let ((_%tl250692250722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e250690250717%_)))
                                                        (_%hd250691250720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e250690250717%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl250692250722%_))
                                                        (_%__kont254704254705%_
                                                         _%hd250691250720%_
                                                         _%hd250688250712%_)
                                                        (_%__kont254706254707%_))))
                                                (_%__kont254706254707%_))))
                                        (_%__kont254706254707%_))))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-operands
                                   _%self250255%_
                                   _%stx250256%_))))
                          _%$e250664%_)
                         (let ()
                           (declare (not safe))
                           (gxc#xform-operands
                            _%self250255%_
                            _%stx250256%_))))))
                (_%__kont254730254731%_
                 (lambda (_%g250321250505%_
                          _%g250322250506%_
                          _%g250323250507%_
                          _%g250324250508%_)
                   (gxc#optimize-if%
                    _%self250255%_
                    (let ((__tmp255085
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#if))
                                 (cons _%g250323250507%_
                                       (cons _%g250321250505%_
                                             (cons _%g250322250506%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp255085 _%stx250256%_)))))
                (_%__kont254732254733%_
                 (lambda (_%g250352250408%_
                          _%g250353250409%_
                          _%g250354250410%_)
                   (let ()
                     (declare (not safe))
                     (gxc#xform-operands _%self250255%_ _%stx250256%_)))))
            (let ((_%__match254931254932%_
                   (lambda (_%e250325250433%_
                            _%hd250326250436%_
                            _%tl250327250438%_
                            _%e250328250441%_
                            _%hd250329250444%_
                            _%tl250330250446%_
                            _%e250331250449%_
                            _%hd250332250452%_
                            _%tl250333250454%_
                            _%e250334250457%_
                            _%hd250335250460%_
                            _%tl250336250462%_
                            _%e250337250465%_
                            _%hd250338250468%_
                            _%tl250339250470%_
                            _%e250340250473%_
                            _%hd250341250476%_
                            _%tl250342250478%_
                            _%e250343250481%_
                            _%hd250344250484%_
                            _%tl250345250486%_
                            _%e250346250489%_
                            _%hd250347250492%_
                            _%tl250348250494%_
                            _%e250349250497%_
                            _%hd250350250500%_
                            _%tl250351250502%_)
                     (let ((_%g250321250505%_ _%hd250350250500%_)
                           (_%g250322250506%_ _%hd250347250492%_)
                           (_%g250323250507%_ _%hd250344250484%_)
                           (_%g250324250508%_ _%hd250341250476%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _%g250324250508%_ 'not))
                           (_%__kont254730254731%_
                            _%g250321250505%_
                            _%g250322250506%_
                            _%g250323250507%_
                            _%g250324250508%_)
                           (_%__kont254732254733%_
                            _%hd250350250500%_
                            _%hd250347250492%_
                            _%hd250329250444%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254724254725%_))
                  (let ((_%e250266250755%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254724254725%_))))
                    (let ((_%tl250268250760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250266250755%_)))
                          (_%hd250267250758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250266250755%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250268250760%_))
                          (let ((_%e250269250763%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250268250760%_))))
                            (let ((_%tl250271250768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250269250763%_)))
                                  (_%hd250270250766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250269250763%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd250270250766%_))
                                  (let ((_%e250272250771%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd250270250766%_))))
                                    (let ((_%tl250274250776%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250272250771%_)))
                                          (_%hd250273250774%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250272250771%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd250273250774%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#quote
                                                 _%hd250273250774%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250274250776%_))
                                                  (let ((_%e250275250779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250274250776%_))))
                                                    (let ((_%tl250277250784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250275250779%_)))
                                                          (_%hd250276250782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250275250779%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250277250784%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl250271250768%_))
                      (let ((_%e250278250787%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250271250768%_))))
                        (let ((_%tl250280250792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250278250787%_)))
                              (_%hd250279250790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250278250787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250280250792%_))
                              (let ((_%e250281250795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250280250792%_))))
                                (let ((_%tl250283250800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250281250795%_)))
                                      (_%hd250282250798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250281250795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250283250800%_))
                                      (_%__kont254726254727%_
                                       _%hd250282250798%_
                                       _%hd250279250790%_
                                       _%hd250276250782%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250261250371%_)))))
                      (let () (declare (not safe)) (_%g250261250371%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250271250768%_))
                      (let ((_%e250361250392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250271250768%_))))
                        (let ((_%tl250363250397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250361250392%_)))
                              (_%hd250362250395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250361250392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl250363250397%_))
                              (let ((_%e250364250400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl250363250397%_))))
                                (let ((_%tl250366250405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e250364250400%_)))
                                      (_%hd250365250403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e250364250400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250366250405%_))
                                      (_%__kont254732254733%_
                                       _%hd250365250403%_
                                       _%hd250362250395%_
                                       _%hd250270250766%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g250261250371%_)))))
                      (let () (declare (not safe)) (_%g250261250371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250271250768%_))
                                                      (let ((_%e250361250392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250271250768%_))))
                (let ((_%tl250363250397%_
                       (let () (declare (not safe)) (##cdr _%e250361250392%_)))
                      (_%hd250362250395%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250361250392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250363250397%_))
                      (let ((_%e250364250400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250363250397%_))))
                        (let ((_%tl250366250405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250364250400%_)))
                              (_%hd250365250403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250364250400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250366250405%_))
                              (_%__kont254732254733%_
                               _%hd250365250403%_
                               _%hd250362250395%_
                               _%hd250270250766%_)
                              (let ()
                                (declare (not safe))
                                (_%g250261250371%_)))))
                      (let () (declare (not safe)) (_%g250261250371%_)))))
              (let () (declare (not safe)) (_%g250261250371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _%hd250273250774%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250274250776%_))
                                                      (let ((_%e250297250565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250274250776%_))))
                (let ((_%tl250299250570%_
                       (let () (declare (not safe)) (##cdr _%e250297250565%_)))
                      (_%hd250298250568%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250297250565%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd250298250568%_))
                      (let ((_%e250300250573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd250298250568%_))))
                        (let ((_%tl250302250578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250300250573%_)))
                              (_%hd250301250576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250300250573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd250301250576%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd250301250576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250302250578%_))
                                      (let ((_%e250303250581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250302250578%_))))
                                        (let ((_%tl250305250586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250303250581%_)))
                                              (_%hd250304250584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250303250581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250305250586%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250299250570%_))
                                                  (let ((_%e250306250589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250299250570%_))))
                                                    (let ((_%tl250308250594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250306250589%_)))
                                                          (_%hd250307250592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250306250589%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd250307250592%_))
                                                          (let ((_%e250309250597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd250307250592%_))))
                    (let ((_%tl250311250602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250309250597%_)))
                          (_%hd250310250600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250309250597%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd250310250600%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _%hd250310250600%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250311250602%_))
                                  (let ((_%e250312250605%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250311250602%_))))
                                    (let ((_%tl250314250610%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250312250605%_)))
                                          (_%hd250313250608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250312250605%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250314250610%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250308250594%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250271250768%_))
                                                  (let ((_%e250315250613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250271250768%_))))
                                                    (let ((_%tl250317250618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250315250613%_)))
                                                          (_%hd250316250616%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250315250613%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250317250618%_))
                                                          (let ((_%e250318250621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250317250618%_))))
                    (let ((_%tl250320250626%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250318250621%_)))
                          (_%hd250319250624%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250318250621%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250320250626%_))
                          (_%__kont254728254729%_
                           _%hd250319250624%_
                           _%hd250316250616%_
                           _%hd250313250608%_
                           _%hd250304250584%_)
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250271250768%_))
                                                  (let ((_%e250361250392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250271250768%_))))
                                                    (let ((_%tl250363250397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250361250392%_)))
                                                          (_%hd250362250395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250361250392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250363250397%_))
                                                          (let ((_%e250364250400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250363250397%_))))
                    (let ((_%tl250366250405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250364250400%_)))
                          (_%hd250365250403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250364250400%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250366250405%_))
                          (_%__kont254732254733%_
                           _%hd250365250403%_
                           _%hd250362250395%_
                           _%hd250270250766%_)
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl250308250594%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250271250768%_))
                                                  (let ((_%e250346250489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250271250768%_))))
                                                    (let ((_%tl250348250494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250346250489%_)))
                                                          (_%hd250347250492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250346250489%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250348250494%_))
                                                          (let ((_%e250349250497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250348250494%_))))
                    (let ((_%tl250351250502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250349250497%_)))
                          (_%hd250350250500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250349250497%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250351250502%_))
                          (_%__match254931254932%_
                           _%e250266250755%_
                           _%hd250267250758%_
                           _%tl250268250760%_
                           _%e250269250763%_
                           _%hd250270250766%_
                           _%tl250271250768%_
                           _%e250272250771%_
                           _%hd250273250774%_
                           _%tl250274250776%_
                           _%e250297250565%_
                           _%hd250298250568%_
                           _%tl250299250570%_
                           _%e250300250573%_
                           _%hd250301250576%_
                           _%tl250302250578%_
                           _%e250303250581%_
                           _%hd250304250584%_
                           _%tl250305250586%_
                           _%e250306250589%_
                           _%hd250307250592%_
                           _%tl250308250594%_
                           _%e250346250489%_
                           _%hd250347250492%_
                           _%tl250348250494%_
                           _%e250349250497%_
                           _%hd250350250500%_
                           _%tl250351250502%_)
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250271250768%_))
                                                  (let ((_%e250361250392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250271250768%_))))
                                                    (let ((_%tl250363250397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250361250392%_)))
                                                          (_%hd250362250395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250361250392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250363250397%_))
                                                          (let ((_%e250364250400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250363250397%_))))
                    (let ((_%tl250366250405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250364250400%_)))
                          (_%hd250365250403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250364250400%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250366250405%_))
                          (_%__kont254732254733%_
                           _%hd250365250403%_
                           _%hd250362250395%_
                           _%hd250270250766%_)
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl250308250594%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250271250768%_))
                                          (let ((_%e250346250489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250271250768%_))))
                                            (let ((_%tl250348250494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250346250489%_)))
                                                  (_%hd250347250492%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250346250489%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250348250494%_))
                                                  (let ((_%e250349250497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250348250494%_))))
                                                    (let ((_%tl250351250502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250349250497%_)))
                                                          (_%hd250350250500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250349250497%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250351250502%_))
                                                          (_%__match254931254932%_
                                                           _%e250266250755%_
                                                           _%hd250267250758%_
                                                           _%tl250268250760%_
                                                           _%e250269250763%_
                                                           _%hd250270250766%_
                                                           _%tl250271250768%_
                                                           _%e250272250771%_
                                                           _%hd250273250774%_
                                                           _%tl250274250776%_
                                                           _%e250297250565%_
                                                           _%hd250298250568%_
                                                           _%tl250299250570%_
                                                           _%e250300250573%_
                                                           _%hd250301250576%_
                                                           _%tl250302250578%_
                                                           _%e250303250581%_
                                                           _%hd250304250584%_
                                                           _%tl250305250586%_
                                                           _%e250306250589%_
                                                           _%hd250307250592%_
                                                           _%tl250308250594%_
                                                           _%e250346250489%_
                                                           _%hd250347250492%_
                                                           _%tl250348250494%_
                                                           _%e250349250497%_
                                                           _%hd250350250500%_
                                                           _%tl250351250502%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250261250371%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250271250768%_))
                                          (let ((_%e250361250392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250271250768%_))))
                                            (let ((_%tl250363250397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250361250392%_)))
                                                  (_%hd250362250395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250361250392%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250363250397%_))
                                                  (let ((_%e250364250400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250363250397%_))))
                                                    (let ((_%tl250366250405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250364250400%_)))
                                                          (_%hd250365250403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250364250400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250366250405%_))
                                                          (_%__kont254732254733%_
                                                           _%hd250365250403%_
                                                           _%hd250362250395%_
                                                           _%hd250270250766%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250261250371%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250308250594%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250271250768%_))
                                      (let ((_%e250346250489%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250271250768%_))))
                                        (let ((_%tl250348250494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250346250489%_)))
                                              (_%hd250347250492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250346250489%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250348250494%_))
                                              (let ((_%e250349250497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250348250494%_))))
                                                (let ((_%tl250351250502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250349250497%_)))
                                                      (_%hd250350250500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250349250497%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250351250502%_))
                                                      (_%__match254931254932%_
                                                       _%e250266250755%_
                                                       _%hd250267250758%_
                                                       _%tl250268250760%_
                                                       _%e250269250763%_
                                                       _%hd250270250766%_
                                                       _%tl250271250768%_
                                                       _%e250272250771%_
                                                       _%hd250273250774%_
                                                       _%tl250274250776%_
                                                       _%e250297250565%_
                                                       _%hd250298250568%_
                                                       _%tl250299250570%_
                                                       _%e250300250573%_
                                                       _%hd250301250576%_
                                                       _%tl250302250578%_
                                                       _%e250303250581%_
                                                       _%hd250304250584%_
                                                       _%tl250305250586%_
                                                       _%e250306250589%_
                                                       _%hd250307250592%_
                                                       _%tl250308250594%_
                                                       _%e250346250489%_
                                                       _%hd250347250492%_
                                                       _%tl250348250494%_
                                                       _%e250349250497%_
                                                       _%hd250350250500%_
                                                       _%tl250351250502%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250261250371%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250261250371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250271250768%_))
                                      (let ((_%e250361250392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250271250768%_))))
                                        (let ((_%tl250363250397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250361250392%_)))
                                              (_%hd250362250395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250361250392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250363250397%_))
                                              (let ((_%e250364250400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250363250397%_))))
                                                (let ((_%tl250366250405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250364250400%_)))
                                                      (_%hd250365250403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250364250400%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250366250405%_))
                                                      (_%__kont254732254733%_
                                                       _%hd250365250403%_
                                                       _%hd250362250395%_
                                                       _%hd250270250766%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250261250371%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250261250371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_)))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250308250594%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250271250768%_))
                                  (let ((_%e250346250489%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250271250768%_))))
                                    (let ((_%tl250348250494%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250346250489%_)))
                                          (_%hd250347250492%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250346250489%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250348250494%_))
                                          (let ((_%e250349250497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250348250494%_))))
                                            (let ((_%tl250351250502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250349250497%_)))
                                                  (_%hd250350250500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250349250497%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250351250502%_))
                                                  (_%__match254931254932%_
                                                   _%e250266250755%_
                                                   _%hd250267250758%_
                                                   _%tl250268250760%_
                                                   _%e250269250763%_
                                                   _%hd250270250766%_
                                                   _%tl250271250768%_
                                                   _%e250272250771%_
                                                   _%hd250273250774%_
                                                   _%tl250274250776%_
                                                   _%e250297250565%_
                                                   _%hd250298250568%_
                                                   _%tl250299250570%_
                                                   _%e250300250573%_
                                                   _%hd250301250576%_
                                                   _%tl250302250578%_
                                                   _%e250303250581%_
                                                   _%hd250304250584%_
                                                   _%tl250305250586%_
                                                   _%e250306250589%_
                                                   _%hd250307250592%_
                                                   _%tl250308250594%_
                                                   _%e250346250489%_
                                                   _%hd250347250492%_
                                                   _%tl250348250494%_
                                                   _%e250349250497%_
                                                   _%hd250350250500%_
                                                   _%tl250351250502%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250271250768%_))
                                  (let ((_%e250361250392%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250271250768%_))))
                                    (let ((_%tl250363250397%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250361250392%_)))
                                          (_%hd250362250395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250361250392%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250363250397%_))
                                          (let ((_%e250364250400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250363250397%_))))
                                            (let ((_%tl250366250405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250364250400%_)))
                                                  (_%hd250365250403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250364250400%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250366250405%_))
                                                  (_%__kont254732254733%_
                                                   _%hd250365250403%_
                                                   _%hd250362250395%_
                                                   _%hd250270250766%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250308250594%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250271250768%_))
                          (let ((_%e250346250489%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250271250768%_))))
                            (let ((_%tl250348250494%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250346250489%_)))
                                  (_%hd250347250492%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250346250489%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250348250494%_))
                                  (let ((_%e250349250497%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250348250494%_))))
                                    (let ((_%tl250351250502%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250349250497%_)))
                                          (_%hd250350250500%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250349250497%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250351250502%_))
                                          (_%__match254931254932%_
                                           _%e250266250755%_
                                           _%hd250267250758%_
                                           _%tl250268250760%_
                                           _%e250269250763%_
                                           _%hd250270250766%_
                                           _%tl250271250768%_
                                           _%e250272250771%_
                                           _%hd250273250774%_
                                           _%tl250274250776%_
                                           _%e250297250565%_
                                           _%hd250298250568%_
                                           _%tl250299250570%_
                                           _%e250300250573%_
                                           _%hd250301250576%_
                                           _%tl250302250578%_
                                           _%e250303250581%_
                                           _%hd250304250584%_
                                           _%tl250305250586%_
                                           _%e250306250589%_
                                           _%hd250307250592%_
                                           _%tl250308250594%_
                                           _%e250346250489%_
                                           _%hd250347250492%_
                                           _%tl250348250494%_
                                           _%e250349250497%_
                                           _%hd250350250500%_
                                           _%tl250351250502%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))))
                          (let () (declare (not safe)) (_%g250261250371%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250271250768%_))
                          (let ((_%e250361250392%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250271250768%_))))
                            (let ((_%tl250363250397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250361250392%_)))
                                  (_%hd250362250395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250361250392%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250363250397%_))
                                  (let ((_%e250364250400%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250363250397%_))))
                                    (let ((_%tl250366250405%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250364250400%_)))
                                          (_%hd250365250403%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250364250400%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250366250405%_))
                                          (_%__kont254732254733%_
                                           _%hd250365250403%_
                                           _%hd250362250395%_
                                           _%hd250270250766%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g250261250371%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250271250768%_))
                                                      (let ((_%e250361250392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250271250768%_))))
                (let ((_%tl250363250397%_
                       (let () (declare (not safe)) (##cdr _%e250361250392%_)))
                      (_%hd250362250395%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250361250392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250363250397%_))
                      (let ((_%e250364250400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250363250397%_))))
                        (let ((_%tl250366250405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250364250400%_)))
                              (_%hd250365250403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250364250400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250366250405%_))
                              (_%__kont254732254733%_
                               _%hd250365250403%_
                               _%hd250362250395%_
                               _%hd250270250766%_)
                              (let ()
                                (declare (not safe))
                                (_%g250261250371%_)))))
                      (let () (declare (not safe)) (_%g250261250371%_)))))
              (let () (declare (not safe)) (_%g250261250371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250271250768%_))
                                                  (let ((_%e250361250392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250271250768%_))))
                                                    (let ((_%tl250363250397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250361250392%_)))
                                                          (_%hd250362250395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250361250392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl250363250397%_))
                                                          (let ((_%e250364250400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250363250397%_))))
                    (let ((_%tl250366250405%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250364250400%_)))
                          (_%hd250365250403%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250364250400%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl250366250405%_))
                          (_%__kont254732254733%_
                           _%hd250365250403%_
                           _%hd250362250395%_
                           _%hd250270250766%_)
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250271250768%_))
                                          (let ((_%e250361250392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250271250768%_))))
                                            (let ((_%tl250363250397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250361250392%_)))
                                                  (_%hd250362250395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250361250392%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl250363250397%_))
                                                  (let ((_%e250364250400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl250363250397%_))))
                                                    (let ((_%tl250366250405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e250364250400%_)))
                                                          (_%hd250365250403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e250364250400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl250366250405%_))
                                                          (_%__kont254732254733%_
                                                           _%hd250365250403%_
                                                           _%hd250362250395%_
                                                           _%hd250270250766%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g250261250371%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250271250768%_))
                                      (let ((_%e250361250392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250271250768%_))))
                                        (let ((_%tl250363250397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250361250392%_)))
                                              (_%hd250362250395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250361250392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250363250397%_))
                                              (let ((_%e250364250400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250363250397%_))))
                                                (let ((_%tl250366250405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250364250400%_)))
                                                      (_%hd250365250403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250364250400%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250366250405%_))
                                                      (_%__kont254732254733%_
                                                       _%hd250365250403%_
                                                       _%hd250362250395%_
                                                       _%hd250270250766%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250261250371%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250261250371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250271250768%_))
                                  (let ((_%e250361250392%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250271250768%_))))
                                    (let ((_%tl250363250397%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250361250392%_)))
                                          (_%hd250362250395%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250361250392%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl250363250397%_))
                                          (let ((_%e250364250400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl250363250397%_))))
                                            (let ((_%tl250366250405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e250364250400%_)))
                                                  (_%hd250365250403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e250364250400%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl250366250405%_))
                                                  (_%__kont254732254733%_
                                                   _%hd250365250403%_
                                                   _%hd250362250395%_
                                                   _%hd250270250766%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g250261250371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250271250768%_))
                          (let ((_%e250361250392%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250271250768%_))))
                            (let ((_%tl250363250397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250361250392%_)))
                                  (_%hd250362250395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250361250392%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl250363250397%_))
                                  (let ((_%e250364250400%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl250363250397%_))))
                                    (let ((_%tl250366250405%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e250364250400%_)))
                                          (_%hd250365250403%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e250364250400%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl250366250405%_))
                                          (_%__kont254732254733%_
                                           _%hd250365250403%_
                                           _%hd250362250395%_
                                           _%hd250270250766%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g250261250371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))))
                          (let () (declare (not safe)) (_%g250261250371%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%tl250271250768%_))
                  (let ((_%e250361250392%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl250271250768%_))))
                    (let ((_%tl250363250397%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e250361250392%_)))
                          (_%hd250362250395%_
                           (let ()
                             (declare (not safe))
                             (##car _%e250361250392%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl250363250397%_))
                          (let ((_%e250364250400%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl250363250397%_))))
                            (let ((_%tl250366250405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e250364250400%_)))
                                  (_%hd250365250403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e250364250400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl250366250405%_))
                                  (_%__kont254732254733%_
                                   _%hd250365250403%_
                                   _%hd250362250395%_
                                   _%hd250270250766%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g250261250371%_)))))
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250271250768%_))
                                                      (let ((_%e250361250392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250271250768%_))))
                (let ((_%tl250363250397%_
                       (let () (declare (not safe)) (##cdr _%e250361250392%_)))
                      (_%hd250362250395%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250361250392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl250363250397%_))
                      (let ((_%e250364250400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl250363250397%_))))
                        (let ((_%tl250366250405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e250364250400%_)))
                              (_%hd250365250403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e250364250400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl250366250405%_))
                              (_%__kont254732254733%_
                               _%hd250365250403%_
                               _%hd250362250395%_
                               _%hd250270250766%_)
                              (let ()
                                (declare (not safe))
                                (_%g250261250371%_)))))
                      (let () (declare (not safe)) (_%g250261250371%_)))))
              (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250271250768%_))
                                              (let ((_%e250361250392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250271250768%_))))
                                                (let ((_%tl250363250397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250361250392%_)))
                                                      (_%hd250362250395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250361250392%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl250363250397%_))
                                                      (let ((_%e250364250400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl250363250397%_))))
                (let ((_%tl250366250405%_
                       (let () (declare (not safe)) (##cdr _%e250364250400%_)))
                      (_%hd250365250403%_
                       (let ()
                         (declare (not safe))
                         (##car _%e250364250400%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl250366250405%_))
                      (_%__kont254732254733%_
                       _%hd250365250403%_
                       _%hd250362250395%_
                       _%hd250270250766%_)
                      (let () (declare (not safe)) (_%g250261250371%_)))))
              (let () (declare (not safe)) (_%g250261250371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g250261250371%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl250271250768%_))
                                      (let ((_%e250361250392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl250271250768%_))))
                                        (let ((_%tl250363250397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e250361250392%_)))
                                              (_%hd250362250395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e250361250392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl250363250397%_))
                                              (let ((_%e250364250400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl250363250397%_))))
                                                (let ((_%tl250366250405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e250364250400%_)))
                                                      (_%hd250365250403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e250364250400%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl250366250405%_))
                                                      (_%__kont254732254733%_
                                                       _%hd250365250403%_
                                                       _%hd250362250395%_
                                                       _%hd250270250766%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g250261250371%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g250261250371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g250261250371%_))))))
                          (let () (declare (not safe)) (_%g250261250371%_)))))
                  (let () (declare (not safe)) (_%g250261250371%_))))))))))
