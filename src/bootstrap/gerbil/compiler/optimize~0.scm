(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1756721303)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp209392
                   (let ((__obj209386
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
                       (gxc#optimizer-info:::init! __obj209386))
                     __obj209386)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp209392)))))
    (define gxc#optimize!
      (lambda (_%ctx208994%_)
        (let ((__tmp209394
               (lambda ()
                 (let ((__tmp209396
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx208994%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx208994%_)
                          (let ((__tmp209398
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp209397
                                 (##structure-ref
                                  _%ctx208994%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp209398 __tmp209397 '#t))
                          (let ((_%code208998%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx208994%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx208994%_
                             _%code208998%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp209395
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp209396
                    gxc#current-compile-local-type
                    __tmp209395))))
              (__tmp209393 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209394
           gxc#current-compile-mutators
           __tmp209393))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx208980%_)
        (letrec ((_%load-it!208982%_
                  (lambda (_%id208992%_)
                    (if (let ((__tmp209399
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp209399 _%id208992%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id208992%_)
                          (let ((__tmp209400
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp209400 _%id208992%_ '#t)))))))
          (let* ((_%modid208984%_
                  (##structure-ref
                   _%ctx208980%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str208986%_ (symbol->string _%modid208984%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str208986%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str208986%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208982%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208982%_
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
      (lambda (_%ctx208917%_)
        (letrec* ((_%deps208919%_
                   (let* ((_%imports208970%_
                           (##structure-ref
                            _%ctx208917%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e208972%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx208917%_))))
                     (if _%$e208972%_
                         ((lambda (_%g208974208976%_)
                            (cons _%g208974208976%_ _%imports208970%_))
                          _%$e208972%_)
                         _%imports208970%_))))
          (let _%lp208921%_ ((_%rest208923%_ _%deps208919%_))
            (let* ((_%rest208924208932%_ _%rest208923%_)
                   (_%else208926208940%_ (lambda () '#!void))
                   (_%K208928208958%_
                    (lambda (_%rest208943%_ _%hd208944%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd208944%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp209402
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp209401
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208944%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp209402 __tmp209401))
                                '#!void
                                (begin
                                  (let ((_%$e208947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd208944%_))))
                                    (if _%$e208947%_
                                        ((lambda (_%pre208950%_)
                                           (_%lp208921%_
                                            (cons _%pre208950%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd208944%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e208947%_)
                                        (_%lp208921%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208944%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd208944%_)))
                            (_%lp208921%_ _%rest208943%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd208944%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp209404
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp209403
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd208944%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp209404 __tmp209403))
                                    '#!void
                                    (begin
                                      (_%lp208921%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208944%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd208944%_)))
                                (_%lp208921%_ _%rest208943%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd208944%_
                                     'gx#module-import::t))
                                  (_%lp208921%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208944%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest208943%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd208944%_
                                         'gx#module-export::t))
                                      (_%lp208921%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd208944%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest208943%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd208944%_
                                             'gx#import-set::t))
                                          (_%lp208921%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd208944%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest208943%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd208944%_))))))))))
              (if (pair? _%rest208924208932%_)
                  (let ((_%hd208929208961%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208924208932%_)))
                        (_%tl208930208963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208924208932%_))))
                    (let* ((_%hd208966%_ _%hd208929208961%_)
                           (_%rest208968%_ _%tl208930208963%_))
                      (_%K208928208958%_ _%rest208968%_ _%hd208966%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx208897%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx208897%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx208897%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht208899%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id208901%_
                    (##structure-ref
                     _%ctx208897%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod208903%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht208899%_ _%id208901%_)))
                   (_%$e208906%_ _%mod208903%_))
              (if _%$e208906%_
                  _%$e208906%_
                  (let* ((_%mod208909%_
                          (gxc#optimizer-import-ssxi _%ctx208897%_))
                         (_%val208914%_
                          (let ((_%$e208911%_ _%mod208909%_))
                            (if _%$e208911%_ _%$e208911%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht208899%_ _%id208901%_ _%val208914%_))
                    _%val208914%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx208895%_)
        (if (##structure-ref _%ctx208895%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx208895%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id208872%_)
        (letrec ((_%catch-e208874%_
                  (lambda (_%exn208893%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn208893%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn208893%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id208872%_))))
                    '#f))
                 (_%import-e208875%_
                  (lambda ()
                    (let* ((_%str-id208878%_
                            (let ((__tmp209405
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id208872%_))))
                              (declare (not safe))
                              (##string-append __tmp209405 '".ssxi")))
                           (_%artefact-path208886%_
                            (let ((_%odir208879208881%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir208879208881%_
                                  (let ((_%odir208884%_ _%odir208879208881%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id208878%_
                                        '".ss"))
                                     _%odir208884%_))
                                  '#f)))
                           (_%library-path208888%_
                            (let ((__tmp209406
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id208878%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp209406)))
                           (_%ssxi-path208890%_
                            (if (and _%artefact-path208886%_
                                     (file-exists? _%artefact-path208886%_))
                                _%artefact-path208886%_
                                _%library-path208888%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path208890%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path208890%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e208874%_ _%import-e208875%_)))))
    (define gxc#optimize-source
      (lambda (_%stx208857%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx208857%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx208857%_))
        (let* ((_%stx208859%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx208857%_)))
               (_%stx208861%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx208859%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx208861%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx208861%_))
          (let _%fixpoint208864%_ ((_%current208866%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx208861%_))
            (let ((_%refined208868%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current208866%_ _%refined208868%_)
                  '#!void
                  (_%fixpoint208864%_ _%refined208868%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx208861%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx208861%_))
          (let ((_%stx208870%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx208861%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx208870%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp209408 (list gxc#::generate-runtime-empty::t))
            (__tmp209407 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp209408
         '()
         __tmp209407
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args208854%_
        (apply make-instance gxc#::generate-ssxi::t _%$args208854%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp209409
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
        (__make-atomic-promise __tmp209409)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx208846%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self208849%_
                (let ((__obj209388
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj209388))
               (__tmp209410
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208849%_ _%stx208846%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209410
           gxc#current-compile-method
           _%self208849%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self208806%_ _%stx208807%_)
        (let* ((_%g208809208819%_
                (lambda (_%g208810208816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208810208816%_))))
               (_%g208808208843%_
                (lambda (_%g208810208822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208810208822%_))
                      (let ((_%e208812208824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208810208822%_))))
                        (let ((_%hd208813208827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208812208824%_)))
                              (_%tl208814208829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208812208824%_))))
                          ((lambda (_%L208832%_)
                             (let ((__tmp209413
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self208806%_
                                         _%stx208807%_))))
                                   (__tmp209411
                                    (let ((__tmp209412
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp209412 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp209413
                                gx#current-expander-phi
                                __tmp209411)))
                           _%tl208814208829%_)))
                      (_%g208809208819%_ _%g208810208822%_)))))
          (_%g208808208843%_ _%stx208807%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self208745%_ _%stx208746%_)
        (let* ((_%g208748208762%_
                (lambda (_%g208749208759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208749208759%_))))
               (_%g208747208803%_
                (lambda (_%g208749208765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208749208765%_))
                      (let ((_%e208752208767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208749208765%_))))
                        (let ((_%hd208753208770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208752208767%_)))
                              (_%tl208754208772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208752208767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208754208772%_))
                              (let ((_%e208755208775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208754208772%_))))
                                (let ((_%hd208756208778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208755208775%_)))
                                      (_%tl208757208780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208755208775%_))))
                                  ((lambda (_%L208783%_ _%L208784%_)
                                     (let* ((_%ctx208797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L208784%_)))
                                            (_%code208799%_
                                             (##structure-ref
                                              _%ctx208797%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp209414
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208745%_
                                                  _%code208799%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp209414
                                        gx#current-expander-context
                                        _%ctx208797%_)))
                                   _%tl208757208780%_
                                   _%hd208756208778%_)))
                              (_%g208748208762%_ _%g208749208765%_))))
                      (_%g208748208762%_ _%g208749208765%_)))))
          (_%g208747208803%_ _%stx208746%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self208550%_ _%stx208551%_)
        (letrec ((_%generate-e208553%_
                  (lambda (_%id208730%_)
                    (let* ((_%sym208732%_
                            (if (let ((__tmp209415
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp209415))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id208730%_))
                                '#f))
                           (_%$e208734%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym208732%_))))
                      (if _%$e208734%_
                          ((lambda (_%klass208737%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym208732%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym208732%_
                                                     (cons (let ((__method209389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass208737%_ 'typedecl))))
                     (if __method209389
                         (let ()
                           (declare (not safe))
                           (__method209389 _%klass208737%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass208737%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym208732%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym208732%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e208734%_)
                          (let ((_%$e208739%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym208732%_))))
                            (if _%$e208739%_
                                ((lambda (_%type208742%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym208732%_
                                      '" "
                                      _%type208742%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type208742%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym208732%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym208732%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type208742%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym208732%_
                                                   (cons (let ((__method209390
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type208742%_ 'typedecl))))
                   (if __method209390
                       (let ()
                         (declare (not safe))
                         (__method209390 _%type208742%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type208742%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e208739%_)
                                '(begin))))))))
          (let* ((_%__stx209001209002%_ _%stx208551%_)
                 (_%g208556208594%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209001209002%_)))))
            (let ((_%__kont209003209004%_
                   (lambda (_%L208712%_) (_%generate-e208553%_ _%L208712%_)))
                  (_%__kont209005209006%_
                   (lambda (_%L208647%_)
                     (let ((_%types208673%_
                            (map _%generate-e208553%_
                                 (let ((__tmp209416
                                        (lambda (_%g208665208668%_
                                                 _%g208666208670%_)
                                          (cons _%g208665208668%_
                                                _%g208666208670%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp209416 '() _%L208647%_)))))
                       (cons 'begin _%types208673%_)))))
              (let ((_%__match209056209057%_
                     (lambda (_%e208572208599%_
                              _%hd208573208602%_
                              _%tl208574208604%_
                              _%e208575208607%_
                              _%hd208576208610%_
                              _%tl208577208612%_
                              _%__splice209007209008%_
                              _%target208578208615%_
                              _%tl208580208617%_)
                       (letrec ((_%loop208581208620%_
                                 (lambda (_%hd208579208623%_
                                          _%id208585208625%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd208579208623%_))
                                       (let ((_%e208582208628%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208579208623%_))))
                                         (let ((_%lp-tl208584208633%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e208582208628%_)))
                                               (_%lp-hd208583208631%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e208582208628%_))))
                                           (_%loop208581208620%_
                                            _%lp-tl208584208633%_
                                            (cons _%lp-hd208583208631%_
                                                  _%id208585208625%_))))
                                       (let ((_%id208586208636%_
                                              (reverse _%id208585208625%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208577208612%_))
                                             (let ((_%e208587208639%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl208577208612%_))))
                                               (let ((_%tl208589208644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208587208639%_)))
                                                     (_%hd208588208642%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208587208639%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl208589208644%_))
                                                     (_%__kont209005209006%_
                                                      _%id208586208636%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g208556208594%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g208556208594%_))))))))
                         (_%loop208581208620%_ _%target208578208615%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx209001209002%_))
                    (let ((_%e208559208680%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx209001209002%_))))
                      (let ((_%tl208561208685%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208559208680%_)))
                            (_%hd208560208683%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208559208680%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208561208685%_))
                            (let ((_%e208562208688%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl208561208685%_))))
                              (let ((_%tl208564208693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208562208688%_)))
                                    (_%hd208563208691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208562208688%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd208563208691%_))
                                    (let ((_%e208565208696%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd208563208691%_))))
                                      (let ((_%tl208567208701%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e208565208696%_)))
                                            (_%hd208566208699%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e208565208696%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl208567208701%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208564208693%_))
                                                (let ((_%e208568208704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208564208693%_))))
                                                  (let ((_%tl208570208709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208568208704%_)))
                                                        (_%hd208569208707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208568208704%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208570208709%_))
                                                        (_%__kont209003209004%_
                                                         _%hd208566208699%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd208563208691%_))
                                                            (let ((_%__splice209007209008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd208563208691%_
                              '0))))
                      (let ((_%tl208580208617%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice209007209008%_ '1)))
                            (_%target208578208615%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice209007209008%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl208580208617%_))
                            (_%__match209056209057%_
                             _%e208559208680%_
                             _%hd208560208683%_
                             _%tl208561208685%_
                             _%e208562208688%_
                             _%hd208563208691%_
                             _%tl208564208693%_
                             _%__splice209007209008%_
                             _%target208578208615%_
                             _%tl208580208617%_)
                            (let ()
                              (declare (not safe))
                              (_%g208556208594%_)))))
                    (let () (declare (not safe)) (_%g208556208594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd208563208691%_))
                                                    (let ((_%__splice209007209008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd208563208691%_
                                                              '0))))
                                                      (let ((_%tl208580208617%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice209007209008%_ '1)))
                    (_%target208578208615%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice209007209008%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl208580208617%_))
                    (_%__match209056209057%_
                     _%e208559208680%_
                     _%hd208560208683%_
                     _%tl208561208685%_
                     _%e208562208688%_
                     _%hd208563208691%_
                     _%tl208564208693%_
                     _%__splice209007209008%_
                     _%target208578208615%_
                     _%tl208580208617%_)
                    (let () (declare (not safe)) (_%g208556208594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g208556208594%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd208563208691%_))
                                                (let ((_%__splice209007209008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd208563208691%_
                                                          '0))))
                                                  (let ((_%tl208580208617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice209007209008%_
                                                            '1)))
                                                        (_%target208578208615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice209007209008%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208580208617%_))
                                                        (_%__match209056209057%_
                                                         _%e208559208680%_
                                                         _%hd208560208683%_
                                                         _%tl208561208685%_
                                                         _%e208562208688%_
                                                         _%hd208563208691%_
                                                         _%tl208564208693%_
                                                         _%__splice209007209008%_
                                                         _%target208578208615%_
                                                         _%tl208580208617%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g208556208594%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208556208594%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd208563208691%_))
                                        (let ((_%__splice209007209008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd208563208691%_
                                                  '0))))
                                          (let ((_%tl208580208617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209007209008%_
                                                    '1)))
                                                (_%target208578208615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209007209008%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208580208617%_))
                                                (_%__match209056209057%_
                                                 _%e208559208680%_
                                                 _%hd208560208683%_
                                                 _%tl208561208685%_
                                                 _%e208562208688%_
                                                 _%hd208563208691%_
                                                 _%tl208564208693%_
                                                 _%__splice209007209008%_
                                                 _%target208578208615%_
                                                 _%tl208580208617%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208556208594%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g208556208594%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g208556208594%_)))))
                    (let () (declare (not safe)) (_%g208556208594%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self208103%_ _%stx208104%_)
        (let* ((_%__stx209059209060%_ _%stx208104%_)
               (_%g208108208210%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209059209060%_)))))
          (let ((_%__kont209061209062%_
                 (lambda (_%L208500%_
                          _%L208501%_
                          _%L208502%_
                          _%L208503%_
                          _%L208504%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208503%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208502%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208501%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L208500%_))
                                                 '())))))))
                (_%__kont209063209064%_
                 (lambda (_%L208326%_ _%L208327%_ _%L208328%_ _%L208329%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208328%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208327%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208326%_))
                                           (cons '#f '())))))))
                (_%__kont209065209066%_ (lambda () '(begin))))
            (let ((_%__match209194209195%_
                   (lambda (_%e208115208372%_
                            _%hd208116208375%_
                            _%tl208117208377%_
                            _%e208118208380%_
                            _%hd208119208383%_
                            _%tl208120208385%_
                            _%e208121208388%_
                            _%hd208122208391%_
                            _%tl208123208393%_
                            _%e208124208396%_
                            _%hd208125208399%_
                            _%tl208126208401%_
                            _%e208127208404%_
                            _%hd208128208407%_
                            _%tl208129208409%_
                            _%e208130208412%_
                            _%hd208131208415%_
                            _%tl208132208417%_
                            _%e208133208420%_
                            _%hd208134208423%_
                            _%tl208135208425%_
                            _%e208136208428%_
                            _%hd208137208431%_
                            _%tl208138208433%_
                            _%e208139208436%_
                            _%hd208140208439%_
                            _%tl208141208441%_
                            _%e208142208444%_
                            _%hd208143208447%_
                            _%tl208144208449%_
                            _%e208145208452%_
                            _%hd208146208455%_
                            _%tl208147208457%_
                            _%e208148208460%_
                            _%hd208149208463%_
                            _%tl208150208465%_
                            _%e208151208468%_
                            _%hd208152208471%_
                            _%tl208153208473%_
                            _%e208154208476%_
                            _%hd208155208479%_
                            _%tl208156208481%_
                            _%e208157208484%_
                            _%hd208158208487%_
                            _%tl208159208489%_
                            _%e208160208492%_
                            _%hd208161208495%_
                            _%tl208162208497%_)
                     (let ((_%L208500%_ _%hd208161208495%_)
                           (_%L208501%_ _%hd208152208471%_)
                           (_%L208502%_ _%hd208143208447%_)
                           (_%L208503%_ _%hd208134208423%_)
                           (_%L208504%_ _%hd208125208399%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L208504%_
                              'bind-method!))
                           (_%__kont209061209062%_
                            _%L208500%_
                            _%L208501%_
                            _%L208502%_
                            _%L208503%_
                            _%L208504%_)
                           (_%__kont209065209066%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209059209060%_))
                  (let ((_%e208115208372%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209059209060%_))))
                    (let ((_%tl208117208377%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208115208372%_)))
                          (_%hd208116208375%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208115208372%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208117208377%_))
                          (let ((_%e208118208380%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208117208377%_))))
                            (let ((_%tl208120208385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208118208380%_)))
                                  (_%hd208119208383%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208118208380%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208119208383%_))
                                  (let ((_%e208121208388%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208119208383%_))))
                                    (let ((_%tl208123208393%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208121208388%_)))
                                          (_%hd208122208391%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208121208388%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208122208391%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208122208391%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208123208393%_))
                                                  (let ((_%e208124208396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208123208393%_))))
                                                    (let ((_%tl208126208401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208124208396%_)))
                                                          (_%hd208125208399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208124208396%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208126208401%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl208120208385%_))
                      (let ((_%e208127208404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl208120208385%_))))
                        (let ((_%tl208129208409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208127208404%_)))
                              (_%hd208128208407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208127208404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd208128208407%_))
                              (let ((_%e208130208412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd208128208407%_))))
                                (let ((_%tl208132208417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208130208412%_)))
                                      (_%hd208131208415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208130208412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd208131208415%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd208131208415%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208132208417%_))
                                              (let ((_%e208133208420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl208132208417%_))))
                                                (let ((_%tl208135208425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208133208420%_)))
                                                      (_%hd208134208423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208133208420%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208135208425%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208129208409%_))
                                                          (let ((_%e208136208428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl208129208409%_))))
                    (let ((_%tl208138208433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208136208428%_)))
                          (_%hd208137208431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208136208428%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd208137208431%_))
                          (let ((_%e208139208436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd208137208431%_))))
                            (let ((_%tl208141208441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208139208436%_)))
                                  (_%hd208140208439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208139208436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd208140208439%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd208140208439%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208141208441%_))
                                          (let ((_%e208142208444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl208141208441%_))))
                                            (let ((_%tl208144208449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208142208444%_)))
                                                  (_%hd208143208447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208142208444%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl208144208449%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208138208433%_))
                                                      (let ((_%e208145208452%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl208138208433%_))))
                (let ((_%tl208147208457%_
                       (let () (declare (not safe)) (##cdr _%e208145208452%_)))
                      (_%hd208146208455%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208145208452%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd208146208455%_))
                      (let ((_%e208148208460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd208146208455%_))))
                        (let ((_%tl208150208465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208148208460%_)))
                              (_%hd208149208463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208148208460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd208149208463%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd208149208463%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208150208465%_))
                                      (let ((_%e208151208468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208150208465%_))))
                                        (let ((_%tl208153208473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208151208468%_)))
                                              (_%hd208152208471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208151208468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208153208473%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208147208457%_))
                                                  (let ((_%e208154208476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208147208457%_))))
                                                    (let ((_%tl208156208481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208154208476%_)))
                                                          (_%hd208155208479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208154208476%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd208155208479%_))
                                                          (let ((_%e208157208484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd208155208479%_))))
                    (let ((_%tl208159208489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208157208484%_)))
                          (_%hd208158208487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208157208484%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd208158208487%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd208158208487%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl208159208489%_))
                                  (let ((_%e208160208492%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl208159208489%_))))
                                    (let ((_%tl208162208497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208160208492%_)))
                                          (_%hd208161208495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208160208492%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl208162208497%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208156208481%_))
                                              (_%__match209194209195%_
                                               _%e208115208372%_
                                               _%hd208116208375%_
                                               _%tl208117208377%_
                                               _%e208118208380%_
                                               _%hd208119208383%_
                                               _%tl208120208385%_
                                               _%e208121208388%_
                                               _%hd208122208391%_
                                               _%tl208123208393%_
                                               _%e208124208396%_
                                               _%hd208125208399%_
                                               _%tl208126208401%_
                                               _%e208127208404%_
                                               _%hd208128208407%_
                                               _%tl208129208409%_
                                               _%e208130208412%_
                                               _%hd208131208415%_
                                               _%tl208132208417%_
                                               _%e208133208420%_
                                               _%hd208134208423%_
                                               _%tl208135208425%_
                                               _%e208136208428%_
                                               _%hd208137208431%_
                                               _%tl208138208433%_
                                               _%e208139208436%_
                                               _%hd208140208439%_
                                               _%tl208141208441%_
                                               _%e208142208444%_
                                               _%hd208143208447%_
                                               _%tl208144208449%_
                                               _%e208145208452%_
                                               _%hd208146208455%_
                                               _%tl208147208457%_
                                               _%e208148208460%_
                                               _%hd208149208463%_
                                               _%tl208150208465%_
                                               _%e208151208468%_
                                               _%hd208152208471%_
                                               _%tl208153208473%_
                                               _%e208154208476%_
                                               _%hd208155208479%_
                                               _%tl208156208481%_
                                               _%e208157208484%_
                                               _%hd208158208487%_
                                               _%tl208159208489%_
                                               _%e208160208492%_
                                               _%hd208161208495%_
                                               _%tl208162208497%_)
                                              (_%__kont209065209066%_))
                                          (_%__kont209065209066%_))))
                                  (_%__kont209065209066%_))
                              (_%__kont209065209066%_))
                          (_%__kont209065209066%_))))
                  (_%__kont209065209066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208147208457%_))
                                                      (if (let ((__tmp209417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp209417 'bind-method!))
                  (let ((_%L208326%_ _%hd208152208471%_)
                        (_%L208327%_ _%hd208143208447%_)
                        (_%L208328%_ _%hd208134208423%_)
                        (_%L208329%_ _%hd208125208399%_))
                    (_%__kont209063209064%_
                     _%L208326%_
                     _%L208327%_
                     _%L208328%_
                     _%L208329%_))
                  (_%__kont209065209066%_))
              (_%__kont209065209066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209065209066%_))))
                                      (_%__kont209065209066%_))
                                  (_%__kont209065209066%_))
                              (_%__kont209065209066%_))))
                      (_%__kont209065209066%_))))
              (_%__kont209065209066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209065209066%_))))
                                          (_%__kont209065209066%_))
                                      (_%__kont209065209066%_))
                                  (_%__kont209065209066%_))))
                          (_%__kont209065209066%_))))
                  (_%__kont209065209066%_))
              (_%__kont209065209066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209065209066%_))
                                          (_%__kont209065209066%_))
                                      (_%__kont209065209066%_))))
                              (_%__kont209065209066%_))))
                      (_%__kont209065209066%_))
                  (_%__kont209065209066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209065209066%_))
                                              (_%__kont209065209066%_))
                                          (_%__kont209065209066%_))))
                                  (_%__kont209065209066%_))))
                          (_%__kont209065209066%_))))
                  (_%__kont209065209066%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self207927%_ _%stx207928%_)
        (let* ((_%__stx209303209304%_ _%stx207928%_)
               (_%g207931207971%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209303209304%_)))))
          (let ((_%__kont209305209306%_
                 (lambda (_%L208077%_ _%L208078%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208078%_))
                               (cons _%L208077%_ '())))))
                (_%__kont209307209308%_
                 (lambda (_%L208000%_ _%L208001%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209303209304%_))
                (let ((_%e207935208021%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx209303209304%_))))
                  (let ((_%tl207937208026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207935208021%_)))
                        (_%hd207936208024%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207935208021%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207937208026%_))
                        (let ((_%e207938208029%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl207937208026%_))))
                          (let ((_%tl207940208034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207938208029%_)))
                                (_%hd207939208032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207938208029%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd207939208032%_))
                                (let ((_%e207941208037%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207939208032%_))))
                                  (let ((_%tl207943208042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207941208037%_)))
                                        (_%hd207942208040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207941208037%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd207942208040%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd207942208040%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207943208042%_))
                                                (let ((_%e207944208045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207943208042%_))))
                                                  (let ((_%tl207946208050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207944208045%_)))
                                                        (_%hd207945208048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207944208045%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207946208050%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl207940208034%_))
                                                            (let ((_%e207947208053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207940208034%_))))
                      (let ((_%tl207949208058%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207947208053%_)))
                            (_%hd207948208056%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207947208053%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd207948208056%_))
                            (let ((_%e207950208061%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd207948208056%_))))
                              (let ((_%tl207952208066%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207950208061%_)))
                                    (_%hd207951208064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207950208061%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd207951208064%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd207951208064%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207952208066%_))
                                            (let ((_%e207953208069%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207952208066%_))))
                                              (let ((_%tl207955208074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207953208069%_)))
                                                    (_%hd207954208072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207953208069%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207955208074%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207949208058%_))
                                                        (_%__kont209305209306%_
                                                         _%hd207954208072%_
                                                         _%hd207945208048%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207931207971%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207949208058%_))
                                                        (_%__kont209307209308%_
                                                         _%hd207948208056%_
                                                         _%hd207939208032%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207931207971%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207949208058%_))
                                                (_%__kont209307209308%_
                                                 _%hd207948208056%_
                                                 _%hd207939208032%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207931207971%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207949208058%_))
                                            (_%__kont209307209308%_
                                             _%hd207948208056%_
                                             _%hd207939208032%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207931207971%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207949208058%_))
                                        (_%__kont209307209308%_
                                         _%hd207948208056%_
                                         _%hd207939208032%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g207931207971%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207949208058%_))
                                (_%__kont209307209308%_
                                 _%hd207948208056%_
                                 _%hd207939208032%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207931207971%_))))))
                    (let () (declare (not safe)) (_%g207931207971%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl207940208034%_))
                    (let ((_%e207964207992%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207940208034%_))))
                      (let ((_%tl207966207997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207964207992%_)))
                            (_%hd207965207995%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207964207992%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl207966207997%_))
                            (_%__kont209307209308%_
                             _%hd207965207995%_
                             _%hd207939208032%_)
                            (let ()
                              (declare (not safe))
                              (_%g207931207971%_)))))
                    (let () (declare (not safe)) (_%g207931207971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl207940208034%_))
                                                    (let ((_%e207964207992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl207940208034%_))))
                                                      (let ((_%tl207966207997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e207964207992%_)))
                    (_%hd207965207995%_
                     (let () (declare (not safe)) (##car _%e207964207992%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl207966207997%_))
                    (_%__kont209307209308%_
                     _%hd207965207995%_
                     _%hd207939208032%_)
                    (let () (declare (not safe)) (_%g207931207971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207931207971%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207940208034%_))
                                                (let ((_%e207964207992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207940208034%_))))
                                                  (let ((_%tl207966207997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207964207992%_)))
                                                        (_%hd207965207995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207964207992%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207966207997%_))
                                                        (_%__kont209307209308%_
                                                         _%hd207965207995%_
                                                         _%hd207939208032%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207931207971%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207931207971%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207940208034%_))
                                            (let ((_%e207964207992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207940208034%_))))
                                              (let ((_%tl207966207997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207964207992%_)))
                                                    (_%hd207965207995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207964207992%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207966207997%_))
                                                    (_%__kont209307209308%_
                                                     _%hd207965207995%_
                                                     _%hd207939208032%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207931207971%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g207931207971%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl207940208034%_))
                                    (let ((_%e207964207992%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl207940208034%_))))
                                      (let ((_%tl207966207997%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e207964207992%_)))
                                            (_%hd207965207995%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e207964207992%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207966207997%_))
                                            (_%__kont209307209308%_
                                             _%hd207965207995%_
                                             _%hd207939208032%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207931207971%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207931207971%_))))))
                        (let () (declare (not safe)) (_%g207931207971%_)))))
                (let () (declare (not safe)) (_%g207931207971%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self207914%_)
        (let ((_%self207917%_ _%self207914%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207917%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self207687%_)
        (let* ((_%self207690%_ _%self207687%_)
               (_%self207699207715%_ _%self207690%_)
               (_%E207701207719%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self207699207715%_
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
               (_%K207702207734%_
                (lambda (_%methods207722%_
                         _%metaclass207723%_
                         _%system?207724%_
                         _%final?207725%_
                         _%struct?207726%_
                         _%constructor207727%_
                         _%fields207728%_
                         _%slots207729%_
                         _%precendence-list207730%_
                         _%super207731%_
                         _%id207732%_)
                  (cons '@class
                        (cons _%id207732%_
                              (cons _%super207731%_
                                    (cons _%precendence-list207730%_
                                          (cons _%slots207729%_
                                                (cons _%fields207728%_
                                                      (cons _%constructor207727%_
                                                            (cons _%struct?207726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?207725%_
                                (cons _%system?207724%_
                                      (cons _%metaclass207723%_
                                            (cons (if _%methods207722%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods207722%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e207703207737%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '1 '#f '#f)))
               (_%id207740%_ _%e207703207737%_)
               (_%e207704207742%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '2 '#f '#f)))
               (_%super207745%_ _%e207704207742%_)
               (_%e207705207747%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '3 '#f '#f)))
               (_%precendence-list207750%_ _%e207705207747%_)
               (_%e207706207752%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '4 '#f '#f)))
               (_%slots207755%_ _%e207706207752%_)
               (_%e207707207757%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '5 '#f '#f)))
               (_%fields207760%_ _%e207707207757%_)
               (_%e207708207762%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '6 '#f '#f)))
               (_%constructor207765%_ _%e207708207762%_)
               (_%e207709207767%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '7 '#f '#f)))
               (_%struct?207770%_ _%e207709207767%_)
               (_%e207710207772%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '8 '#f '#f)))
               (_%final?207775%_ _%e207710207772%_)
               (_%e207711207777%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207699207715%_ '9 '#f '#f)))
               (_%system?207780%_ _%e207711207777%_)
               (_%e207712207782%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207699207715%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass207785%_ _%e207712207782%_)
               (_%e207713207787%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207699207715%_
                   '11
                   '#f
                   '#f)))
               (_%methods207790%_ _%e207713207787%_))
          (_%K207702207734%_
           _%methods207790%_
           _%metaclass207785%_
           _%system?207780%_
           _%final?207775%_
           _%struct?207770%_
           _%constructor207765%_
           _%fields207760%_
           _%slots207755%_
           _%precendence-list207750%_
           _%super207745%_
           _%id207740%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self207552%_)
        (let ((_%self207555%_ _%self207552%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207555%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self207417%_)
        (let ((_%self207420%_ _%self207417%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207420%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self207282%_)
        (let ((_%self207285%_ _%self207282%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207285%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207285%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self207285%_
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
      (lambda (_%self207147%_)
        (let ((_%self207150%_ _%self207147%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207150%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207150%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self207150%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self207012%_)
        (let ((_%self207015%_ _%self207012%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207015%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207015%_
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
      (lambda (_%self206825%_)
        (let* ((_%self206828%_ _%self206825%_)
               (_%self206837206846%_ _%self206828%_)
               (_%E206839206850%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206837206846%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K206840206869%_
                (lambda (_%dispatch206853%_
                         _%arity206854%_
                         _%signature206855%_)
                  (if _%signature206855%_
                      (let ((_%signature206857%_ _%signature206855%_))
                        (cons '@lambda
                              (cons _%arity206854%_
                                    (cons _%dispatch206853%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature206857%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature206857%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature206857%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature206857%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature206857%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity206854%_
                                  (cons _%dispatch206853%_ '()))))))
               (_%e206841206872%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206837206846%_ '1 '#f '#f)))
               (_%e206842206875%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206837206846%_ '2 '#f '#f)))
               (_%signature206878%_ _%e206842206875%_)
               (_%e206843206880%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206837206846%_ '3 '#f '#f)))
               (_%arity206883%_ _%e206843206880%_)
               (_%e206844206885%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206837206846%_ '4 '#f '#f)))
               (_%dispatch206888%_ _%e206844206885%_))
          (_%K206840206869%_
           _%dispatch206888%_
           _%arity206883%_
           _%signature206878%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self206685%_)
        (let ((_%self206688%_ _%self206685%_))
          (letrec ((_%clause-e206699%_
                    (lambda (_%clause206701%_)
                      (cdr (let ((__method209391
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause206701%_
                                     'typedecl))))
                             (if __method209391
                                 (let ()
                                   (declare (not safe))
                                   (__method209391 _%clause206701%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause206701%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e206699%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206688%_
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
      (lambda (_%self206550%_)
        (let ((_%self206553%_ _%self206550%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206553%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206553%_
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
      (lambda (_%self206415%_)
        (let ((_%self206418%_ _%self206415%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206418%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206418%_
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
      (lambda (_%self206280%_)
        (let ((_%self206283%_ _%self206280%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206283%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
