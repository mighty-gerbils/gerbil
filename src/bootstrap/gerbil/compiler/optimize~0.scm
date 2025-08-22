(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1755903083)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp205331
                   (let ((__obj205325
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
                       (gxc#optimizer-info:::init! __obj205325))
                     __obj205325)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp205331)))))
    (define gxc#optimize!
      (lambda (_%ctx204933%_)
        (let ((__tmp205333
               (lambda ()
                 (let ((__tmp205335
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx204933%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx204933%_)
                          (let ((__tmp205337
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp205336
                                 (##structure-ref
                                  _%ctx204933%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp205337 __tmp205336 '#t))
                          (let ((_%code204937%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx204933%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx204933%_
                             _%code204937%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp205334
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp205335
                    gxc#current-compile-local-type
                    __tmp205334))))
              (__tmp205332 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205333
           gxc#current-compile-mutators
           __tmp205332))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx204919%_)
        (letrec ((_%load-it!204921%_
                  (lambda (_%id204931%_)
                    (if (let ((__tmp205338
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp205338 _%id204931%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id204931%_)
                          (let ((__tmp205339
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp205339 _%id204931%_ '#t)))))))
          (let* ((_%modid204923%_
                  (##structure-ref
                   _%ctx204919%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str204925%_ (symbol->string _%modid204923%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str204925%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str204925%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!204921%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!204921%_
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
      (lambda (_%ctx204856%_)
        (letrec* ((_%deps204858%_
                   (let* ((_%imports204909%_
                           (##structure-ref
                            _%ctx204856%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e204911%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx204856%_))))
                     (if _%$e204911%_
                         ((lambda (_%g204913204915%_)
                            (cons _%g204913204915%_ _%imports204909%_))
                          _%$e204911%_)
                         _%imports204909%_))))
          (let _%lp204860%_ ((_%rest204862%_ _%deps204858%_))
            (let* ((_%rest204863204871%_ _%rest204862%_)
                   (_%else204865204879%_ (lambda () '#!void))
                   (_%K204867204897%_
                    (lambda (_%rest204882%_ _%hd204883%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd204883%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp205341
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp205340
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd204883%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp205341 __tmp205340))
                                '#!void
                                (begin
                                  (let ((_%$e204886%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd204883%_))))
                                    (if _%$e204886%_
                                        ((lambda (_%pre204889%_)
                                           (_%lp204860%_
                                            (cons _%pre204889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd204883%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e204886%_)
                                        (_%lp204860%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd204883%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd204883%_)))
                            (_%lp204860%_ _%rest204882%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd204883%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp205343
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp205342
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd204883%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp205343 __tmp205342))
                                    '#!void
                                    (begin
                                      (_%lp204860%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd204883%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd204883%_)))
                                (_%lp204860%_ _%rest204882%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd204883%_
                                     'gx#module-import::t))
                                  (_%lp204860%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd204883%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest204882%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd204883%_
                                         'gx#module-export::t))
                                      (_%lp204860%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd204883%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest204882%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd204883%_
                                             'gx#import-set::t))
                                          (_%lp204860%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd204883%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest204882%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd204883%_))))))))))
              (if (pair? _%rest204863204871%_)
                  (let ((_%hd204868204900%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest204863204871%_)))
                        (_%tl204869204902%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest204863204871%_))))
                    (let* ((_%hd204905%_ _%hd204868204900%_)
                           (_%rest204907%_ _%tl204869204902%_))
                      (_%K204867204897%_ _%rest204907%_ _%hd204905%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx204836%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx204836%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx204836%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht204838%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id204840%_
                    (##structure-ref
                     _%ctx204836%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod204842%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht204838%_ _%id204840%_)))
                   (_%$e204845%_ _%mod204842%_))
              (if _%$e204845%_
                  _%$e204845%_
                  (let* ((_%mod204848%_
                          (gxc#optimizer-import-ssxi _%ctx204836%_))
                         (_%val204853%_
                          (let ((_%$e204850%_ _%mod204848%_))
                            (if _%$e204850%_ _%$e204850%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht204838%_ _%id204840%_ _%val204853%_))
                    _%val204853%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx204834%_)
        (if (##structure-ref _%ctx204834%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx204834%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id204811%_)
        (letrec ((_%catch-e204813%_
                  (lambda (_%exn204832%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn204832%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn204832%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id204811%_))))
                    '#f))
                 (_%import-e204814%_
                  (lambda ()
                    (let* ((_%str-id204817%_
                            (let ((__tmp205344
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id204811%_))))
                              (declare (not safe))
                              (##string-append __tmp205344 '".ssxi")))
                           (_%artefact-path204825%_
                            (let ((_%odir204818204820%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir204818204820%_
                                  (let ((_%odir204823%_ _%odir204818204820%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id204817%_
                                        '".ss"))
                                     _%odir204823%_))
                                  '#f)))
                           (_%library-path204827%_
                            (let ((__tmp205345
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id204817%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp205345)))
                           (_%ssxi-path204829%_
                            (if (and _%artefact-path204825%_
                                     (file-exists? _%artefact-path204825%_))
                                _%artefact-path204825%_
                                _%library-path204827%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path204829%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path204829%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e204813%_ _%import-e204814%_)))))
    (define gxc#optimize-source
      (lambda (_%stx204796%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx204796%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx204796%_))
        (let* ((_%stx204798%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx204796%_)))
               (_%stx204800%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx204798%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx204800%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx204800%_))
          (let _%fixpoint204803%_ ((_%current204805%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx204800%_))
            (let ((_%refined204807%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current204805%_ _%refined204807%_)
                  '#!void
                  (_%fixpoint204803%_ _%refined204807%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx204800%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx204800%_))
          (let ((_%stx204809%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx204800%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx204809%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp205347 (list gxc#::generate-runtime-empty::t))
            (__tmp205346 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp205347
         '()
         __tmp205346
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args204793%_
        (apply make-instance gxc#::generate-ssxi::t _%$args204793%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp205348
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
        (__make-promise __tmp205348)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx204785%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self204788%_
                (let ((__obj205327
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj205327))
               (__tmp205349
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204788%_ _%stx204785%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205349
           gxc#current-compile-method
           _%self204788%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self204745%_ _%stx204746%_)
        (let* ((_%g204748204758%_
                (lambda (_%g204749204755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204749204755%_))))
               (_%g204747204782%_
                (lambda (_%g204749204761%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204749204761%_))
                      (let ((_%e204751204763%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204749204761%_))))
                        (let ((_%hd204752204766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204751204763%_)))
                              (_%tl204753204768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204751204763%_))))
                          ((lambda (_%L204771%_)
                             (let ((__tmp205352
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self204745%_
                                         _%stx204746%_))))
                                   (__tmp205350
                                    (let ((__tmp205351
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp205351 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp205352
                                gx#current-expander-phi
                                __tmp205350)))
                           _%tl204753204768%_)))
                      (_%g204748204758%_ _%g204749204761%_)))))
          (_%g204747204782%_ _%stx204746%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self204684%_ _%stx204685%_)
        (let* ((_%g204687204701%_
                (lambda (_%g204688204698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204688204698%_))))
               (_%g204686204742%_
                (lambda (_%g204688204704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204688204704%_))
                      (let ((_%e204691204706%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204688204704%_))))
                        (let ((_%hd204692204709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204691204706%_)))
                              (_%tl204693204711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204691204706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204693204711%_))
                              (let ((_%e204694204714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204693204711%_))))
                                (let ((_%hd204695204717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204694204714%_)))
                                      (_%tl204696204719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204694204714%_))))
                                  ((lambda (_%L204722%_ _%L204723%_)
                                     (let* ((_%ctx204736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L204723%_)))
                                            (_%code204738%_
                                             (##structure-ref
                                              _%ctx204736%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp205353
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self204684%_
                                                  _%code204738%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp205353
                                        gx#current-expander-context
                                        _%ctx204736%_)))
                                   _%tl204696204719%_
                                   _%hd204695204717%_)))
                              (_%g204687204701%_ _%g204688204704%_))))
                      (_%g204687204701%_ _%g204688204704%_)))))
          (_%g204686204742%_ _%stx204685%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self204489%_ _%stx204490%_)
        (letrec ((_%generate-e204492%_
                  (lambda (_%id204669%_)
                    (let* ((_%sym204671%_
                            (if (let ((__tmp205354
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp205354))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id204669%_))
                                '#f))
                           (_%$e204673%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym204671%_))))
                      (if _%$e204673%_
                          ((lambda (_%klass204676%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym204671%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym204671%_
                                                     (cons (let ((__method205328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass204676%_ 'typedecl))))
                     (if __method205328
                         (let ()
                           (declare (not safe))
                           (__method205328 _%klass204676%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass204676%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym204671%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym204671%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e204673%_)
                          (let ((_%$e204678%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym204671%_))))
                            (if _%$e204678%_
                                ((lambda (_%type204681%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym204671%_
                                      '" "
                                      _%type204681%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type204681%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym204671%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym204671%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type204681%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym204671%_
                                                   (cons (let ((__method205329
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type204681%_ 'typedecl))))
                   (if __method205329
                       (let ()
                         (declare (not safe))
                         (__method205329 _%type204681%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type204681%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e204678%_)
                                '(begin))))))))
          (let* ((_%__stx204940204941%_ _%stx204490%_)
                 (_%g204495204533%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx204940204941%_)))))
            (let ((_%__kont204942204943%_
                   (lambda (_%L204651%_) (_%generate-e204492%_ _%L204651%_)))
                  (_%__kont204944204945%_
                   (lambda (_%L204586%_)
                     (let ((_%types204612%_
                            (map _%generate-e204492%_
                                 (let ((__tmp205355
                                        (lambda (_%g204604204607%_
                                                 _%g204605204609%_)
                                          (cons _%g204604204607%_
                                                _%g204605204609%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp205355 '() _%L204586%_)))))
                       (cons 'begin _%types204612%_)))))
              (let ((_%__match204995204996%_
                     (lambda (_%e204511204538%_
                              _%hd204512204541%_
                              _%tl204513204543%_
                              _%e204514204546%_
                              _%hd204515204549%_
                              _%tl204516204551%_
                              _%__splice204946204947%_
                              _%target204517204554%_
                              _%tl204519204556%_)
                       (letrec ((_%loop204520204559%_
                                 (lambda (_%hd204518204562%_
                                          _%id204524204564%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd204518204562%_))
                                       (let ((_%e204521204567%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd204518204562%_))))
                                         (let ((_%lp-tl204523204572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e204521204567%_)))
                                               (_%lp-hd204522204570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e204521204567%_))))
                                           (_%loop204520204559%_
                                            _%lp-tl204523204572%_
                                            (cons _%lp-hd204522204570%_
                                                  _%id204524204564%_))))
                                       (let ((_%id204525204575%_
                                              (reverse _%id204524204564%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl204516204551%_))
                                             (let ((_%e204526204578%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl204516204551%_))))
                                               (let ((_%tl204528204583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e204526204578%_)))
                                                     (_%hd204527204581%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e204526204578%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl204528204583%_))
                                                     (_%__kont204944204945%_
                                                      _%id204525204575%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g204495204533%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g204495204533%_))))))))
                         (_%loop204520204559%_ _%target204517204554%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx204940204941%_))
                    (let ((_%e204498204619%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx204940204941%_))))
                      (let ((_%tl204500204624%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204498204619%_)))
                            (_%hd204499204622%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204498204619%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204500204624%_))
                            (let ((_%e204501204627%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl204500204624%_))))
                              (let ((_%tl204503204632%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204501204627%_)))
                                    (_%hd204502204630%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204501204627%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd204502204630%_))
                                    (let ((_%e204504204635%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204502204630%_))))
                                      (let ((_%tl204506204640%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204504204635%_)))
                                            (_%hd204505204638%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204504204635%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl204506204640%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204503204632%_))
                                                (let ((_%e204507204643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl204503204632%_))))
                                                  (let ((_%tl204509204648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204507204643%_)))
                                                        (_%hd204508204646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204507204643%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204509204648%_))
                                                        (_%__kont204942204943%_
                                                         _%hd204505204638%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd204502204630%_))
                                                            (let ((_%__splice204946204947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd204502204630%_
                              '0))))
                      (let ((_%tl204519204556%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice204946204947%_ '1)))
                            (_%target204517204554%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice204946204947%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204519204556%_))
                            (_%__match204995204996%_
                             _%e204498204619%_
                             _%hd204499204622%_
                             _%tl204500204624%_
                             _%e204501204627%_
                             _%hd204502204630%_
                             _%tl204503204632%_
                             _%__splice204946204947%_
                             _%target204517204554%_
                             _%tl204519204556%_)
                            (let ()
                              (declare (not safe))
                              (_%g204495204533%_)))))
                    (let () (declare (not safe)) (_%g204495204533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd204502204630%_))
                                                    (let ((_%__splice204946204947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd204502204630%_
                                                              '0))))
                                                      (let ((_%tl204519204556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice204946204947%_ '1)))
                    (_%target204517204554%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice204946204947%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl204519204556%_))
                    (_%__match204995204996%_
                     _%e204498204619%_
                     _%hd204499204622%_
                     _%tl204500204624%_
                     _%e204501204627%_
                     _%hd204502204630%_
                     _%tl204503204632%_
                     _%__splice204946204947%_
                     _%target204517204554%_
                     _%tl204519204556%_)
                    (let () (declare (not safe)) (_%g204495204533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204495204533%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd204502204630%_))
                                                (let ((_%__splice204946204947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd204502204630%_
                                                          '0))))
                                                  (let ((_%tl204519204556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice204946204947%_
                                                            '1)))
                                                        (_%target204517204554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice204946204947%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204519204556%_))
                                                        (_%__match204995204996%_
                                                         _%e204498204619%_
                                                         _%hd204499204622%_
                                                         _%tl204500204624%_
                                                         _%e204501204627%_
                                                         _%hd204502204630%_
                                                         _%tl204503204632%_
                                                         _%__splice204946204947%_
                                                         _%target204517204554%_
                                                         _%tl204519204556%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g204495204533%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204495204533%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd204502204630%_))
                                        (let ((_%__splice204946204947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd204502204630%_
                                                  '0))))
                                          (let ((_%tl204519204556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204946204947%_
                                                    '1)))
                                                (_%target204517204554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204946204947%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204519204556%_))
                                                (_%__match204995204996%_
                                                 _%e204498204619%_
                                                 _%hd204499204622%_
                                                 _%tl204500204624%_
                                                 _%e204501204627%_
                                                 _%hd204502204630%_
                                                 _%tl204503204632%_
                                                 _%__splice204946204947%_
                                                 _%target204517204554%_
                                                 _%tl204519204556%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g204495204533%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g204495204533%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g204495204533%_)))))
                    (let () (declare (not safe)) (_%g204495204533%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self204042%_ _%stx204043%_)
        (let* ((_%__stx204998204999%_ _%stx204043%_)
               (_%g204047204149%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204998204999%_)))))
          (let ((_%__kont205000205001%_
                 (lambda (_%L204439%_
                          _%L204440%_
                          _%L204441%_
                          _%L204442%_
                          _%L204443%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L204442%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L204441%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L204440%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L204439%_))
                                                 '())))))))
                (_%__kont205002205003%_
                 (lambda (_%L204265%_ _%L204266%_ _%L204267%_ _%L204268%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L204267%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L204266%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L204265%_))
                                           (cons '#f '())))))))
                (_%__kont205004205005%_ (lambda () '(begin))))
            (let ((_%__match205133205134%_
                   (lambda (_%e204054204311%_
                            _%hd204055204314%_
                            _%tl204056204316%_
                            _%e204057204319%_
                            _%hd204058204322%_
                            _%tl204059204324%_
                            _%e204060204327%_
                            _%hd204061204330%_
                            _%tl204062204332%_
                            _%e204063204335%_
                            _%hd204064204338%_
                            _%tl204065204340%_
                            _%e204066204343%_
                            _%hd204067204346%_
                            _%tl204068204348%_
                            _%e204069204351%_
                            _%hd204070204354%_
                            _%tl204071204356%_
                            _%e204072204359%_
                            _%hd204073204362%_
                            _%tl204074204364%_
                            _%e204075204367%_
                            _%hd204076204370%_
                            _%tl204077204372%_
                            _%e204078204375%_
                            _%hd204079204378%_
                            _%tl204080204380%_
                            _%e204081204383%_
                            _%hd204082204386%_
                            _%tl204083204388%_
                            _%e204084204391%_
                            _%hd204085204394%_
                            _%tl204086204396%_
                            _%e204087204399%_
                            _%hd204088204402%_
                            _%tl204089204404%_
                            _%e204090204407%_
                            _%hd204091204410%_
                            _%tl204092204412%_
                            _%e204093204415%_
                            _%hd204094204418%_
                            _%tl204095204420%_
                            _%e204096204423%_
                            _%hd204097204426%_
                            _%tl204098204428%_
                            _%e204099204431%_
                            _%hd204100204434%_
                            _%tl204101204436%_)
                     (let ((_%L204439%_ _%hd204100204434%_)
                           (_%L204440%_ _%hd204091204410%_)
                           (_%L204441%_ _%hd204082204386%_)
                           (_%L204442%_ _%hd204073204362%_)
                           (_%L204443%_ _%hd204064204338%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L204443%_
                              'bind-method!))
                           (_%__kont205000205001%_
                            _%L204439%_
                            _%L204440%_
                            _%L204441%_
                            _%L204442%_
                            _%L204443%_)
                           (_%__kont205004205005%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204998204999%_))
                  (let ((_%e204054204311%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204998204999%_))))
                    (let ((_%tl204056204316%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204054204311%_)))
                          (_%hd204055204314%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204054204311%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204056204316%_))
                          (let ((_%e204057204319%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204056204316%_))))
                            (let ((_%tl204059204324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204057204319%_)))
                                  (_%hd204058204322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204057204319%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd204058204322%_))
                                  (let ((_%e204060204327%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd204058204322%_))))
                                    (let ((_%tl204062204332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204060204327%_)))
                                          (_%hd204061204330%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204060204327%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd204061204330%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd204061204330%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204062204332%_))
                                                  (let ((_%e204063204335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204062204332%_))))
                                                    (let ((_%tl204065204340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204063204335%_)))
                                                          (_%hd204064204338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204063204335%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204065204340%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl204059204324%_))
                      (let ((_%e204066204343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl204059204324%_))))
                        (let ((_%tl204068204348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204066204343%_)))
                              (_%hd204067204346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204066204343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204067204346%_))
                              (let ((_%e204069204351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd204067204346%_))))
                                (let ((_%tl204071204356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204069204351%_)))
                                      (_%hd204070204354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204069204351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204070204354%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd204070204354%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204071204356%_))
                                              (let ((_%e204072204359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl204071204356%_))))
                                                (let ((_%tl204074204364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204072204359%_)))
                                                      (_%hd204073204362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204072204359%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204074204364%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204068204348%_))
                                                          (let ((_%e204075204367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl204068204348%_))))
                    (let ((_%tl204077204372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204075204367%_)))
                          (_%hd204076204370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204075204367%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd204076204370%_))
                          (let ((_%e204078204375%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204076204370%_))))
                            (let ((_%tl204080204380%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204078204375%_)))
                                  (_%hd204079204378%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204078204375%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd204079204378%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd204079204378%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204080204380%_))
                                          (let ((_%e204081204383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl204080204380%_))))
                                            (let ((_%tl204083204388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204081204383%_)))
                                                  (_%hd204082204386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204081204383%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl204083204388%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204077204372%_))
                                                      (let ((_%e204084204391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl204077204372%_))))
                (let ((_%tl204086204396%_
                       (let () (declare (not safe)) (##cdr _%e204084204391%_)))
                      (_%hd204085204394%_
                       (let ()
                         (declare (not safe))
                         (##car _%e204084204391%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd204085204394%_))
                      (let ((_%e204087204399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd204085204394%_))))
                        (let ((_%tl204089204404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204087204399%_)))
                              (_%hd204088204402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204087204399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd204088204402%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd204088204402%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204089204404%_))
                                      (let ((_%e204090204407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204089204404%_))))
                                        (let ((_%tl204092204412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204090204407%_)))
                                              (_%hd204091204410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204090204407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204092204412%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204086204396%_))
                                                  (let ((_%e204093204415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl204086204396%_))))
                                                    (let ((_%tl204095204420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204093204415%_)))
                                                          (_%hd204094204418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204093204415%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204094204418%_))
                                                          (let ((_%e204096204423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd204094204418%_))))
                    (let ((_%tl204098204428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204096204423%_)))
                          (_%hd204097204426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204096204423%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204097204426%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd204097204426%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204098204428%_))
                                  (let ((_%e204099204431%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204098204428%_))))
                                    (let ((_%tl204101204436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204099204431%_)))
                                          (_%hd204100204434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204099204431%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204101204436%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204095204420%_))
                                              (_%__match205133205134%_
                                               _%e204054204311%_
                                               _%hd204055204314%_
                                               _%tl204056204316%_
                                               _%e204057204319%_
                                               _%hd204058204322%_
                                               _%tl204059204324%_
                                               _%e204060204327%_
                                               _%hd204061204330%_
                                               _%tl204062204332%_
                                               _%e204063204335%_
                                               _%hd204064204338%_
                                               _%tl204065204340%_
                                               _%e204066204343%_
                                               _%hd204067204346%_
                                               _%tl204068204348%_
                                               _%e204069204351%_
                                               _%hd204070204354%_
                                               _%tl204071204356%_
                                               _%e204072204359%_
                                               _%hd204073204362%_
                                               _%tl204074204364%_
                                               _%e204075204367%_
                                               _%hd204076204370%_
                                               _%tl204077204372%_
                                               _%e204078204375%_
                                               _%hd204079204378%_
                                               _%tl204080204380%_
                                               _%e204081204383%_
                                               _%hd204082204386%_
                                               _%tl204083204388%_
                                               _%e204084204391%_
                                               _%hd204085204394%_
                                               _%tl204086204396%_
                                               _%e204087204399%_
                                               _%hd204088204402%_
                                               _%tl204089204404%_
                                               _%e204090204407%_
                                               _%hd204091204410%_
                                               _%tl204092204412%_
                                               _%e204093204415%_
                                               _%hd204094204418%_
                                               _%tl204095204420%_
                                               _%e204096204423%_
                                               _%hd204097204426%_
                                               _%tl204098204428%_
                                               _%e204099204431%_
                                               _%hd204100204434%_
                                               _%tl204101204436%_)
                                              (_%__kont205004205005%_))
                                          (_%__kont205004205005%_))))
                                  (_%__kont205004205005%_))
                              (_%__kont205004205005%_))
                          (_%__kont205004205005%_))))
                  (_%__kont205004205005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204086204396%_))
                                                      (if (let ((__tmp205356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp205356 'bind-method!))
                  (let ((_%L204265%_ _%hd204091204410%_)
                        (_%L204266%_ _%hd204082204386%_)
                        (_%L204267%_ _%hd204073204362%_)
                        (_%L204268%_ _%hd204064204338%_))
                    (_%__kont205002205003%_
                     _%L204265%_
                     _%L204266%_
                     _%L204267%_
                     _%L204268%_))
                  (_%__kont205004205005%_))
              (_%__kont205004205005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205004205005%_))))
                                      (_%__kont205004205005%_))
                                  (_%__kont205004205005%_))
                              (_%__kont205004205005%_))))
                      (_%__kont205004205005%_))))
              (_%__kont205004205005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205004205005%_))))
                                          (_%__kont205004205005%_))
                                      (_%__kont205004205005%_))
                                  (_%__kont205004205005%_))))
                          (_%__kont205004205005%_))))
                  (_%__kont205004205005%_))
              (_%__kont205004205005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205004205005%_))
                                          (_%__kont205004205005%_))
                                      (_%__kont205004205005%_))))
                              (_%__kont205004205005%_))))
                      (_%__kont205004205005%_))
                  (_%__kont205004205005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205004205005%_))
                                              (_%__kont205004205005%_))
                                          (_%__kont205004205005%_))))
                                  (_%__kont205004205005%_))))
                          (_%__kont205004205005%_))))
                  (_%__kont205004205005%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self203866%_ _%stx203867%_)
        (let* ((_%__stx205242205243%_ _%stx203867%_)
               (_%g203870203910%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205242205243%_)))))
          (let ((_%__kont205244205245%_
                 (lambda (_%L204016%_ _%L204017%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L204017%_))
                               (cons _%L204016%_ '())))))
                (_%__kont205246205247%_
                 (lambda (_%L203939%_ _%L203940%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx205242205243%_))
                (let ((_%e203874203960%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx205242205243%_))))
                  (let ((_%tl203876203965%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203874203960%_)))
                        (_%hd203875203963%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203874203960%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203876203965%_))
                        (let ((_%e203877203968%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203876203965%_))))
                          (let ((_%tl203879203973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203877203968%_)))
                                (_%hd203878203971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203877203968%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203878203971%_))
                                (let ((_%e203880203976%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203878203971%_))))
                                  (let ((_%tl203882203981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203880203976%_)))
                                        (_%hd203881203979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203880203976%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd203881203979%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd203881203979%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203882203981%_))
                                                (let ((_%e203883203984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl203882203981%_))))
                                                  (let ((_%tl203885203989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203883203984%_)))
                                                        (_%hd203884203987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203883203984%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203885203989%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203879203973%_))
                                                            (let ((_%e203886203992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203879203973%_))))
                      (let ((_%tl203888203997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203886203992%_)))
                            (_%hd203887203995%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203886203992%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd203887203995%_))
                            (let ((_%e203889204000%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd203887203995%_))))
                              (let ((_%tl203891204005%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203889204000%_)))
                                    (_%hd203890204003%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203889204000%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203890204003%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd203890204003%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203891204005%_))
                                            (let ((_%e203892204008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203891204005%_))))
                                              (let ((_%tl203894204013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203892204008%_)))
                                                    (_%hd203893204011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203892204008%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203894204013%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203888203997%_))
                                                        (_%__kont205244205245%_
                                                         _%hd203893204011%_
                                                         _%hd203884203987%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g203870203910%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203888203997%_))
                                                        (_%__kont205246205247%_
                                                         _%hd203887203995%_
                                                         _%hd203878203971%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g203870203910%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203888203997%_))
                                                (_%__kont205246205247%_
                                                 _%hd203887203995%_
                                                 _%hd203878203971%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g203870203910%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203888203997%_))
                                            (_%__kont205246205247%_
                                             _%hd203887203995%_
                                             _%hd203878203971%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g203870203910%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203888203997%_))
                                        (_%__kont205246205247%_
                                         _%hd203887203995%_
                                         _%hd203878203971%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g203870203910%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203888203997%_))
                                (_%__kont205246205247%_
                                 _%hd203887203995%_
                                 _%hd203878203971%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g203870203910%_))))))
                    (let () (declare (not safe)) (_%g203870203910%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl203879203973%_))
                    (let ((_%e203903203931%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203879203973%_))))
                      (let ((_%tl203905203936%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203903203931%_)))
                            (_%hd203904203934%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203903203931%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203905203936%_))
                            (_%__kont205246205247%_
                             _%hd203904203934%_
                             _%hd203878203971%_)
                            (let ()
                              (declare (not safe))
                              (_%g203870203910%_)))))
                    (let () (declare (not safe)) (_%g203870203910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl203879203973%_))
                                                    (let ((_%e203903203931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl203879203973%_))))
                                                      (let ((_%tl203905203936%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e203903203931%_)))
                    (_%hd203904203934%_
                     (let () (declare (not safe)) (##car _%e203903203931%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl203905203936%_))
                    (_%__kont205246205247%_
                     _%hd203904203934%_
                     _%hd203878203971%_)
                    (let () (declare (not safe)) (_%g203870203910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203870203910%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203879203973%_))
                                                (let ((_%e203903203931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl203879203973%_))))
                                                  (let ((_%tl203905203936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203903203931%_)))
                                                        (_%hd203904203934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203903203931%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203905203936%_))
                                                        (_%__kont205246205247%_
                                                         _%hd203904203934%_
                                                         _%hd203878203971%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g203870203910%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g203870203910%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203879203973%_))
                                            (let ((_%e203903203931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203879203973%_))))
                                              (let ((_%tl203905203936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203903203931%_)))
                                                    (_%hd203904203934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203903203931%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203905203936%_))
                                                    (_%__kont205246205247%_
                                                     _%hd203904203934%_
                                                     _%hd203878203971%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203870203910%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203870203910%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203879203973%_))
                                    (let ((_%e203903203931%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203879203973%_))))
                                      (let ((_%tl203905203936%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203903203931%_)))
                                            (_%hd203904203934%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203903203931%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203905203936%_))
                                            (_%__kont205246205247%_
                                             _%hd203904203934%_
                                             _%hd203878203971%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g203870203910%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203870203910%_))))))
                        (let () (declare (not safe)) (_%g203870203910%_)))))
                (let () (declare (not safe)) (_%g203870203910%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self202060203851%_)
        (let* ((_%self203854%_ _%self202060203851%_)
               (_%self203856%_ _%self203854%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203856%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self202061203622%_)
        (let* ((_%self203625%_ _%self202061203622%_)
               (_%self203627%_ _%self203625%_)
               (_%self203636203652%_ _%self203627%_)
               (_%E203638203656%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self203636203652%_
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
               (_%K203639203671%_
                (lambda (_%methods203659%_
                         _%metaclass203660%_
                         _%system?203661%_
                         _%final?203662%_
                         _%struct?203663%_
                         _%constructor203664%_
                         _%fields203665%_
                         _%slots203666%_
                         _%precendence-list203667%_
                         _%super203668%_
                         _%id203669%_)
                  (cons '@class
                        (cons _%id203669%_
                              (cons _%super203668%_
                                    (cons _%precendence-list203667%_
                                          (cons _%slots203666%_
                                                (cons _%fields203665%_
                                                      (cons _%constructor203664%_
                                                            (cons _%struct?203663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?203662%_
                                (cons _%system?203661%_
                                      (cons _%metaclass203660%_
                                            (cons (if _%methods203659%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods203659%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e203640203674%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '1 '#f '#f)))
               (_%id203677%_ _%e203640203674%_)
               (_%e203641203679%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '2 '#f '#f)))
               (_%super203682%_ _%e203641203679%_)
               (_%e203642203684%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '3 '#f '#f)))
               (_%precendence-list203687%_ _%e203642203684%_)
               (_%e203643203689%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '4 '#f '#f)))
               (_%slots203692%_ _%e203643203689%_)
               (_%e203644203694%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '5 '#f '#f)))
               (_%fields203697%_ _%e203644203694%_)
               (_%e203645203699%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '6 '#f '#f)))
               (_%constructor203702%_ _%e203645203699%_)
               (_%e203646203704%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '7 '#f '#f)))
               (_%struct?203707%_ _%e203646203704%_)
               (_%e203647203709%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '8 '#f '#f)))
               (_%final?203712%_ _%e203647203709%_)
               (_%e203648203714%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self203636203652%_ '9 '#f '#f)))
               (_%system?203717%_ _%e203648203714%_)
               (_%e203649203719%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self203636203652%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass203722%_ _%e203649203719%_)
               (_%e203650203724%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self203636203652%_
                   '11
                   '#f
                   '#f)))
               (_%methods203727%_ _%e203650203724%_))
          (_%K203639203671%_
           _%methods203727%_
           _%metaclass203722%_
           _%system?203717%_
           _%final?203712%_
           _%struct?203707%_
           _%constructor203702%_
           _%fields203697%_
           _%slots203692%_
           _%precendence-list203687%_
           _%super203682%_
           _%id203677%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self202062203485%_)
        (let* ((_%self203488%_ _%self202062203485%_)
               (_%self203490%_ _%self203488%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203490%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self202063203348%_)
        (let* ((_%self203351%_ _%self202063203348%_)
               (_%self203353%_ _%self203351%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203353%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self202064203211%_)
        (let* ((_%self203214%_ _%self202064203211%_)
               (_%self203216%_ _%self203214%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203216%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203216%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203216%_
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
      (lambda (_%self202065203074%_)
        (let* ((_%self203077%_ _%self202065203074%_)
               (_%self203079%_ _%self203077%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self203079%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self203079%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self203079%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self202066202937%_)
        (let* ((_%self202940%_ _%self202066202937%_)
               (_%self202942%_ _%self202940%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self202942%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self202942%_
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
      (lambda (_%self202067202748%_)
        (let* ((_%self202751%_ _%self202067202748%_)
               (_%self202753%_ _%self202751%_)
               (_%self202762202771%_ _%self202753%_)
               (_%E202764202775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self202762202771%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K202765202794%_
                (lambda (_%dispatch202778%_
                         _%arity202779%_
                         _%signature202780%_)
                  (if _%signature202780%_
                      (let ((_%signature202782%_ _%signature202780%_))
                        (cons '@lambda
                              (cons _%arity202779%_
                                    (cons _%dispatch202778%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature202782%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature202782%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature202782%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature202782%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature202782%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity202779%_
                                  (cons _%dispatch202778%_ '()))))))
               (_%e202766202797%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202762202771%_ '1 '#f '#f)))
               (_%e202767202800%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202762202771%_ '2 '#f '#f)))
               (_%signature202803%_ _%e202767202800%_)
               (_%e202768202805%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202762202771%_ '3 '#f '#f)))
               (_%arity202808%_ _%e202768202805%_)
               (_%e202769202810%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self202762202771%_ '4 '#f '#f)))
               (_%dispatch202813%_ _%e202769202810%_))
          (_%K202765202794%_
           _%dispatch202813%_
           _%arity202808%_
           _%signature202803%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self202068202607%_)
        (let* ((_%self202610%_ _%self202068202607%_)
               (_%self202612%_ _%self202610%_))
          (letrec ((_%clause-e202622%_
                    (lambda (_%clause202624%_)
                      (cdr (let ((__method205330
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause202624%_
                                     'typedecl))))
                             (if __method205330
                                 (let ()
                                   (declare (not safe))
                                   (__method205330 _%clause202624%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause202624%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e202622%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self202612%_
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
      (lambda (_%self202069202470%_)
        (let* ((_%self202473%_ _%self202069202470%_)
               (_%self202475%_ _%self202473%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self202475%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self202475%_
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
      (lambda (_%self202070202333%_)
        (let* ((_%self202336%_ _%self202070202333%_)
               (_%self202338%_ _%self202336%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self202338%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self202338%_
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
      (lambda (_%self202071202196%_)
        (let* ((_%self202199%_ _%self202071202196%_)
               (_%self202201%_ _%self202199%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self202201%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
