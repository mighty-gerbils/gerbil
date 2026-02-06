(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770405381)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp254784
                   (let ((__obj254778
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
                       (gxc#optimizer-info:::init! __obj254778))
                     __obj254778)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp254784)))))
    (define gxc#optimize!
      (lambda (_%ctx254386%_)
        (let ((__tmp254786
               (lambda ()
                 (let ((__tmp254788
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx254386%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx254386%_)
                          (let ((__tmp254790
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp254789
                                 (##structure-ref
                                  _%ctx254386%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254790 __tmp254789 '#t))
                          (let ((_%code254390%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx254386%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx254386%_
                             _%code254390%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp254787
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp254788
                    gxc#current-compile-local-type
                    __tmp254787))))
              (__tmp254785 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254786
           gxc#current-compile-mutators
           __tmp254785))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx254372%_)
        (letrec ((_%load-it!254374%_
                  (lambda (_%id254384%_)
                    (if (let ((__tmp254791
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp254791 _%id254384%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id254384%_)
                          (let ((__tmp254792
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254792 _%id254384%_ '#t)))))))
          (let* ((_%modid254376%_
                  (##structure-ref
                   _%ctx254372%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str254378%_ (symbol->string _%modid254376%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str254378%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str254378%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254374%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254374%_
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
      (lambda (_%ctx254309%_)
        (letrec* ((_%deps254311%_
                   (let* ((_%imports254362%_
                           (##structure-ref
                            _%ctx254309%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e254364%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx254309%_))))
                     (if _%$e254364%_
                         ((lambda (_%g254366254368%_)
                            (cons _%g254366254368%_ _%imports254362%_))
                          _%$e254364%_)
                         _%imports254362%_))))
          (let _%lp254313%_ ((_%rest254315%_ _%deps254311%_))
            (let* ((_%rest254316254324%_ _%rest254315%_)
                   (_%else254318254332%_ (lambda () '#!void))
                   (_%K254320254350%_
                    (lambda (_%rest254335%_ _%hd254336%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd254336%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp254794
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp254793
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254336%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp254794 __tmp254793))
                                '#!void
                                (begin
                                  (let ((_%$e254339%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd254336%_))))
                                    (if _%$e254339%_
                                        ((lambda (_%pre254342%_)
                                           (_%lp254313%_
                                            (cons _%pre254342%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd254336%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e254339%_)
                                        (_%lp254313%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254336%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd254336%_)))
                            (_%lp254313%_ _%rest254335%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd254336%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp254796
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp254795
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd254336%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp254796 __tmp254795))
                                    '#!void
                                    (begin
                                      (_%lp254313%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254336%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd254336%_)))
                                (_%lp254313%_ _%rest254335%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd254336%_
                                     'gx#module-import::t))
                                  (_%lp254313%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254336%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest254335%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd254336%_
                                         'gx#module-export::t))
                                      (_%lp254313%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd254336%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest254335%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd254336%_
                                             'gx#import-set::t))
                                          (_%lp254313%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd254336%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest254335%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd254336%_))))))))))
              (if (pair? _%rest254316254324%_)
                  (let ((_%hd254321254353%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest254316254324%_)))
                        (_%tl254322254355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest254316254324%_))))
                    (let* ((_%hd254358%_ _%hd254321254353%_)
                           (_%rest254360%_ _%tl254322254355%_))
                      (_%K254320254350%_ _%rest254360%_ _%hd254358%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx254289%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx254289%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx254289%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht254291%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id254293%_
                    (##structure-ref
                     _%ctx254289%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod254295%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht254291%_ _%id254293%_)))
                   (_%$e254298%_ _%mod254295%_))
              (if _%$e254298%_
                  _%$e254298%_
                  (let* ((_%mod254301%_
                          (gxc#optimizer-import-ssxi _%ctx254289%_))
                         (_%val254306%_
                          (let ((_%$e254303%_ _%mod254301%_))
                            (if _%$e254303%_ _%$e254303%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht254291%_ _%id254293%_ _%val254306%_))
                    _%val254306%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx254287%_)
        (if (##structure-ref _%ctx254287%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx254287%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id254265%_)
        (letrec ((_%catch-e254267%_
                  (lambda (_%exn254285%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn254285%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn254285%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id254265%_))))
                    '#f))
                 (_%import-e254268%_
                  (lambda ()
                    (let* ((_%str-id254271%_
                            (let ((__tmp254797
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id254265%_))))
                              (declare (not safe))
                              (##string-append __tmp254797 '".ssxi")))
                           (_%artefact-path254278%_
                            (let ((_%odir254272254274%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir254272254274%_
                                  (let ((_%odir254276%_ _%odir254272254274%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id254271%_
                                        '".ss"))
                                     _%odir254276%_))
                                  '#f)))
                           (_%library-path254280%_
                            (let ((__tmp254798
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id254271%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp254798)))
                           (_%ssxi-path254282%_
                            (if (and _%artefact-path254278%_
                                     (file-exists? _%artefact-path254278%_))
                                _%artefact-path254278%_
                                _%library-path254280%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path254282%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path254282%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e254267%_ _%import-e254268%_)))))
    (define gxc#optimize-source
      (lambda (_%stx254250%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx254250%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx254250%_))
        (let* ((_%stx254252%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx254250%_)))
               (_%stx254254%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx254252%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx254254%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx254254%_))
          (let _%fixpoint254257%_ ((_%current254259%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx254254%_))
            (let ((_%refined254261%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current254259%_ _%refined254261%_)
                  '#!void
                  (_%fixpoint254257%_ _%refined254261%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx254254%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx254254%_))
          (let ((_%stx254263%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx254254%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx254263%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp254800 (list gxc#::generate-runtime-empty::t))
            (__tmp254799 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp254800
         '()
         __tmp254799
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args254247%_
        (apply make-instance gxc#::generate-ssxi::t _%$args254247%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp254801
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
        (__make-atomic-promise __tmp254801)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx254239%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self254242%_
                (let ((__obj254780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj254780))
               (__tmp254802
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254242%_ _%stx254239%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254802
           gxc#current-compile-method
           _%self254242%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self254199%_ _%stx254200%_)
        (let* ((_%g254202254212%_
                (lambda (_%g254203254209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254203254209%_))))
               (_%g254201254236%_
                (lambda (_%g254203254215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254203254215%_))
                      (let ((_%e254205254217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254203254215%_))))
                        (let ((_%hd254206254220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254205254217%_)))
                              (_%tl254207254222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254205254217%_))))
                          ((lambda (_%g254204254225%_)
                             (let ((__tmp254805
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self254199%_
                                         _%stx254200%_))))
                                   (__tmp254803
                                    (let ((__tmp254804
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp254804 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp254805
                                gx#current-expander-phi
                                __tmp254803)))
                           _%tl254207254222%_)))
                      (_%g254202254212%_ _%g254203254215%_)))))
          (_%g254201254236%_ _%stx254200%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self254138%_ _%stx254139%_)
        (let* ((_%g254141254155%_
                (lambda (_%g254142254152%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254142254152%_))))
               (_%g254140254196%_
                (lambda (_%g254142254158%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254142254158%_))
                      (let ((_%e254145254160%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254142254158%_))))
                        (let ((_%hd254146254163%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254145254160%_)))
                              (_%tl254147254165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254145254160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl254147254165%_))
                              (let ((_%e254148254168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl254147254165%_))))
                                (let ((_%hd254149254171%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254148254168%_)))
                                      (_%tl254150254173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254148254168%_))))
                                  ((lambda (_%g254143254176%_
                                            _%g254144254177%_)
                                     (let* ((_%ctx254190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g254144254177%_)))
                                            (_%code254192%_
                                             (##structure-ref
                                              _%ctx254190%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp254806
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self254138%_
                                                  _%code254192%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp254806
                                        gx#current-expander-context
                                        _%ctx254190%_)))
                                   _%tl254150254173%_
                                   _%hd254149254171%_)))
                              (_%g254141254155%_ _%g254142254158%_))))
                      (_%g254141254155%_ _%g254142254158%_)))))
          (_%g254140254196%_ _%stx254139%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self253945%_ _%stx253946%_)
        (letrec ((_%generate-e253948%_
                  (lambda (_%id254123%_)
                    (let* ((_%sym254125%_
                            (if (let ((__tmp254807
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp254807))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id254123%_))
                                '#f))
                           (_%$e254127%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym254125%_))))
                      (if _%$e254127%_
                          ((lambda (_%klass254130%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym254125%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym254125%_
                                                     (cons (let ((__method254781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass254130%_ 'typedecl))))
                     (if __method254781
                         (let ()
                           (declare (not safe))
                           (__method254781 _%klass254130%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass254130%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym254125%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym254125%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e254127%_)
                          (let ((_%$e254132%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym254125%_))))
                            (if _%$e254132%_
                                ((lambda (_%type254135%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym254125%_
                                      '" "
                                      _%type254135%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type254135%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym254125%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym254125%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type254135%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym254125%_
                                                   (cons (let ((__method254782
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type254135%_ 'typedecl))))
                   (if __method254782
                       (let ()
                         (declare (not safe))
                         (__method254782 _%type254135%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type254135%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e254132%_)
                                '(begin))))))))
          (let* ((_%__stx254393254394%_ _%stx253946%_)
                 (_%g253951253989%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254393254394%_)))))
            (let ((_%__kont254395254396%_
                   (lambda (_%g253953254105%_)
                     (_%generate-e253948%_ _%g253953254105%_)))
                  (_%__kont254397254398%_
                   (lambda (_%g253966254040%_)
                     (let ((_%types254066%_
                            (map _%generate-e253948%_
                                 (let ((__tmp254808
                                        (lambda (_%g254058254061%_
                                                 _%g254059254063%_)
                                          (cons _%g254058254061%_
                                                _%g254059254063%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp254808
                                    '()
                                    _%g253966254040%_)))))
                       (cons 'begin _%types254066%_)))))
              (let ((_%__match254448254449%_
                     (lambda (_%e253967253994%_
                              _%hd253968253997%_
                              _%tl253969253999%_
                              _%e253970254002%_
                              _%hd253971254005%_
                              _%tl253972254007%_
                              _%__splice254399254400%_
                              _%target253973254010%_
                              _%tl253975254012%_)
                       (letrec ((_%loop253976254015%_
                                 (lambda (_%hd253974254018%_
                                          _%id253980254020%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd253974254018%_))
                                       (let ((_%e253977254022%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd253974254018%_))))
                                         (let ((_%lp-tl253979254027%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e253977254022%_)))
                                               (_%lp-hd253978254025%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e253977254022%_))))
                                           (_%loop253976254015%_
                                            _%lp-tl253979254027%_
                                            (cons _%lp-hd253978254025%_
                                                  _%id253980254020%_))))
                                       (let ((_%id253981254030%_
                                              (reverse _%id253980254020%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl253972254007%_))
                                             (let ((_%e253982254032%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl253972254007%_))))
                                               (let ((_%tl253984254037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e253982254032%_)))
                                                     (_%hd253983254035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e253982254032%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl253984254037%_))
                                                     (_%__kont254397254398%_
                                                      _%id253981254030%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g253951253989%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g253951253989%_))))))))
                         (_%loop253976254015%_ _%target253973254010%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254393254394%_))
                    (let ((_%e253954254073%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254393254394%_))))
                      (let ((_%tl253956254078%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253954254073%_)))
                            (_%hd253955254076%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253954254073%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl253956254078%_))
                            (let ((_%e253957254081%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl253956254078%_))))
                              (let ((_%tl253959254086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253957254081%_)))
                                    (_%hd253958254084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253957254081%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd253958254084%_))
                                    (let ((_%e253960254089%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd253958254084%_))))
                                      (let ((_%tl253962254094%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e253960254089%_)))
                                            (_%hd253961254092%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e253960254089%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253962254094%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253959254086%_))
                                                (let ((_%e253963254097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253959254086%_))))
                                                  (let ((_%tl253965254102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253963254097%_)))
                                                        (_%hd253964254100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253963254097%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253965254102%_))
                                                        (_%__kont254395254396%_
                                                         _%hd253961254092%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd253958254084%_))
                                                            (let ((_%__splice254399254400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd253958254084%_
                              '0))))
                      (let ((_%tl253975254012%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254399254400%_ '1)))
                            (_%target253973254010%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254399254400%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl253975254012%_))
                            (_%__match254448254449%_
                             _%e253954254073%_
                             _%hd253955254076%_
                             _%tl253956254078%_
                             _%e253957254081%_
                             _%hd253958254084%_
                             _%tl253959254086%_
                             _%__splice254399254400%_
                             _%target253973254010%_
                             _%tl253975254012%_)
                            (let ()
                              (declare (not safe))
                              (_%g253951253989%_)))))
                    (let () (declare (not safe)) (_%g253951253989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd253958254084%_))
                                                    (let ((_%__splice254399254400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd253958254084%_
                                                              '0))))
                                                      (let ((_%tl253975254012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice254399254400%_ '1)))
                    (_%target253973254010%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice254399254400%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl253975254012%_))
                    (_%__match254448254449%_
                     _%e253954254073%_
                     _%hd253955254076%_
                     _%tl253956254078%_
                     _%e253957254081%_
                     _%hd253958254084%_
                     _%tl253959254086%_
                     _%__splice254399254400%_
                     _%target253973254010%_
                     _%tl253975254012%_)
                    (let () (declare (not safe)) (_%g253951253989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253951253989%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd253958254084%_))
                                                (let ((_%__splice254399254400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd253958254084%_
                                                          '0))))
                                                  (let ((_%tl253975254012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254399254400%_
                                                            '1)))
                                                        (_%target253973254010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254399254400%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253975254012%_))
                                                        (_%__match254448254449%_
                                                         _%e253954254073%_
                                                         _%hd253955254076%_
                                                         _%tl253956254078%_
                                                         _%e253957254081%_
                                                         _%hd253958254084%_
                                                         _%tl253959254086%_
                                                         _%__splice254399254400%_
                                                         _%target253973254010%_
                                                         _%tl253975254012%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253951253989%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253951253989%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd253958254084%_))
                                        (let ((_%__splice254399254400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd253958254084%_
                                                  '0))))
                                          (let ((_%tl253975254012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254399254400%_
                                                    '1)))
                                                (_%target253973254010%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254399254400%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253975254012%_))
                                                (_%__match254448254449%_
                                                 _%e253954254073%_
                                                 _%hd253955254076%_
                                                 _%tl253956254078%_
                                                 _%e253957254081%_
                                                 _%hd253958254084%_
                                                 _%tl253959254086%_
                                                 _%__splice254399254400%_
                                                 _%target253973254010%_
                                                 _%tl253975254012%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253951253989%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g253951253989%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g253951253989%_)))))
                    (let () (declare (not safe)) (_%g253951253989%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self253498%_ _%stx253499%_)
        (let* ((_%__stx254451254452%_ _%stx253499%_)
               (_%g253503253605%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254451254452%_)))))
          (let ((_%__kont254453254454%_
                 (lambda (_%g253505253895%_
                          _%g253506253896%_
                          _%g253507253897%_
                          _%g253508253898%_
                          _%g253509253899%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253508253898%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253507253897%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253506253896%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g253505253895%_))
                                                 '())))))))
                (_%__kont254455254456%_
                 (lambda (_%g253558253721%_
                          _%g253559253722%_
                          _%g253560253723%_
                          _%g253561253724%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253560253723%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253559253722%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253558253721%_))
                                           (cons '#f '())))))))
                (_%__kont254457254458%_ (lambda () '(begin))))
            (let ((_%__match254586254587%_
                   (lambda (_%e253510253767%_
                            _%hd253511253770%_
                            _%tl253512253772%_
                            _%e253513253775%_
                            _%hd253514253778%_
                            _%tl253515253780%_
                            _%e253516253783%_
                            _%hd253517253786%_
                            _%tl253518253788%_
                            _%e253519253791%_
                            _%hd253520253794%_
                            _%tl253521253796%_
                            _%e253522253799%_
                            _%hd253523253802%_
                            _%tl253524253804%_
                            _%e253525253807%_
                            _%hd253526253810%_
                            _%tl253527253812%_
                            _%e253528253815%_
                            _%hd253529253818%_
                            _%tl253530253820%_
                            _%e253531253823%_
                            _%hd253532253826%_
                            _%tl253533253828%_
                            _%e253534253831%_
                            _%hd253535253834%_
                            _%tl253536253836%_
                            _%e253537253839%_
                            _%hd253538253842%_
                            _%tl253539253844%_
                            _%e253540253847%_
                            _%hd253541253850%_
                            _%tl253542253852%_
                            _%e253543253855%_
                            _%hd253544253858%_
                            _%tl253545253860%_
                            _%e253546253863%_
                            _%hd253547253866%_
                            _%tl253548253868%_
                            _%e253549253871%_
                            _%hd253550253874%_
                            _%tl253551253876%_
                            _%e253552253879%_
                            _%hd253553253882%_
                            _%tl253554253884%_
                            _%e253555253887%_
                            _%hd253556253890%_
                            _%tl253557253892%_)
                     (let ((_%g253505253895%_ _%hd253556253890%_)
                           (_%g253506253896%_ _%hd253547253866%_)
                           (_%g253507253897%_ _%hd253538253842%_)
                           (_%g253508253898%_ _%hd253529253818%_)
                           (_%g253509253899%_ _%hd253520253794%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g253509253899%_
                              'bind-method!))
                           (_%__kont254453254454%_
                            _%g253505253895%_
                            _%g253506253896%_
                            _%g253507253897%_
                            _%g253508253898%_
                            _%g253509253899%_)
                           (_%__kont254457254458%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254451254452%_))
                  (let ((_%e253510253767%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254451254452%_))))
                    (let ((_%tl253512253772%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253510253767%_)))
                          (_%hd253511253770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253510253767%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253512253772%_))
                          (let ((_%e253513253775%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253512253772%_))))
                            (let ((_%tl253515253780%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253513253775%_)))
                                  (_%hd253514253778%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253513253775%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253514253778%_))
                                  (let ((_%e253516253783%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253514253778%_))))
                                    (let ((_%tl253518253788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253516253783%_)))
                                          (_%hd253517253786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253516253783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253517253786%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253517253786%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253518253788%_))
                                                  (let ((_%e253519253791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253518253788%_))))
                                                    (let ((_%tl253521253796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253519253791%_)))
                                                          (_%hd253520253794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253519253791%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253521253796%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253515253780%_))
                      (let ((_%e253522253799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253515253780%_))))
                        (let ((_%tl253524253804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253522253799%_)))
                              (_%hd253523253802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253522253799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd253523253802%_))
                              (let ((_%e253525253807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd253523253802%_))))
                                (let ((_%tl253527253812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253525253807%_)))
                                      (_%hd253526253810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253525253807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd253526253810%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd253526253810%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl253527253812%_))
                                              (let ((_%e253528253815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl253527253812%_))))
                                                (let ((_%tl253530253820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253528253815%_)))
                                                      (_%hd253529253818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253528253815%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253530253820%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl253524253804%_))
                                                          (let ((_%e253531253823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl253524253804%_))))
                    (let ((_%tl253533253828%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253531253823%_)))
                          (_%hd253532253826%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253531253823%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd253532253826%_))
                          (let ((_%e253534253831%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd253532253826%_))))
                            (let ((_%tl253536253836%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253534253831%_)))
                                  (_%hd253535253834%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253534253831%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd253535253834%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd253535253834%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253536253836%_))
                                          (let ((_%e253537253839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253536253836%_))))
                                            (let ((_%tl253539253844%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253537253839%_)))
                                                  (_%hd253538253842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253537253839%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl253539253844%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl253533253828%_))
                                                      (let ((_%e253540253847%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl253533253828%_))))
                (let ((_%tl253542253852%_
                       (let () (declare (not safe)) (##cdr _%e253540253847%_)))
                      (_%hd253541253850%_
                       (let ()
                         (declare (not safe))
                         (##car _%e253540253847%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd253541253850%_))
                      (let ((_%e253543253855%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd253541253850%_))))
                        (let ((_%tl253545253860%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253543253855%_)))
                              (_%hd253544253858%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253543253855%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd253544253858%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253544253858%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253545253860%_))
                                      (let ((_%e253546253863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253545253860%_))))
                                        (let ((_%tl253548253868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253546253863%_)))
                                              (_%hd253547253866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253546253863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253548253868%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253542253852%_))
                                                  (let ((_%e253549253871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253542253852%_))))
                                                    (let ((_%tl253551253876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253549253871%_)))
                                                          (_%hd253550253874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253549253871%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd253550253874%_))
                                                          (let ((_%e253552253879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd253550253874%_))))
                    (let ((_%tl253554253884%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253552253879%_)))
                          (_%hd253553253882%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253552253879%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253553253882%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253553253882%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253554253884%_))
                                  (let ((_%e253555253887%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253554253884%_))))
                                    (let ((_%tl253557253892%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253555253887%_)))
                                          (_%hd253556253890%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253555253887%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253557253892%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253551253876%_))
                                              (_%__match254586254587%_
                                               _%e253510253767%_
                                               _%hd253511253770%_
                                               _%tl253512253772%_
                                               _%e253513253775%_
                                               _%hd253514253778%_
                                               _%tl253515253780%_
                                               _%e253516253783%_
                                               _%hd253517253786%_
                                               _%tl253518253788%_
                                               _%e253519253791%_
                                               _%hd253520253794%_
                                               _%tl253521253796%_
                                               _%e253522253799%_
                                               _%hd253523253802%_
                                               _%tl253524253804%_
                                               _%e253525253807%_
                                               _%hd253526253810%_
                                               _%tl253527253812%_
                                               _%e253528253815%_
                                               _%hd253529253818%_
                                               _%tl253530253820%_
                                               _%e253531253823%_
                                               _%hd253532253826%_
                                               _%tl253533253828%_
                                               _%e253534253831%_
                                               _%hd253535253834%_
                                               _%tl253536253836%_
                                               _%e253537253839%_
                                               _%hd253538253842%_
                                               _%tl253539253844%_
                                               _%e253540253847%_
                                               _%hd253541253850%_
                                               _%tl253542253852%_
                                               _%e253543253855%_
                                               _%hd253544253858%_
                                               _%tl253545253860%_
                                               _%e253546253863%_
                                               _%hd253547253866%_
                                               _%tl253548253868%_
                                               _%e253549253871%_
                                               _%hd253550253874%_
                                               _%tl253551253876%_
                                               _%e253552253879%_
                                               _%hd253553253882%_
                                               _%tl253554253884%_
                                               _%e253555253887%_
                                               _%hd253556253890%_
                                               _%tl253557253892%_)
                                              (_%__kont254457254458%_))
                                          (_%__kont254457254458%_))))
                                  (_%__kont254457254458%_))
                              (_%__kont254457254458%_))
                          (_%__kont254457254458%_))))
                  (_%__kont254457254458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253542253852%_))
                                                      (if (let ((__tmp254809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp254809 'bind-method!))
                  (let ((_%g253558253721%_ _%hd253547253866%_)
                        (_%g253559253722%_ _%hd253538253842%_)
                        (_%g253560253723%_ _%hd253529253818%_)
                        (_%g253561253724%_ _%hd253520253794%_))
                    (_%__kont254455254456%_
                     _%g253558253721%_
                     _%g253559253722%_
                     _%g253560253723%_
                     _%g253561253724%_))
                  (_%__kont254457254458%_))
              (_%__kont254457254458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254457254458%_))))
                                      (_%__kont254457254458%_))
                                  (_%__kont254457254458%_))
                              (_%__kont254457254458%_))))
                      (_%__kont254457254458%_))))
              (_%__kont254457254458%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254457254458%_))))
                                          (_%__kont254457254458%_))
                                      (_%__kont254457254458%_))
                                  (_%__kont254457254458%_))))
                          (_%__kont254457254458%_))))
                  (_%__kont254457254458%_))
              (_%__kont254457254458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254457254458%_))
                                          (_%__kont254457254458%_))
                                      (_%__kont254457254458%_))))
                              (_%__kont254457254458%_))))
                      (_%__kont254457254458%_))
                  (_%__kont254457254458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254457254458%_))
                                              (_%__kont254457254458%_))
                                          (_%__kont254457254458%_))))
                                  (_%__kont254457254458%_))))
                          (_%__kont254457254458%_))))
                  (_%__kont254457254458%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self253322%_ _%stx253323%_)
        (let* ((_%__stx254695254696%_ _%stx253323%_)
               (_%g253326253366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254695254696%_)))))
          (let ((_%__kont254697254698%_
                 (lambda (_%g253328253472%_ _%g253329253473%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253329253473%_))
                               (cons _%g253328253472%_ '())))))
                (_%__kont254699254700%_
                 (lambda (_%g253351253395%_ _%g253352253396%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx254695254696%_))
                (let ((_%e253330253416%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx254695254696%_))))
                  (let ((_%tl253332253421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e253330253416%_)))
                        (_%hd253331253419%_
                         (let ()
                           (declare (not safe))
                           (##car _%e253330253416%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl253332253421%_))
                        (let ((_%e253333253424%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl253332253421%_))))
                          (let ((_%tl253335253429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253333253424%_)))
                                (_%hd253334253427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253333253424%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd253334253427%_))
                                (let ((_%e253336253432%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd253334253427%_))))
                                  (let ((_%tl253338253437%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e253336253432%_)))
                                        (_%hd253337253435%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e253336253432%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd253337253435%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd253337253435%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253338253437%_))
                                                (let ((_%e253339253440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253338253437%_))))
                                                  (let ((_%tl253341253445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253339253440%_)))
                                                        (_%hd253340253443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253339253440%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253341253445%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl253335253429%_))
                                                            (let ((_%e253342253448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253335253429%_))))
                      (let ((_%tl253344253453%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253342253448%_)))
                            (_%hd253343253451%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253342253448%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd253343253451%_))
                            (let ((_%e253345253456%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd253343253451%_))))
                              (let ((_%tl253347253461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253345253456%_)))
                                    (_%hd253346253459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253345253456%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd253346253459%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd253346253459%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253347253461%_))
                                            (let ((_%e253348253464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253347253461%_))))
                                              (let ((_%tl253350253469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253348253464%_)))
                                                    (_%hd253349253467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253348253464%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253350253469%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253344253453%_))
                                                        (_%__kont254697254698%_
                                                         _%hd253349253467%_
                                                         _%hd253340253443%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253326253366%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253344253453%_))
                                                        (_%__kont254699254700%_
                                                         _%hd253343253451%_
                                                         _%hd253334253427%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253326253366%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253344253453%_))
                                                (_%__kont254699254700%_
                                                 _%hd253343253451%_
                                                 _%hd253334253427%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253326253366%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253344253453%_))
                                            (_%__kont254699254700%_
                                             _%hd253343253451%_
                                             _%hd253334253427%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253326253366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl253344253453%_))
                                        (_%__kont254699254700%_
                                         _%hd253343253451%_
                                         _%hd253334253427%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g253326253366%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl253344253453%_))
                                (_%__kont254699254700%_
                                 _%hd253343253451%_
                                 _%hd253334253427%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g253326253366%_))))))
                    (let () (declare (not safe)) (_%g253326253366%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl253335253429%_))
                    (let ((_%e253359253387%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253335253429%_))))
                      (let ((_%tl253361253392%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253359253387%_)))
                            (_%hd253360253390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253359253387%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl253361253392%_))
                            (_%__kont254699254700%_
                             _%hd253360253390%_
                             _%hd253334253427%_)
                            (let ()
                              (declare (not safe))
                              (_%g253326253366%_)))))
                    (let () (declare (not safe)) (_%g253326253366%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl253335253429%_))
                                                    (let ((_%e253359253387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl253335253429%_))))
                                                      (let ((_%tl253361253392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e253359253387%_)))
                    (_%hd253360253390%_
                     (let () (declare (not safe)) (##car _%e253359253387%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl253361253392%_))
                    (_%__kont254699254700%_
                     _%hd253360253390%_
                     _%hd253334253427%_)
                    (let () (declare (not safe)) (_%g253326253366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253326253366%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253335253429%_))
                                                (let ((_%e253359253387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253335253429%_))))
                                                  (let ((_%tl253361253392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253359253387%_)))
                                                        (_%hd253360253390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253359253387%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253361253392%_))
                                                        (_%__kont254699254700%_
                                                         _%hd253360253390%_
                                                         _%hd253334253427%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253326253366%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253326253366%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253335253429%_))
                                            (let ((_%e253359253387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253335253429%_))))
                                              (let ((_%tl253361253392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253359253387%_)))
                                                    (_%hd253360253390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253359253387%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253361253392%_))
                                                    (_%__kont254699254700%_
                                                     _%hd253360253390%_
                                                     _%hd253334253427%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253326253366%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g253326253366%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl253335253429%_))
                                    (let ((_%e253359253387%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl253335253429%_))))
                                      (let ((_%tl253361253392%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e253359253387%_)))
                                            (_%hd253360253390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e253359253387%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253361253392%_))
                                            (_%__kont254699254700%_
                                             _%hd253360253390%_
                                             _%hd253334253427%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253326253366%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g253326253366%_))))))
                        (let () (declare (not safe)) (_%g253326253366%_)))))
                (let () (declare (not safe)) (_%g253326253366%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self253309%_)
        (let ((_%self253312%_ _%self253309%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253312%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self253083%_)
        (let* ((_%self253086%_ _%self253083%_)
               (_%self253095253111%_ _%self253086%_)
               (_%E253097253114%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253095253111%_
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
               (_%K253098253129%_
                (lambda (_%methods253117%_
                         _%metaclass253118%_
                         _%system?253119%_
                         _%final?253120%_
                         _%struct?253121%_
                         _%constructor253122%_
                         _%fields253123%_
                         _%slots253124%_
                         _%precendence-list253125%_
                         _%super253126%_
                         _%id253127%_)
                  (cons '@class
                        (cons _%id253127%_
                              (cons _%super253126%_
                                    (cons _%precendence-list253125%_
                                          (cons _%slots253124%_
                                                (cons _%fields253123%_
                                                      (cons _%constructor253122%_
                                                            (cons _%struct?253121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?253120%_
                                (cons _%system?253119%_
                                      (cons _%metaclass253118%_
                                            (cons (if _%methods253117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods253117%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e253099253132%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '1 '#f '#f)))
               (_%id253135%_ _%e253099253132%_)
               (_%e253100253137%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '2 '#f '#f)))
               (_%super253140%_ _%e253100253137%_)
               (_%e253101253142%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '3 '#f '#f)))
               (_%precendence-list253145%_ _%e253101253142%_)
               (_%e253102253147%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '4 '#f '#f)))
               (_%slots253150%_ _%e253102253147%_)
               (_%e253103253152%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '5 '#f '#f)))
               (_%fields253155%_ _%e253103253152%_)
               (_%e253104253157%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '6 '#f '#f)))
               (_%constructor253160%_ _%e253104253157%_)
               (_%e253105253162%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '7 '#f '#f)))
               (_%struct?253165%_ _%e253105253162%_)
               (_%e253106253167%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '8 '#f '#f)))
               (_%final?253170%_ _%e253106253167%_)
               (_%e253107253172%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253095253111%_ '9 '#f '#f)))
               (_%system?253175%_ _%e253107253172%_)
               (_%e253108253177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253095253111%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass253180%_ _%e253108253177%_)
               (_%e253109253182%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253095253111%_
                   '11
                   '#f
                   '#f)))
               (_%methods253185%_ _%e253109253182%_))
          (_%K253098253129%_
           _%methods253185%_
           _%metaclass253180%_
           _%system?253175%_
           _%final?253170%_
           _%struct?253165%_
           _%constructor253160%_
           _%fields253155%_
           _%slots253150%_
           _%precendence-list253145%_
           _%super253140%_
           _%id253135%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self252948%_)
        (let ((_%self252951%_ _%self252948%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252951%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self252813%_)
        (let ((_%self252816%_ _%self252813%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252816%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self252678%_)
        (let ((_%self252681%_ _%self252678%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252681%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252681%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252681%_
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
      (lambda (_%self252543%_)
        (let ((_%self252546%_ _%self252543%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252546%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252546%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252546%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self252408%_)
        (let ((_%self252411%_ _%self252408%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252411%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252411%_
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
      (lambda (_%self252222%_)
        (let* ((_%self252225%_ _%self252222%_)
               (_%self252234252243%_ _%self252225%_)
               (_%E252236252246%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252234252243%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K252237252265%_
                (lambda (_%dispatch252249%_
                         _%arity252250%_
                         _%signature252251%_)
                  (if _%signature252251%_
                      (let ((_%signature252253%_ _%signature252251%_))
                        (cons '@lambda
                              (cons _%arity252250%_
                                    (cons _%dispatch252249%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature252253%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature252253%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature252253%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature252253%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature252253%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity252250%_
                                  (cons _%dispatch252249%_ '()))))))
               (_%e252238252268%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252234252243%_ '1 '#f '#f)))
               (_%e252239252271%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252234252243%_ '2 '#f '#f)))
               (_%signature252274%_ _%e252239252271%_)
               (_%e252240252276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252234252243%_ '3 '#f '#f)))
               (_%arity252279%_ _%e252240252276%_)
               (_%e252241252281%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252234252243%_ '4 '#f '#f)))
               (_%dispatch252284%_ _%e252241252281%_))
          (_%K252237252265%_
           _%dispatch252284%_
           _%arity252279%_
           _%signature252274%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self252082%_)
        (let ((_%self252085%_ _%self252082%_))
          (letrec ((_%clause-e252096%_
                    (lambda (_%clause252098%_)
                      (cdr (let ((__method254783
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause252098%_
                                     'typedecl))))
                             (if __method254783
                                 (let ()
                                   (declare (not safe))
                                   (__method254783 _%clause252098%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause252098%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e252096%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252085%_
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
      (lambda (_%self251947%_)
        (let ((_%self251950%_ _%self251947%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251950%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251950%_
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
      (lambda (_%self251812%_)
        (let ((_%self251815%_ _%self251812%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251815%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251815%_
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
      (lambda (_%self251677%_)
        (let ((_%self251680%_ _%self251677%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251680%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
