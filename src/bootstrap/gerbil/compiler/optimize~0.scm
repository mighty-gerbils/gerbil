(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1756715360)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp209394
                   (let ((__obj209388
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
                       (gxc#optimizer-info:::init! __obj209388))
                     __obj209388)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp209394)))))
    (define gxc#optimize!
      (lambda (_%ctx208996%_)
        (let ((__tmp209396
               (lambda ()
                 (let ((__tmp209398
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx208996%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx208996%_)
                          (let ((__tmp209400
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp209399
                                 (##structure-ref
                                  _%ctx208996%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp209400 __tmp209399 '#t))
                          (let ((_%code209000%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx208996%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx208996%_
                             _%code209000%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp209397
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp209398
                    gxc#current-compile-local-type
                    __tmp209397))))
              (__tmp209395 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209396
           gxc#current-compile-mutators
           __tmp209395))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx208982%_)
        (letrec ((_%load-it!208984%_
                  (lambda (_%id208994%_)
                    (if (let ((__tmp209401
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp209401 _%id208994%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id208994%_)
                          (let ((__tmp209402
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp209402 _%id208994%_ '#t)))))))
          (let* ((_%modid208986%_
                  (##structure-ref
                   _%ctx208982%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str208988%_ (symbol->string _%modid208986%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str208988%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str208988%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208984%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208984%_
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
      (lambda (_%ctx208919%_)
        (letrec* ((_%deps208921%_
                   (let* ((_%imports208972%_
                           (##structure-ref
                            _%ctx208919%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e208974%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx208919%_))))
                     (if _%$e208974%_
                         ((lambda (_%g208976208978%_)
                            (cons _%g208976208978%_ _%imports208972%_))
                          _%$e208974%_)
                         _%imports208972%_))))
          (let _%lp208923%_ ((_%rest208925%_ _%deps208921%_))
            (let* ((_%rest208926208934%_ _%rest208925%_)
                   (_%else208928208942%_ (lambda () '#!void))
                   (_%K208930208960%_
                    (lambda (_%rest208945%_ _%hd208946%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd208946%_
                             'gx#module-context::t))
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
                                          _%hd208946%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp209404 __tmp209403))
                                '#!void
                                (begin
                                  (let ((_%$e208949%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd208946%_))))
                                    (if _%$e208949%_
                                        ((lambda (_%pre208952%_)
                                           (_%lp208923%_
                                            (cons _%pre208952%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd208946%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e208949%_)
                                        (_%lp208923%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208946%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd208946%_)))
                            (_%lp208923%_ _%rest208945%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd208946%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp209406
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp209405
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd208946%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp209406 __tmp209405))
                                    '#!void
                                    (begin
                                      (_%lp208923%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208946%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd208946%_)))
                                (_%lp208923%_ _%rest208945%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd208946%_
                                     'gx#module-import::t))
                                  (_%lp208923%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208946%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest208945%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd208946%_
                                         'gx#module-export::t))
                                      (_%lp208923%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd208946%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest208945%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd208946%_
                                             'gx#import-set::t))
                                          (_%lp208923%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd208946%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest208945%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd208946%_))))))))))
              (if (pair? _%rest208926208934%_)
                  (let ((_%hd208931208963%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208926208934%_)))
                        (_%tl208932208965%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208926208934%_))))
                    (let* ((_%hd208968%_ _%hd208931208963%_)
                           (_%rest208970%_ _%tl208932208965%_))
                      (_%K208930208960%_ _%rest208970%_ _%hd208968%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx208899%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx208899%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx208899%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht208901%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id208903%_
                    (##structure-ref
                     _%ctx208899%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod208905%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht208901%_ _%id208903%_)))
                   (_%$e208908%_ _%mod208905%_))
              (if _%$e208908%_
                  _%$e208908%_
                  (let* ((_%mod208911%_
                          (gxc#optimizer-import-ssxi _%ctx208899%_))
                         (_%val208916%_
                          (let ((_%$e208913%_ _%mod208911%_))
                            (if _%$e208913%_ _%$e208913%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht208901%_ _%id208903%_ _%val208916%_))
                    _%val208916%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx208897%_)
        (if (##structure-ref _%ctx208897%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx208897%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id208874%_)
        (letrec ((_%catch-e208876%_
                  (lambda (_%exn208895%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn208895%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn208895%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id208874%_))))
                    '#f))
                 (_%import-e208877%_
                  (lambda ()
                    (let* ((_%str-id208880%_
                            (let ((__tmp209407
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id208874%_))))
                              (declare (not safe))
                              (##string-append __tmp209407 '".ssxi")))
                           (_%artefact-path208888%_
                            (let ((_%odir208881208883%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir208881208883%_
                                  (let ((_%odir208886%_ _%odir208881208883%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id208880%_
                                        '".ss"))
                                     _%odir208886%_))
                                  '#f)))
                           (_%library-path208890%_
                            (let ((__tmp209408
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id208880%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp209408)))
                           (_%ssxi-path208892%_
                            (if (and _%artefact-path208888%_
                                     (file-exists? _%artefact-path208888%_))
                                _%artefact-path208888%_
                                _%library-path208890%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path208892%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path208892%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e208876%_ _%import-e208877%_)))))
    (define gxc#optimize-source
      (lambda (_%stx208859%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx208859%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx208859%_))
        (let* ((_%stx208861%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx208859%_)))
               (_%stx208863%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx208861%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx208863%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx208863%_))
          (let _%fixpoint208866%_ ((_%current208868%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx208863%_))
            (let ((_%refined208870%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current208868%_ _%refined208870%_)
                  '#!void
                  (_%fixpoint208866%_ _%refined208870%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx208863%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx208863%_))
          (let ((_%stx208872%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx208863%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx208872%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp209410 (list gxc#::generate-runtime-empty::t))
            (__tmp209409 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp209410
         '()
         __tmp209409
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args208856%_
        (apply make-instance gxc#::generate-ssxi::t _%$args208856%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp209411
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
        (__make-atomic-promise __tmp209411)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx208848%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self208851%_
                (let ((__obj209390
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj209390))
               (__tmp209412
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208851%_ _%stx208848%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209412
           gxc#current-compile-method
           _%self208851%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self208808%_ _%stx208809%_)
        (let* ((_%g208811208821%_
                (lambda (_%g208812208818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208812208818%_))))
               (_%g208810208845%_
                (lambda (_%g208812208824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208812208824%_))
                      (let ((_%e208814208826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208812208824%_))))
                        (let ((_%hd208815208829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208814208826%_)))
                              (_%tl208816208831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208814208826%_))))
                          ((lambda (_%L208834%_)
                             (let ((__tmp209415
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self208808%_
                                         _%stx208809%_))))
                                   (__tmp209413
                                    (let ((__tmp209414
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp209414 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp209415
                                gx#current-expander-phi
                                __tmp209413)))
                           _%tl208816208831%_)))
                      (_%g208811208821%_ _%g208812208824%_)))))
          (_%g208810208845%_ _%stx208809%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self208747%_ _%stx208748%_)
        (let* ((_%g208750208764%_
                (lambda (_%g208751208761%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208751208761%_))))
               (_%g208749208805%_
                (lambda (_%g208751208767%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208751208767%_))
                      (let ((_%e208754208769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208751208767%_))))
                        (let ((_%hd208755208772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208754208769%_)))
                              (_%tl208756208774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208754208769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208756208774%_))
                              (let ((_%e208757208777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208756208774%_))))
                                (let ((_%hd208758208780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208757208777%_)))
                                      (_%tl208759208782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208757208777%_))))
                                  ((lambda (_%L208785%_ _%L208786%_)
                                     (let* ((_%ctx208799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L208786%_)))
                                            (_%code208801%_
                                             (##structure-ref
                                              _%ctx208799%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp209416
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208747%_
                                                  _%code208801%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp209416
                                        gx#current-expander-context
                                        _%ctx208799%_)))
                                   _%tl208759208782%_
                                   _%hd208758208780%_)))
                              (_%g208750208764%_ _%g208751208767%_))))
                      (_%g208750208764%_ _%g208751208767%_)))))
          (_%g208749208805%_ _%stx208748%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self208552%_ _%stx208553%_)
        (letrec ((_%generate-e208555%_
                  (lambda (_%id208732%_)
                    (let* ((_%sym208734%_
                            (if (let ((__tmp209417
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp209417))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id208732%_))
                                '#f))
                           (_%$e208736%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym208734%_))))
                      (if _%$e208736%_
                          ((lambda (_%klass208739%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym208734%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym208734%_
                                                     (cons (let ((__method209391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass208739%_ 'typedecl))))
                     (if __method209391
                         (let ()
                           (declare (not safe))
                           (__method209391 _%klass208739%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass208739%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym208734%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym208734%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e208736%_)
                          (let ((_%$e208741%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym208734%_))))
                            (if _%$e208741%_
                                ((lambda (_%type208744%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym208734%_
                                      '" "
                                      _%type208744%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type208744%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym208734%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym208734%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type208744%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym208734%_
                                                   (cons (let ((__method209392
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type208744%_ 'typedecl))))
                   (if __method209392
                       (let ()
                         (declare (not safe))
                         (__method209392 _%type208744%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type208744%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e208741%_)
                                '(begin))))))))
          (let* ((_%__stx209003209004%_ _%stx208553%_)
                 (_%g208558208596%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209003209004%_)))))
            (let ((_%__kont209005209006%_
                   (lambda (_%L208714%_) (_%generate-e208555%_ _%L208714%_)))
                  (_%__kont209007209008%_
                   (lambda (_%L208649%_)
                     (let ((_%types208675%_
                            (map _%generate-e208555%_
                                 (let ((__tmp209418
                                        (lambda (_%g208667208670%_
                                                 _%g208668208672%_)
                                          (cons _%g208667208670%_
                                                _%g208668208672%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp209418 '() _%L208649%_)))))
                       (cons 'begin _%types208675%_)))))
              (let ((_%__match209058209059%_
                     (lambda (_%e208574208601%_
                              _%hd208575208604%_
                              _%tl208576208606%_
                              _%e208577208609%_
                              _%hd208578208612%_
                              _%tl208579208614%_
                              _%__splice209009209010%_
                              _%target208580208617%_
                              _%tl208582208619%_)
                       (letrec ((_%loop208583208622%_
                                 (lambda (_%hd208581208625%_
                                          _%id208587208627%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd208581208625%_))
                                       (let ((_%e208584208630%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208581208625%_))))
                                         (let ((_%lp-tl208586208635%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e208584208630%_)))
                                               (_%lp-hd208585208633%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e208584208630%_))))
                                           (_%loop208583208622%_
                                            _%lp-tl208586208635%_
                                            (cons _%lp-hd208585208633%_
                                                  _%id208587208627%_))))
                                       (let ((_%id208588208638%_
                                              (reverse _%id208587208627%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208579208614%_))
                                             (let ((_%e208589208641%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl208579208614%_))))
                                               (let ((_%tl208591208646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208589208641%_)))
                                                     (_%hd208590208644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208589208641%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl208591208646%_))
                                                     (_%__kont209007209008%_
                                                      _%id208588208638%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g208558208596%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g208558208596%_))))))))
                         (_%loop208583208622%_ _%target208580208617%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx209003209004%_))
                    (let ((_%e208561208682%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx209003209004%_))))
                      (let ((_%tl208563208687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208561208682%_)))
                            (_%hd208562208685%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208561208682%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208563208687%_))
                            (let ((_%e208564208690%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl208563208687%_))))
                              (let ((_%tl208566208695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208564208690%_)))
                                    (_%hd208565208693%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208564208690%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd208565208693%_))
                                    (let ((_%e208567208698%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd208565208693%_))))
                                      (let ((_%tl208569208703%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e208567208698%_)))
                                            (_%hd208568208701%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e208567208698%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl208569208703%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208566208695%_))
                                                (let ((_%e208570208706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208566208695%_))))
                                                  (let ((_%tl208572208711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208570208706%_)))
                                                        (_%hd208571208709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208570208706%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208572208711%_))
                                                        (_%__kont209005209006%_
                                                         _%hd208568208701%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd208565208693%_))
                                                            (let ((_%__splice209009209010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd208565208693%_
                              '0))))
                      (let ((_%tl208582208619%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice209009209010%_ '1)))
                            (_%target208580208617%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice209009209010%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl208582208619%_))
                            (_%__match209058209059%_
                             _%e208561208682%_
                             _%hd208562208685%_
                             _%tl208563208687%_
                             _%e208564208690%_
                             _%hd208565208693%_
                             _%tl208566208695%_
                             _%__splice209009209010%_
                             _%target208580208617%_
                             _%tl208582208619%_)
                            (let ()
                              (declare (not safe))
                              (_%g208558208596%_)))))
                    (let () (declare (not safe)) (_%g208558208596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd208565208693%_))
                                                    (let ((_%__splice209009209010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd208565208693%_
                                                              '0))))
                                                      (let ((_%tl208582208619%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice209009209010%_ '1)))
                    (_%target208580208617%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice209009209010%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl208582208619%_))
                    (_%__match209058209059%_
                     _%e208561208682%_
                     _%hd208562208685%_
                     _%tl208563208687%_
                     _%e208564208690%_
                     _%hd208565208693%_
                     _%tl208566208695%_
                     _%__splice209009209010%_
                     _%target208580208617%_
                     _%tl208582208619%_)
                    (let () (declare (not safe)) (_%g208558208596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g208558208596%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd208565208693%_))
                                                (let ((_%__splice209009209010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd208565208693%_
                                                          '0))))
                                                  (let ((_%tl208582208619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice209009209010%_
                                                            '1)))
                                                        (_%target208580208617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice209009209010%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208582208619%_))
                                                        (_%__match209058209059%_
                                                         _%e208561208682%_
                                                         _%hd208562208685%_
                                                         _%tl208563208687%_
                                                         _%e208564208690%_
                                                         _%hd208565208693%_
                                                         _%tl208566208695%_
                                                         _%__splice209009209010%_
                                                         _%target208580208617%_
                                                         _%tl208582208619%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g208558208596%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208558208596%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd208565208693%_))
                                        (let ((_%__splice209009209010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd208565208693%_
                                                  '0))))
                                          (let ((_%tl208582208619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209009209010%_
                                                    '1)))
                                                (_%target208580208617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice209009209010%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208582208619%_))
                                                (_%__match209058209059%_
                                                 _%e208561208682%_
                                                 _%hd208562208685%_
                                                 _%tl208563208687%_
                                                 _%e208564208690%_
                                                 _%hd208565208693%_
                                                 _%tl208566208695%_
                                                 _%__splice209009209010%_
                                                 _%target208580208617%_
                                                 _%tl208582208619%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208558208596%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g208558208596%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g208558208596%_)))))
                    (let () (declare (not safe)) (_%g208558208596%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self208105%_ _%stx208106%_)
        (let* ((_%__stx209061209062%_ _%stx208106%_)
               (_%g208110208212%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209061209062%_)))))
          (let ((_%__kont209063209064%_
                 (lambda (_%L208502%_
                          _%L208503%_
                          _%L208504%_
                          _%L208505%_
                          _%L208506%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208505%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208504%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208503%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L208502%_))
                                                 '())))))))
                (_%__kont209065209066%_
                 (lambda (_%L208328%_ _%L208329%_ _%L208330%_ _%L208331%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208330%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208329%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208328%_))
                                           (cons '#f '())))))))
                (_%__kont209067209068%_ (lambda () '(begin))))
            (let ((_%__match209196209197%_
                   (lambda (_%e208117208374%_
                            _%hd208118208377%_
                            _%tl208119208379%_
                            _%e208120208382%_
                            _%hd208121208385%_
                            _%tl208122208387%_
                            _%e208123208390%_
                            _%hd208124208393%_
                            _%tl208125208395%_
                            _%e208126208398%_
                            _%hd208127208401%_
                            _%tl208128208403%_
                            _%e208129208406%_
                            _%hd208130208409%_
                            _%tl208131208411%_
                            _%e208132208414%_
                            _%hd208133208417%_
                            _%tl208134208419%_
                            _%e208135208422%_
                            _%hd208136208425%_
                            _%tl208137208427%_
                            _%e208138208430%_
                            _%hd208139208433%_
                            _%tl208140208435%_
                            _%e208141208438%_
                            _%hd208142208441%_
                            _%tl208143208443%_
                            _%e208144208446%_
                            _%hd208145208449%_
                            _%tl208146208451%_
                            _%e208147208454%_
                            _%hd208148208457%_
                            _%tl208149208459%_
                            _%e208150208462%_
                            _%hd208151208465%_
                            _%tl208152208467%_
                            _%e208153208470%_
                            _%hd208154208473%_
                            _%tl208155208475%_
                            _%e208156208478%_
                            _%hd208157208481%_
                            _%tl208158208483%_
                            _%e208159208486%_
                            _%hd208160208489%_
                            _%tl208161208491%_
                            _%e208162208494%_
                            _%hd208163208497%_
                            _%tl208164208499%_)
                     (let ((_%L208502%_ _%hd208163208497%_)
                           (_%L208503%_ _%hd208154208473%_)
                           (_%L208504%_ _%hd208145208449%_)
                           (_%L208505%_ _%hd208136208425%_)
                           (_%L208506%_ _%hd208127208401%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L208506%_
                              'bind-method!))
                           (_%__kont209063209064%_
                            _%L208502%_
                            _%L208503%_
                            _%L208504%_
                            _%L208505%_
                            _%L208506%_)
                           (_%__kont209067209068%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209061209062%_))
                  (let ((_%e208117208374%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx209061209062%_))))
                    (let ((_%tl208119208379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208117208374%_)))
                          (_%hd208118208377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208117208374%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl208119208379%_))
                          (let ((_%e208120208382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl208119208379%_))))
                            (let ((_%tl208122208387%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208120208382%_)))
                                  (_%hd208121208385%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208120208382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd208121208385%_))
                                  (let ((_%e208123208390%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd208121208385%_))))
                                    (let ((_%tl208125208395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208123208390%_)))
                                          (_%hd208124208393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208123208390%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd208124208393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd208124208393%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208125208395%_))
                                                  (let ((_%e208126208398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208125208395%_))))
                                                    (let ((_%tl208128208403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208126208398%_)))
                                                          (_%hd208127208401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208126208398%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl208128208403%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl208122208387%_))
                      (let ((_%e208129208406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl208122208387%_))))
                        (let ((_%tl208131208411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208129208406%_)))
                              (_%hd208130208409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208129208406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd208130208409%_))
                              (let ((_%e208132208414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd208130208409%_))))
                                (let ((_%tl208134208419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208132208414%_)))
                                      (_%hd208133208417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208132208414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd208133208417%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd208133208417%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl208134208419%_))
                                              (let ((_%e208135208422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl208134208419%_))))
                                                (let ((_%tl208137208427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e208135208422%_)))
                                                      (_%hd208136208425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e208135208422%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208137208427%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl208131208411%_))
                                                          (let ((_%e208138208430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl208131208411%_))))
                    (let ((_%tl208140208435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208138208430%_)))
                          (_%hd208139208433%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208138208430%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd208139208433%_))
                          (let ((_%e208141208438%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd208139208433%_))))
                            (let ((_%tl208143208443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e208141208438%_)))
                                  (_%hd208142208441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e208141208438%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd208142208441%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd208142208441%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl208143208443%_))
                                          (let ((_%e208144208446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl208143208443%_))))
                                            (let ((_%tl208146208451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e208144208446%_)))
                                                  (_%hd208145208449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e208144208446%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl208146208451%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl208140208435%_))
                                                      (let ((_%e208147208454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl208140208435%_))))
                (let ((_%tl208149208459%_
                       (let () (declare (not safe)) (##cdr _%e208147208454%_)))
                      (_%hd208148208457%_
                       (let ()
                         (declare (not safe))
                         (##car _%e208147208454%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd208148208457%_))
                      (let ((_%e208150208462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd208148208457%_))))
                        (let ((_%tl208152208467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208150208462%_)))
                              (_%hd208151208465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208150208462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd208151208465%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd208151208465%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208152208467%_))
                                      (let ((_%e208153208470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208152208467%_))))
                                        (let ((_%tl208155208475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208153208470%_)))
                                              (_%hd208154208473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208153208470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208155208475%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl208149208459%_))
                                                  (let ((_%e208156208478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl208149208459%_))))
                                                    (let ((_%tl208158208483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e208156208478%_)))
                                                          (_%hd208157208481%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e208156208478%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd208157208481%_))
                                                          (let ((_%e208159208486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd208157208481%_))))
                    (let ((_%tl208161208491%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e208159208486%_)))
                          (_%hd208160208489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e208159208486%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd208160208489%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd208160208489%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl208161208491%_))
                                  (let ((_%e208162208494%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl208161208491%_))))
                                    (let ((_%tl208164208499%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e208162208494%_)))
                                          (_%hd208163208497%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e208162208494%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl208164208499%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208158208483%_))
                                              (_%__match209196209197%_
                                               _%e208117208374%_
                                               _%hd208118208377%_
                                               _%tl208119208379%_
                                               _%e208120208382%_
                                               _%hd208121208385%_
                                               _%tl208122208387%_
                                               _%e208123208390%_
                                               _%hd208124208393%_
                                               _%tl208125208395%_
                                               _%e208126208398%_
                                               _%hd208127208401%_
                                               _%tl208128208403%_
                                               _%e208129208406%_
                                               _%hd208130208409%_
                                               _%tl208131208411%_
                                               _%e208132208414%_
                                               _%hd208133208417%_
                                               _%tl208134208419%_
                                               _%e208135208422%_
                                               _%hd208136208425%_
                                               _%tl208137208427%_
                                               _%e208138208430%_
                                               _%hd208139208433%_
                                               _%tl208140208435%_
                                               _%e208141208438%_
                                               _%hd208142208441%_
                                               _%tl208143208443%_
                                               _%e208144208446%_
                                               _%hd208145208449%_
                                               _%tl208146208451%_
                                               _%e208147208454%_
                                               _%hd208148208457%_
                                               _%tl208149208459%_
                                               _%e208150208462%_
                                               _%hd208151208465%_
                                               _%tl208152208467%_
                                               _%e208153208470%_
                                               _%hd208154208473%_
                                               _%tl208155208475%_
                                               _%e208156208478%_
                                               _%hd208157208481%_
                                               _%tl208158208483%_
                                               _%e208159208486%_
                                               _%hd208160208489%_
                                               _%tl208161208491%_
                                               _%e208162208494%_
                                               _%hd208163208497%_
                                               _%tl208164208499%_)
                                              (_%__kont209067209068%_))
                                          (_%__kont209067209068%_))))
                                  (_%__kont209067209068%_))
                              (_%__kont209067209068%_))
                          (_%__kont209067209068%_))))
                  (_%__kont209067209068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl208149208459%_))
                                                      (if (let ((__tmp209419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp209419 'bind-method!))
                  (let ((_%L208328%_ _%hd208154208473%_)
                        (_%L208329%_ _%hd208145208449%_)
                        (_%L208330%_ _%hd208136208425%_)
                        (_%L208331%_ _%hd208127208401%_))
                    (_%__kont209065209066%_
                     _%L208328%_
                     _%L208329%_
                     _%L208330%_
                     _%L208331%_))
                  (_%__kont209067209068%_))
              (_%__kont209067209068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209067209068%_))))
                                      (_%__kont209067209068%_))
                                  (_%__kont209067209068%_))
                              (_%__kont209067209068%_))))
                      (_%__kont209067209068%_))))
              (_%__kont209067209068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209067209068%_))))
                                          (_%__kont209067209068%_))
                                      (_%__kont209067209068%_))
                                  (_%__kont209067209068%_))))
                          (_%__kont209067209068%_))))
                  (_%__kont209067209068%_))
              (_%__kont209067209068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont209067209068%_))
                                          (_%__kont209067209068%_))
                                      (_%__kont209067209068%_))))
                              (_%__kont209067209068%_))))
                      (_%__kont209067209068%_))
                  (_%__kont209067209068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont209067209068%_))
                                              (_%__kont209067209068%_))
                                          (_%__kont209067209068%_))))
                                  (_%__kont209067209068%_))))
                          (_%__kont209067209068%_))))
                  (_%__kont209067209068%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self207929%_ _%stx207930%_)
        (let* ((_%__stx209305209306%_ _%stx207930%_)
               (_%g207933207973%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209305209306%_)))))
          (let ((_%__kont209307209308%_
                 (lambda (_%L208079%_ _%L208080%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208080%_))
                               (cons _%L208079%_ '())))))
                (_%__kont209309209310%_
                 (lambda (_%L208002%_ _%L208003%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209305209306%_))
                (let ((_%e207937208023%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx209305209306%_))))
                  (let ((_%tl207939208028%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207937208023%_)))
                        (_%hd207938208026%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207937208023%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207939208028%_))
                        (let ((_%e207940208031%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl207939208028%_))))
                          (let ((_%tl207942208036%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207940208031%_)))
                                (_%hd207941208034%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207940208031%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd207941208034%_))
                                (let ((_%e207943208039%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207941208034%_))))
                                  (let ((_%tl207945208044%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207943208039%_)))
                                        (_%hd207944208042%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207943208039%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd207944208042%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd207944208042%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207945208044%_))
                                                (let ((_%e207946208047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207945208044%_))))
                                                  (let ((_%tl207948208052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207946208047%_)))
                                                        (_%hd207947208050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207946208047%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207948208052%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl207942208036%_))
                                                            (let ((_%e207949208055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207942208036%_))))
                      (let ((_%tl207951208060%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207949208055%_)))
                            (_%hd207950208058%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207949208055%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd207950208058%_))
                            (let ((_%e207952208063%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd207950208058%_))))
                              (let ((_%tl207954208068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207952208063%_)))
                                    (_%hd207953208066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207952208063%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd207953208066%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd207953208066%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207954208068%_))
                                            (let ((_%e207955208071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207954208068%_))))
                                              (let ((_%tl207957208076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207955208071%_)))
                                                    (_%hd207956208074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207955208071%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207957208076%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207951208060%_))
                                                        (_%__kont209307209308%_
                                                         _%hd207956208074%_
                                                         _%hd207947208050%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207933207973%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207951208060%_))
                                                        (_%__kont209309209310%_
                                                         _%hd207950208058%_
                                                         _%hd207941208034%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207933207973%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207951208060%_))
                                                (_%__kont209309209310%_
                                                 _%hd207950208058%_
                                                 _%hd207941208034%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207933207973%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207951208060%_))
                                            (_%__kont209309209310%_
                                             _%hd207950208058%_
                                             _%hd207941208034%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207933207973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207951208060%_))
                                        (_%__kont209309209310%_
                                         _%hd207950208058%_
                                         _%hd207941208034%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g207933207973%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207951208060%_))
                                (_%__kont209309209310%_
                                 _%hd207950208058%_
                                 _%hd207941208034%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207933207973%_))))))
                    (let () (declare (not safe)) (_%g207933207973%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl207942208036%_))
                    (let ((_%e207966207994%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207942208036%_))))
                      (let ((_%tl207968207999%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207966207994%_)))
                            (_%hd207967207997%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207966207994%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl207968207999%_))
                            (_%__kont209309209310%_
                             _%hd207967207997%_
                             _%hd207941208034%_)
                            (let ()
                              (declare (not safe))
                              (_%g207933207973%_)))))
                    (let () (declare (not safe)) (_%g207933207973%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl207942208036%_))
                                                    (let ((_%e207966207994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl207942208036%_))))
                                                      (let ((_%tl207968207999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e207966207994%_)))
                    (_%hd207967207997%_
                     (let () (declare (not safe)) (##car _%e207966207994%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl207968207999%_))
                    (_%__kont209309209310%_
                     _%hd207967207997%_
                     _%hd207941208034%_)
                    (let () (declare (not safe)) (_%g207933207973%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207933207973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207942208036%_))
                                                (let ((_%e207966207994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207942208036%_))))
                                                  (let ((_%tl207968207999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207966207994%_)))
                                                        (_%hd207967207997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207966207994%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207968207999%_))
                                                        (_%__kont209309209310%_
                                                         _%hd207967207997%_
                                                         _%hd207941208034%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207933207973%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207933207973%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207942208036%_))
                                            (let ((_%e207966207994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207942208036%_))))
                                              (let ((_%tl207968207999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207966207994%_)))
                                                    (_%hd207967207997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207966207994%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207968207999%_))
                                                    (_%__kont209309209310%_
                                                     _%hd207967207997%_
                                                     _%hd207941208034%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207933207973%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g207933207973%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl207942208036%_))
                                    (let ((_%e207966207994%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl207942208036%_))))
                                      (let ((_%tl207968207999%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e207966207994%_)))
                                            (_%hd207967207997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e207966207994%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207968207999%_))
                                            (_%__kont209309209310%_
                                             _%hd207967207997%_
                                             _%hd207941208034%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207933207973%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207933207973%_))))))
                        (let () (declare (not safe)) (_%g207933207973%_)))))
                (let () (declare (not safe)) (_%g207933207973%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self207916%_)
        (let ((_%self207919%_ _%self207916%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207919%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self207689%_)
        (let* ((_%self207692%_ _%self207689%_)
               (_%self207701207717%_ _%self207692%_)
               (_%E207703207721%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self207701207717%_
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
               (_%K207704207736%_
                (lambda (_%methods207724%_
                         _%metaclass207725%_
                         _%system?207726%_
                         _%final?207727%_
                         _%struct?207728%_
                         _%constructor207729%_
                         _%fields207730%_
                         _%slots207731%_
                         _%precendence-list207732%_
                         _%super207733%_
                         _%id207734%_)
                  (cons '@class
                        (cons _%id207734%_
                              (cons _%super207733%_
                                    (cons _%precendence-list207732%_
                                          (cons _%slots207731%_
                                                (cons _%fields207730%_
                                                      (cons _%constructor207729%_
                                                            (cons _%struct?207728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?207727%_
                                (cons _%system?207726%_
                                      (cons _%metaclass207725%_
                                            (cons (if _%methods207724%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods207724%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e207705207739%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '1 '#f '#f)))
               (_%id207742%_ _%e207705207739%_)
               (_%e207706207744%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '2 '#f '#f)))
               (_%super207747%_ _%e207706207744%_)
               (_%e207707207749%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '3 '#f '#f)))
               (_%precendence-list207752%_ _%e207707207749%_)
               (_%e207708207754%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '4 '#f '#f)))
               (_%slots207757%_ _%e207708207754%_)
               (_%e207709207759%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '5 '#f '#f)))
               (_%fields207762%_ _%e207709207759%_)
               (_%e207710207764%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '6 '#f '#f)))
               (_%constructor207767%_ _%e207710207764%_)
               (_%e207711207769%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '7 '#f '#f)))
               (_%struct?207772%_ _%e207711207769%_)
               (_%e207712207774%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '8 '#f '#f)))
               (_%final?207777%_ _%e207712207774%_)
               (_%e207713207779%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207701207717%_ '9 '#f '#f)))
               (_%system?207782%_ _%e207713207779%_)
               (_%e207714207784%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207701207717%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass207787%_ _%e207714207784%_)
               (_%e207715207789%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207701207717%_
                   '11
                   '#f
                   '#f)))
               (_%methods207792%_ _%e207715207789%_))
          (_%K207704207736%_
           _%methods207792%_
           _%metaclass207787%_
           _%system?207782%_
           _%final?207777%_
           _%struct?207772%_
           _%constructor207767%_
           _%fields207762%_
           _%slots207757%_
           _%precendence-list207752%_
           _%super207747%_
           _%id207742%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self207554%_)
        (let ((_%self207557%_ _%self207554%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207557%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self207419%_)
        (let ((_%self207422%_ _%self207419%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207422%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self207284%_)
        (let ((_%self207287%_ _%self207284%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207287%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207287%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self207287%_
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
      (lambda (_%self207149%_)
        (let ((_%self207152%_ _%self207149%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207152%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207152%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self207152%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self207014%_)
        (let ((_%self207017%_ _%self207014%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207017%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self207017%_
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
      (lambda (_%self206827%_)
        (let* ((_%self206830%_ _%self206827%_)
               (_%self206839206848%_ _%self206830%_)
               (_%E206841206852%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206839206848%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K206842206871%_
                (lambda (_%dispatch206855%_
                         _%arity206856%_
                         _%signature206857%_)
                  (if _%signature206857%_
                      (let ((_%signature206859%_ _%signature206857%_))
                        (cons '@lambda
                              (cons _%arity206856%_
                                    (cons _%dispatch206855%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature206859%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature206859%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature206859%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature206859%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature206859%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity206856%_
                                  (cons _%dispatch206855%_ '()))))))
               (_%e206843206874%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206839206848%_ '1 '#f '#f)))
               (_%e206844206877%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206839206848%_ '2 '#f '#f)))
               (_%signature206880%_ _%e206844206877%_)
               (_%e206845206882%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206839206848%_ '3 '#f '#f)))
               (_%arity206885%_ _%e206845206882%_)
               (_%e206846206887%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206839206848%_ '4 '#f '#f)))
               (_%dispatch206890%_ _%e206846206887%_))
          (_%K206842206871%_
           _%dispatch206890%_
           _%arity206885%_
           _%signature206880%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self206687%_)
        (let ((_%self206690%_ _%self206687%_))
          (letrec ((_%clause-e206701%_
                    (lambda (_%clause206703%_)
                      (cdr (let ((__method209393
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause206703%_
                                     'typedecl))))
                             (if __method209393
                                 (let ()
                                   (declare (not safe))
                                   (__method209393 _%clause206703%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause206703%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e206701%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206690%_
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
      (lambda (_%self206552%_)
        (let ((_%self206555%_ _%self206552%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206555%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206555%_
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
      (lambda (_%self206417%_)
        (let ((_%self206420%_ _%self206417%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206420%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206420%_
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
      (lambda (_%self206282%_)
        (let ((_%self206285%_ _%self206282%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206285%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
