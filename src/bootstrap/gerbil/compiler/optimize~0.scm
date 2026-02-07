(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770505733)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp254792
                   (let ((__obj254786
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-info:::init! __obj254786))
                     __obj254786)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp254792)))))
    (define gxc#optimize!
      (lambda (_%ctx254394%_)
        (let ((__tmp254794
               (lambda ()
                 (let ((__tmp254796
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx254394%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx254394%_)
                          (let ((__tmp254798
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp254797
                                 (##structure-ref
                                  _%ctx254394%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254798 __tmp254797 '#t))
                          (let ((_%code254398%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx254394%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx254394%_
                             _%code254398%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp254795
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp254796
                    gxc#current-compile-local-type
                    __tmp254795))))
              (__tmp254793 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254794
           gxc#current-compile-mutators
           __tmp254793))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx254380%_)
        (letrec ((_%load-it!254382%_
                  (lambda (_%id254392%_)
                    (if (let ((__tmp254799
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp254799 _%id254392%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id254392%_)
                          (let ((__tmp254800
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254800 _%id254392%_ '#t)))))))
          (let* ((_%modid254384%_
                  (##structure-ref
                   _%ctx254380%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str254386%_ (symbol->string _%modid254384%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str254386%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str254386%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254382%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254382%_
                   '(gerbil/builtin
                     gerbil/builtin-inline-rules
                     gerbil/runtime/gambit
                     gerbil/runtime/util
                     gerbil/runtime/table
                     gerbil/runtime/control
                     gerbil/runtime/system
                     gerbil/runtime/c3
                     gerbil/runtime/mop
                     gerbil/runtime/mop-system-classes
                     gerbil/runtime/error
                     gerbil/runtime/interface
                     gerbil/runtime/hash
                     gerbil/runtime/thread
                     gerbil/runtime/syntax
                     gerbil/runtime/eval
                     gerbil/runtime/repl
                     gerbil/runtime/loader
                     gerbil/runtime/init
                     gerbil/runtime))))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_%ctx254317%_)
        (letrec* ((_%deps254319%_
                   (let* ((_%imports254370%_
                           (##structure-ref
                            _%ctx254317%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e254372%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx254317%_))))
                     (if _%$e254372%_
                         ((lambda (_%g254374254376%_)
                            (cons _%g254374254376%_ _%imports254370%_))
                          _%$e254372%_)
                         _%imports254370%_))))
          (let _%lp254321%_ ((_%rest254323%_ _%deps254319%_))
            (let* ((_%rest254324254332%_ _%rest254323%_)
                   (_%else254326254340%_ (lambda () '#!void))
                   (_%K254328254358%_
                    (lambda (_%rest254343%_ _%hd254344%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd254344%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp254802
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp254801
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254344%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp254802 __tmp254801))
                                '#!void
                                (begin
                                  (let ((_%$e254347%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd254344%_))))
                                    (if _%$e254347%_
                                        ((lambda (_%pre254350%_)
                                           (_%lp254321%_
                                            (cons _%pre254350%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd254344%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e254347%_)
                                        (_%lp254321%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254344%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd254344%_)))
                            (_%lp254321%_ _%rest254343%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd254344%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp254804
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp254803
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd254344%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp254804 __tmp254803))
                                    '#!void
                                    (begin
                                      (_%lp254321%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254344%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd254344%_)))
                                (_%lp254321%_ _%rest254343%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd254344%_
                                     'gx#module-import::t))
                                  (_%lp254321%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254344%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest254343%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd254344%_
                                         'gx#module-export::t))
                                      (_%lp254321%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd254344%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest254343%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd254344%_
                                             'gx#import-set::t))
                                          (_%lp254321%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd254344%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest254343%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd254344%_))))))))))
              (if (pair? _%rest254324254332%_)
                  (let ((_%hd254329254361%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest254324254332%_)))
                        (_%tl254330254363%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest254324254332%_))))
                    (let* ((_%hd254366%_ _%hd254329254361%_)
                           (_%rest254368%_ _%tl254330254363%_))
                      (_%K254328254358%_ _%rest254368%_ _%hd254366%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx254297%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx254297%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx254297%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht254299%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id254301%_
                    (##structure-ref
                     _%ctx254297%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod254303%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht254299%_ _%id254301%_)))
                   (_%$e254306%_ _%mod254303%_))
              (if _%$e254306%_
                  _%$e254306%_
                  (let* ((_%mod254309%_
                          (gxc#optimizer-import-ssxi _%ctx254297%_))
                         (_%val254314%_
                          (let ((_%$e254311%_ _%mod254309%_))
                            (if _%$e254311%_ _%$e254311%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht254299%_ _%id254301%_ _%val254314%_))
                    _%val254314%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx254295%_)
        (if (##structure-ref _%ctx254295%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx254295%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id254273%_)
        (letrec ((_%catch-e254275%_
                  (lambda (_%exn254293%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn254293%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn254293%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id254273%_))))
                    '#f))
                 (_%import-e254276%_
                  (lambda ()
                    (let* ((_%str-id254279%_
                            (let ((__tmp254805
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id254273%_))))
                              (declare (not safe))
                              (##string-append __tmp254805 '".ssxi")))
                           (_%artefact-path254286%_
                            (let ((_%odir254280254282%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir254280254282%_
                                  (let ((_%odir254284%_ _%odir254280254282%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id254279%_
                                        '".ss"))
                                     _%odir254284%_))
                                  '#f)))
                           (_%library-path254288%_
                            (let ((__tmp254806
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id254279%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp254806)))
                           (_%ssxi-path254290%_
                            (if (and _%artefact-path254286%_
                                     (file-exists? _%artefact-path254286%_))
                                _%artefact-path254286%_
                                _%library-path254288%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path254290%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path254290%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e254275%_ _%import-e254276%_)))))
    (define gxc#optimize-source
      (lambda (_%stx254258%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx254258%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx254258%_))
        (let* ((_%stx254260%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx254258%_)))
               (_%stx254262%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx254260%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx254262%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx254262%_))
          (let _%fixpoint254265%_ ((_%current254267%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx254262%_))
            (let ((_%refined254269%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current254267%_ _%refined254269%_)
                  '#!void
                  (_%fixpoint254265%_ _%refined254269%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx254262%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx254262%_))
          (let ((_%stx254271%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx254262%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx254271%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp254808 (list gxc#::generate-runtime-empty::t))
            (__tmp254807 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp254808
         '()
         __tmp254807
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args254255%_
        (apply make-instance gxc#::generate-ssxi::t _%$args254255%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp254809
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-annotation
                  gxc#generate-ssxi-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp254809)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx254247%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self254250%_
                (let ((__obj254788
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj254788))
               (__tmp254810
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254250%_ _%stx254247%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254810
           gxc#current-compile-method
           _%self254250%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self254207%_ _%stx254208%_)
        (let* ((_%g254210254220%_
                (lambda (_%g254211254217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254211254217%_))))
               (_%g254209254244%_
                (lambda (_%g254211254223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254211254223%_))
                      (let ((_%e254213254225%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254211254223%_))))
                        (let ((_%hd254214254228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254213254225%_)))
                              (_%tl254215254230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254213254225%_))))
                          ((lambda (_%g254212254233%_)
                             (let ((__tmp254813
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self254207%_
                                         _%stx254208%_))))
                                   (__tmp254811
                                    (let ((__tmp254812
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp254812 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp254813
                                gx#current-expander-phi
                                __tmp254811)))
                           _%tl254215254230%_)))
                      (_%g254210254220%_ _%g254211254223%_)))))
          (_%g254209254244%_ _%stx254208%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self254146%_ _%stx254147%_)
        (let* ((_%g254149254163%_
                (lambda (_%g254150254160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254150254160%_))))
               (_%g254148254204%_
                (lambda (_%g254150254166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254150254166%_))
                      (let ((_%e254153254168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254150254166%_))))
                        (let ((_%hd254154254171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254153254168%_)))
                              (_%tl254155254173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254153254168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl254155254173%_))
                              (let ((_%e254156254176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl254155254173%_))))
                                (let ((_%hd254157254179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254156254176%_)))
                                      (_%tl254158254181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254156254176%_))))
                                  ((lambda (_%g254151254184%_
                                            _%g254152254185%_)
                                     (let* ((_%ctx254198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g254152254185%_)))
                                            (_%code254200%_
                                             (##structure-ref
                                              _%ctx254198%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp254814
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self254146%_
                                                  _%code254200%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp254814
                                        gx#current-expander-context
                                        _%ctx254198%_)))
                                   _%tl254158254181%_
                                   _%hd254157254179%_)))
                              (_%g254149254163%_ _%g254150254166%_))))
                      (_%g254149254163%_ _%g254150254166%_)))))
          (_%g254148254204%_ _%stx254147%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self253953%_ _%stx253954%_)
        (letrec ((_%generate-e253956%_
                  (lambda (_%id254131%_)
                    (let* ((_%sym254133%_
                            (if (let ((__tmp254815
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp254815))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id254131%_))
                                '#f))
                           (_%$e254135%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym254133%_))))
                      (if _%$e254135%_
                          ((lambda (_%klass254138%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym254133%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym254133%_
                                                     (cons (let ((__method254789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass254138%_ 'typedecl))))
                     (if __method254789
                         (let ()
                           (declare (not safe))
                           (__method254789 _%klass254138%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass254138%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym254133%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym254133%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e254135%_)
                          (let ((_%$e254140%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym254133%_))))
                            (if _%$e254140%_
                                ((lambda (_%type254143%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym254133%_
                                      '" "
                                      _%type254143%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type254143%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym254133%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym254133%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type254143%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym254133%_
                                                   (cons (let ((__method254790
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type254143%_ 'typedecl))))
                   (if __method254790
                       (let ()
                         (declare (not safe))
                         (__method254790 _%type254143%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type254143%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e254140%_)
                                '(begin))))))))
          (let* ((_%__stx254401254402%_ _%stx253954%_)
                 (_%g253959253997%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254401254402%_)))))
            (let ((_%__kont254403254404%_
                   (lambda (_%g253961254113%_)
                     (_%generate-e253956%_ _%g253961254113%_)))
                  (_%__kont254405254406%_
                   (lambda (_%g253974254048%_)
                     (let ((_%types254074%_
                            (map _%generate-e253956%_
                                 (let ((__tmp254816
                                        (lambda (_%g254066254069%_
                                                 _%g254067254071%_)
                                          (cons _%g254066254069%_
                                                _%g254067254071%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp254816
                                    '()
                                    _%g253974254048%_)))))
                       (cons 'begin _%types254074%_)))))
              (let ((_%__match254456254457%_
                     (lambda (_%e253975254002%_
                              _%hd253976254005%_
                              _%tl253977254007%_
                              _%e253978254010%_
                              _%hd253979254013%_
                              _%tl253980254015%_
                              _%__splice254407254408%_
                              _%target253981254018%_
                              _%tl253983254020%_)
                       (letrec ((_%loop253984254023%_
                                 (lambda (_%hd253982254026%_
                                          _%id253988254028%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd253982254026%_))
                                       (let ((_%e253985254030%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd253982254026%_))))
                                         (let ((_%lp-tl253987254035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e253985254030%_)))
                                               (_%lp-hd253986254033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e253985254030%_))))
                                           (_%loop253984254023%_
                                            _%lp-tl253987254035%_
                                            (cons _%lp-hd253986254033%_
                                                  _%id253988254028%_))))
                                       (let ((_%id253989254038%_
                                              (reverse _%id253988254028%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl253980254015%_))
                                             (let ((_%e253990254040%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl253980254015%_))))
                                               (let ((_%tl253992254045%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e253990254040%_)))
                                                     (_%hd253991254043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e253990254040%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl253992254045%_))
                                                     (_%__kont254405254406%_
                                                      _%id253989254038%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g253959253997%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g253959253997%_))))))))
                         (_%loop253984254023%_ _%target253981254018%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254401254402%_))
                    (let ((_%e253962254081%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254401254402%_))))
                      (let ((_%tl253964254086%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253962254081%_)))
                            (_%hd253963254084%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253962254081%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl253964254086%_))
                            (let ((_%e253965254089%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl253964254086%_))))
                              (let ((_%tl253967254094%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253965254089%_)))
                                    (_%hd253966254092%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253965254089%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd253966254092%_))
                                    (let ((_%e253968254097%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd253966254092%_))))
                                      (let ((_%tl253970254102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e253968254097%_)))
                                            (_%hd253969254100%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e253968254097%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253970254102%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253967254094%_))
                                                (let ((_%e253971254105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253967254094%_))))
                                                  (let ((_%tl253973254110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253971254105%_)))
                                                        (_%hd253972254108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253971254105%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253973254110%_))
                                                        (_%__kont254403254404%_
                                                         _%hd253969254100%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd253966254092%_))
                                                            (let ((_%__splice254407254408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd253966254092%_
                              '0))))
                      (let ((_%tl253983254020%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254407254408%_ '1)))
                            (_%target253981254018%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254407254408%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl253983254020%_))
                            (_%__match254456254457%_
                             _%e253962254081%_
                             _%hd253963254084%_
                             _%tl253964254086%_
                             _%e253965254089%_
                             _%hd253966254092%_
                             _%tl253967254094%_
                             _%__splice254407254408%_
                             _%target253981254018%_
                             _%tl253983254020%_)
                            (let ()
                              (declare (not safe))
                              (_%g253959253997%_)))))
                    (let () (declare (not safe)) (_%g253959253997%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd253966254092%_))
                                                    (let ((_%__splice254407254408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd253966254092%_
                                                              '0))))
                                                      (let ((_%tl253983254020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice254407254408%_ '1)))
                    (_%target253981254018%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice254407254408%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl253983254020%_))
                    (_%__match254456254457%_
                     _%e253962254081%_
                     _%hd253963254084%_
                     _%tl253964254086%_
                     _%e253965254089%_
                     _%hd253966254092%_
                     _%tl253967254094%_
                     _%__splice254407254408%_
                     _%target253981254018%_
                     _%tl253983254020%_)
                    (let () (declare (not safe)) (_%g253959253997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253959253997%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd253966254092%_))
                                                (let ((_%__splice254407254408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd253966254092%_
                                                          '0))))
                                                  (let ((_%tl253983254020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254407254408%_
                                                            '1)))
                                                        (_%target253981254018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254407254408%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253983254020%_))
                                                        (_%__match254456254457%_
                                                         _%e253962254081%_
                                                         _%hd253963254084%_
                                                         _%tl253964254086%_
                                                         _%e253965254089%_
                                                         _%hd253966254092%_
                                                         _%tl253967254094%_
                                                         _%__splice254407254408%_
                                                         _%target253981254018%_
                                                         _%tl253983254020%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253959253997%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253959253997%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd253966254092%_))
                                        (let ((_%__splice254407254408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd253966254092%_
                                                  '0))))
                                          (let ((_%tl253983254020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254407254408%_
                                                    '1)))
                                                (_%target253981254018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254407254408%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253983254020%_))
                                                (_%__match254456254457%_
                                                 _%e253962254081%_
                                                 _%hd253963254084%_
                                                 _%tl253964254086%_
                                                 _%e253965254089%_
                                                 _%hd253966254092%_
                                                 _%tl253967254094%_
                                                 _%__splice254407254408%_
                                                 _%target253981254018%_
                                                 _%tl253983254020%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253959253997%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g253959253997%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g253959253997%_)))))
                    (let () (declare (not safe)) (_%g253959253997%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self253506%_ _%stx253507%_)
        (let* ((_%__stx254459254460%_ _%stx253507%_)
               (_%g253511253613%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254459254460%_)))))
          (let ((_%__kont254461254462%_
                 (lambda (_%g253513253903%_
                          _%g253514253904%_
                          _%g253515253905%_
                          _%g253516253906%_
                          _%g253517253907%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253516253906%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253515253905%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253514253904%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g253513253903%_))
                                                 '())))))))
                (_%__kont254463254464%_
                 (lambda (_%g253566253729%_
                          _%g253567253730%_
                          _%g253568253731%_
                          _%g253569253732%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253568253731%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253567253730%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253566253729%_))
                                           (cons '#f '())))))))
                (_%__kont254465254466%_ (lambda () '(begin))))
            (let ((_%__match254594254595%_
                   (lambda (_%e253518253775%_
                            _%hd253519253778%_
                            _%tl253520253780%_
                            _%e253521253783%_
                            _%hd253522253786%_
                            _%tl253523253788%_
                            _%e253524253791%_
                            _%hd253525253794%_
                            _%tl253526253796%_
                            _%e253527253799%_
                            _%hd253528253802%_
                            _%tl253529253804%_
                            _%e253530253807%_
                            _%hd253531253810%_
                            _%tl253532253812%_
                            _%e253533253815%_
                            _%hd253534253818%_
                            _%tl253535253820%_
                            _%e253536253823%_
                            _%hd253537253826%_
                            _%tl253538253828%_
                            _%e253539253831%_
                            _%hd253540253834%_
                            _%tl253541253836%_
                            _%e253542253839%_
                            _%hd253543253842%_
                            _%tl253544253844%_
                            _%e253545253847%_
                            _%hd253546253850%_
                            _%tl253547253852%_
                            _%e253548253855%_
                            _%hd253549253858%_
                            _%tl253550253860%_
                            _%e253551253863%_
                            _%hd253552253866%_
                            _%tl253553253868%_
                            _%e253554253871%_
                            _%hd253555253874%_
                            _%tl253556253876%_
                            _%e253557253879%_
                            _%hd253558253882%_
                            _%tl253559253884%_
                            _%e253560253887%_
                            _%hd253561253890%_
                            _%tl253562253892%_
                            _%e253563253895%_
                            _%hd253564253898%_
                            _%tl253565253900%_)
                     (let ((_%g253513253903%_ _%hd253564253898%_)
                           (_%g253514253904%_ _%hd253555253874%_)
                           (_%g253515253905%_ _%hd253546253850%_)
                           (_%g253516253906%_ _%hd253537253826%_)
                           (_%g253517253907%_ _%hd253528253802%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g253517253907%_
                              'bind-method!))
                           (_%__kont254461254462%_
                            _%g253513253903%_
                            _%g253514253904%_
                            _%g253515253905%_
                            _%g253516253906%_
                            _%g253517253907%_)
                           (_%__kont254465254466%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254459254460%_))
                  (let ((_%e253518253775%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254459254460%_))))
                    (let ((_%tl253520253780%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253518253775%_)))
                          (_%hd253519253778%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253518253775%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253520253780%_))
                          (let ((_%e253521253783%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253520253780%_))))
                            (let ((_%tl253523253788%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253521253783%_)))
                                  (_%hd253522253786%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253521253783%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253522253786%_))
                                  (let ((_%e253524253791%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253522253786%_))))
                                    (let ((_%tl253526253796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253524253791%_)))
                                          (_%hd253525253794%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253524253791%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253525253794%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253525253794%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253526253796%_))
                                                  (let ((_%e253527253799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253526253796%_))))
                                                    (let ((_%tl253529253804%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253527253799%_)))
                                                          (_%hd253528253802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253527253799%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253529253804%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253523253788%_))
                      (let ((_%e253530253807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253523253788%_))))
                        (let ((_%tl253532253812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253530253807%_)))
                              (_%hd253531253810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253530253807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd253531253810%_))
                              (let ((_%e253533253815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd253531253810%_))))
                                (let ((_%tl253535253820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253533253815%_)))
                                      (_%hd253534253818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253533253815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd253534253818%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd253534253818%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl253535253820%_))
                                              (let ((_%e253536253823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl253535253820%_))))
                                                (let ((_%tl253538253828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253536253823%_)))
                                                      (_%hd253537253826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253536253823%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253538253828%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl253532253812%_))
                                                          (let ((_%e253539253831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl253532253812%_))))
                    (let ((_%tl253541253836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253539253831%_)))
                          (_%hd253540253834%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253539253831%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd253540253834%_))
                          (let ((_%e253542253839%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd253540253834%_))))
                            (let ((_%tl253544253844%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253542253839%_)))
                                  (_%hd253543253842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253542253839%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd253543253842%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd253543253842%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253544253844%_))
                                          (let ((_%e253545253847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253544253844%_))))
                                            (let ((_%tl253547253852%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253545253847%_)))
                                                  (_%hd253546253850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253545253847%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl253547253852%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl253541253836%_))
                                                      (let ((_%e253548253855%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl253541253836%_))))
                (let ((_%tl253550253860%_
                       (let () (declare (not safe)) (##cdr _%e253548253855%_)))
                      (_%hd253549253858%_
                       (let ()
                         (declare (not safe))
                         (##car _%e253548253855%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd253549253858%_))
                      (let ((_%e253551253863%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd253549253858%_))))
                        (let ((_%tl253553253868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253551253863%_)))
                              (_%hd253552253866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253551253863%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd253552253866%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253552253866%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253553253868%_))
                                      (let ((_%e253554253871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253553253868%_))))
                                        (let ((_%tl253556253876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253554253871%_)))
                                              (_%hd253555253874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253554253871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253556253876%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253550253860%_))
                                                  (let ((_%e253557253879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253550253860%_))))
                                                    (let ((_%tl253559253884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253557253879%_)))
                                                          (_%hd253558253882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253557253879%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd253558253882%_))
                                                          (let ((_%e253560253887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd253558253882%_))))
                    (let ((_%tl253562253892%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253560253887%_)))
                          (_%hd253561253890%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253560253887%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253561253890%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253561253890%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253562253892%_))
                                  (let ((_%e253563253895%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253562253892%_))))
                                    (let ((_%tl253565253900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253563253895%_)))
                                          (_%hd253564253898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253563253895%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253565253900%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253559253884%_))
                                              (_%__match254594254595%_
                                               _%e253518253775%_
                                               _%hd253519253778%_
                                               _%tl253520253780%_
                                               _%e253521253783%_
                                               _%hd253522253786%_
                                               _%tl253523253788%_
                                               _%e253524253791%_
                                               _%hd253525253794%_
                                               _%tl253526253796%_
                                               _%e253527253799%_
                                               _%hd253528253802%_
                                               _%tl253529253804%_
                                               _%e253530253807%_
                                               _%hd253531253810%_
                                               _%tl253532253812%_
                                               _%e253533253815%_
                                               _%hd253534253818%_
                                               _%tl253535253820%_
                                               _%e253536253823%_
                                               _%hd253537253826%_
                                               _%tl253538253828%_
                                               _%e253539253831%_
                                               _%hd253540253834%_
                                               _%tl253541253836%_
                                               _%e253542253839%_
                                               _%hd253543253842%_
                                               _%tl253544253844%_
                                               _%e253545253847%_
                                               _%hd253546253850%_
                                               _%tl253547253852%_
                                               _%e253548253855%_
                                               _%hd253549253858%_
                                               _%tl253550253860%_
                                               _%e253551253863%_
                                               _%hd253552253866%_
                                               _%tl253553253868%_
                                               _%e253554253871%_
                                               _%hd253555253874%_
                                               _%tl253556253876%_
                                               _%e253557253879%_
                                               _%hd253558253882%_
                                               _%tl253559253884%_
                                               _%e253560253887%_
                                               _%hd253561253890%_
                                               _%tl253562253892%_
                                               _%e253563253895%_
                                               _%hd253564253898%_
                                               _%tl253565253900%_)
                                              (_%__kont254465254466%_))
                                          (_%__kont254465254466%_))))
                                  (_%__kont254465254466%_))
                              (_%__kont254465254466%_))
                          (_%__kont254465254466%_))))
                  (_%__kont254465254466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253550253860%_))
                                                      (if (let ((__tmp254817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp254817 'bind-method!))
                  (let ((_%g253566253729%_ _%hd253555253874%_)
                        (_%g253567253730%_ _%hd253546253850%_)
                        (_%g253568253731%_ _%hd253537253826%_)
                        (_%g253569253732%_ _%hd253528253802%_))
                    (_%__kont254463254464%_
                     _%g253566253729%_
                     _%g253567253730%_
                     _%g253568253731%_
                     _%g253569253732%_))
                  (_%__kont254465254466%_))
              (_%__kont254465254466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254465254466%_))))
                                      (_%__kont254465254466%_))
                                  (_%__kont254465254466%_))
                              (_%__kont254465254466%_))))
                      (_%__kont254465254466%_))))
              (_%__kont254465254466%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254465254466%_))))
                                          (_%__kont254465254466%_))
                                      (_%__kont254465254466%_))
                                  (_%__kont254465254466%_))))
                          (_%__kont254465254466%_))))
                  (_%__kont254465254466%_))
              (_%__kont254465254466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254465254466%_))
                                          (_%__kont254465254466%_))
                                      (_%__kont254465254466%_))))
                              (_%__kont254465254466%_))))
                      (_%__kont254465254466%_))
                  (_%__kont254465254466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254465254466%_))
                                              (_%__kont254465254466%_))
                                          (_%__kont254465254466%_))))
                                  (_%__kont254465254466%_))))
                          (_%__kont254465254466%_))))
                  (_%__kont254465254466%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self253330%_ _%stx253331%_)
        (let* ((_%__stx254703254704%_ _%stx253331%_)
               (_%g253334253374%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254703254704%_)))))
          (let ((_%__kont254705254706%_
                 (lambda (_%g253336253480%_ _%g253337253481%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253337253481%_))
                               (cons _%g253336253480%_ '())))))
                (_%__kont254707254708%_
                 (lambda (_%g253359253403%_ _%g253360253404%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx254703254704%_))
                (let ((_%e253338253424%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx254703254704%_))))
                  (let ((_%tl253340253429%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e253338253424%_)))
                        (_%hd253339253427%_
                         (let ()
                           (declare (not safe))
                           (##car _%e253338253424%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl253340253429%_))
                        (let ((_%e253341253432%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl253340253429%_))))
                          (let ((_%tl253343253437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253341253432%_)))
                                (_%hd253342253435%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253341253432%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd253342253435%_))
                                (let ((_%e253344253440%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd253342253435%_))))
                                  (let ((_%tl253346253445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e253344253440%_)))
                                        (_%hd253345253443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e253344253440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd253345253443%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd253345253443%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253346253445%_))
                                                (let ((_%e253347253448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253346253445%_))))
                                                  (let ((_%tl253349253453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253347253448%_)))
                                                        (_%hd253348253451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253347253448%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253349253453%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl253343253437%_))
                                                            (let ((_%e253350253456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253343253437%_))))
                      (let ((_%tl253352253461%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253350253456%_)))
                            (_%hd253351253459%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253350253456%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd253351253459%_))
                            (let ((_%e253353253464%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd253351253459%_))))
                              (let ((_%tl253355253469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253353253464%_)))
                                    (_%hd253354253467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253353253464%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd253354253467%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd253354253467%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253355253469%_))
                                            (let ((_%e253356253472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253355253469%_))))
                                              (let ((_%tl253358253477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253356253472%_)))
                                                    (_%hd253357253475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253356253472%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253358253477%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253352253461%_))
                                                        (_%__kont254705254706%_
                                                         _%hd253357253475%_
                                                         _%hd253348253451%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253334253374%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253352253461%_))
                                                        (_%__kont254707254708%_
                                                         _%hd253351253459%_
                                                         _%hd253342253435%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253334253374%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253352253461%_))
                                                (_%__kont254707254708%_
                                                 _%hd253351253459%_
                                                 _%hd253342253435%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253334253374%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253352253461%_))
                                            (_%__kont254707254708%_
                                             _%hd253351253459%_
                                             _%hd253342253435%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253334253374%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl253352253461%_))
                                        (_%__kont254707254708%_
                                         _%hd253351253459%_
                                         _%hd253342253435%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g253334253374%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl253352253461%_))
                                (_%__kont254707254708%_
                                 _%hd253351253459%_
                                 _%hd253342253435%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g253334253374%_))))))
                    (let () (declare (not safe)) (_%g253334253374%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl253343253437%_))
                    (let ((_%e253367253395%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253343253437%_))))
                      (let ((_%tl253369253400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253367253395%_)))
                            (_%hd253368253398%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253367253395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl253369253400%_))
                            (_%__kont254707254708%_
                             _%hd253368253398%_
                             _%hd253342253435%_)
                            (let ()
                              (declare (not safe))
                              (_%g253334253374%_)))))
                    (let () (declare (not safe)) (_%g253334253374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl253343253437%_))
                                                    (let ((_%e253367253395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl253343253437%_))))
                                                      (let ((_%tl253369253400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e253367253395%_)))
                    (_%hd253368253398%_
                     (let () (declare (not safe)) (##car _%e253367253395%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl253369253400%_))
                    (_%__kont254707254708%_
                     _%hd253368253398%_
                     _%hd253342253435%_)
                    (let () (declare (not safe)) (_%g253334253374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253334253374%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253343253437%_))
                                                (let ((_%e253367253395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253343253437%_))))
                                                  (let ((_%tl253369253400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253367253395%_)))
                                                        (_%hd253368253398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253367253395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253369253400%_))
                                                        (_%__kont254707254708%_
                                                         _%hd253368253398%_
                                                         _%hd253342253435%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253334253374%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253334253374%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253343253437%_))
                                            (let ((_%e253367253395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253343253437%_))))
                                              (let ((_%tl253369253400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253367253395%_)))
                                                    (_%hd253368253398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253367253395%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253369253400%_))
                                                    (_%__kont254707254708%_
                                                     _%hd253368253398%_
                                                     _%hd253342253435%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253334253374%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g253334253374%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl253343253437%_))
                                    (let ((_%e253367253395%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl253343253437%_))))
                                      (let ((_%tl253369253400%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e253367253395%_)))
                                            (_%hd253368253398%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e253367253395%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253369253400%_))
                                            (_%__kont254707254708%_
                                             _%hd253368253398%_
                                             _%hd253342253435%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253334253374%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g253334253374%_))))))
                        (let () (declare (not safe)) (_%g253334253374%_)))))
                (let () (declare (not safe)) (_%g253334253374%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self253317%_)
        (let ((_%self253320%_ _%self253317%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253320%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self253091%_)
        (let* ((_%self253094%_ _%self253091%_)
               (_%self253103253119%_ _%self253094%_)
               (_%E253105253122%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253103253119%_
                           '((!class id
                                     super
                                     precendence-list
                                     slots
                                     fields
                                     constructor
                                     struct?
                                     final?
                                     system?
                                     metaclass
                                     methods))))
                  '#!void))
               (_%K253106253137%_
                (lambda (_%methods253125%_
                         _%metaclass253126%_
                         _%system?253127%_
                         _%final?253128%_
                         _%struct?253129%_
                         _%constructor253130%_
                         _%fields253131%_
                         _%slots253132%_
                         _%precendence-list253133%_
                         _%super253134%_
                         _%id253135%_)
                  (cons '@class
                        (cons _%id253135%_
                              (cons _%super253134%_
                                    (cons _%precendence-list253133%_
                                          (cons _%slots253132%_
                                                (cons _%fields253131%_
                                                      (cons _%constructor253130%_
                                                            (cons _%struct?253129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?253128%_
                                (cons _%system?253127%_
                                      (cons _%metaclass253126%_
                                            (cons (if _%methods253125%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods253125%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e253107253140%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '1 '#f '#f)))
               (_%id253143%_ _%e253107253140%_)
               (_%e253108253145%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '2 '#f '#f)))
               (_%super253148%_ _%e253108253145%_)
               (_%e253109253150%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '3 '#f '#f)))
               (_%precendence-list253153%_ _%e253109253150%_)
               (_%e253110253155%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '4 '#f '#f)))
               (_%slots253158%_ _%e253110253155%_)
               (_%e253111253160%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '5 '#f '#f)))
               (_%fields253163%_ _%e253111253160%_)
               (_%e253112253165%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '6 '#f '#f)))
               (_%constructor253168%_ _%e253112253165%_)
               (_%e253113253170%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '7 '#f '#f)))
               (_%struct?253173%_ _%e253113253170%_)
               (_%e253114253175%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '8 '#f '#f)))
               (_%final?253178%_ _%e253114253175%_)
               (_%e253115253180%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253103253119%_ '9 '#f '#f)))
               (_%system?253183%_ _%e253115253180%_)
               (_%e253116253185%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253103253119%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass253188%_ _%e253116253185%_)
               (_%e253117253190%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253103253119%_
                   '11
                   '#f
                   '#f)))
               (_%methods253193%_ _%e253117253190%_))
          (_%K253106253137%_
           _%methods253193%_
           _%metaclass253188%_
           _%system?253183%_
           _%final?253178%_
           _%struct?253173%_
           _%constructor253168%_
           _%fields253163%_
           _%slots253158%_
           _%precendence-list253153%_
           _%super253148%_
           _%id253143%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self252956%_)
        (let ((_%self252959%_ _%self252956%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252959%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self252821%_)
        (let ((_%self252824%_ _%self252821%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252824%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self252686%_)
        (let ((_%self252689%_ _%self252686%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252689%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252689%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252689%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'typedecl
       gxc#!accessor::typedecl
       '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self252551%_)
        (let ((_%self252554%_ _%self252551%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252554%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252554%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252554%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self252416%_)
        (let ((_%self252419%_ _%self252416%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252419%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252419%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self252230%_)
        (let* ((_%self252233%_ _%self252230%_)
               (_%self252242252251%_ _%self252233%_)
               (_%E252244252254%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252242252251%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K252245252273%_
                (lambda (_%dispatch252257%_
                         _%arity252258%_
                         _%signature252259%_)
                  (if _%signature252259%_
                      (let ((_%signature252261%_ _%signature252259%_))
                        (cons '@lambda
                              (cons _%arity252258%_
                                    (cons _%dispatch252257%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature252261%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature252261%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature252261%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature252261%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature252261%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity252258%_
                                  (cons _%dispatch252257%_ '()))))))
               (_%e252246252276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252242252251%_ '1 '#f '#f)))
               (_%e252247252279%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252242252251%_ '2 '#f '#f)))
               (_%signature252282%_ _%e252247252279%_)
               (_%e252248252284%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252242252251%_ '3 '#f '#f)))
               (_%arity252287%_ _%e252248252284%_)
               (_%e252249252289%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252242252251%_ '4 '#f '#f)))
               (_%dispatch252292%_ _%e252249252289%_))
          (_%K252245252273%_
           _%dispatch252292%_
           _%arity252287%_
           _%signature252282%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self252090%_)
        (let ((_%self252093%_ _%self252090%_))
          (letrec ((_%clause-e252104%_
                    (lambda (_%clause252106%_)
                      (cdr (let ((__method254791
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause252106%_
                                     'typedecl))))
                             (if __method254791
                                 (let ()
                                   (declare (not safe))
                                   (__method254791 _%clause252106%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause252106%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e252104%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252093%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self251955%_)
        (let ((_%self251958%_ _%self251955%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251958%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251958%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self251820%_)
        (let ((_%self251823%_ _%self251820%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251823%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251823%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self251685%_)
        (let ((_%self251688%_ _%self251685%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251688%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
