(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712155168)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193421
                   (let ((__obj193415
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193415)
                     __obj193415)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193421)))))
    (define gxc#optimize!
      (lambda (_%ctx193024%_)
        (let ((__tmp193424
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx193024%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx193024%_))
                 (let ((__tmp193426
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193425
                        (##structure-ref
                         _%ctx193024%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193426 __tmp193425 '#t))
                 (let ((_%code193027%_
                        (let ((__tmp193427
                               (##structure-ref
                                _%ctx193024%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp193427))))
                   (##structure-set!
                    _%ctx193024%_
                    _%code193027%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193423 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193422 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193424
           gxc#current-compile-mutators
           __tmp193423
           gxc#current-compile-local-type
           __tmp193422))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193010%_)
        (letrec ((_%load-it!193012%_
                  (lambda (_%id193022%_)
                    (if (let ((__tmp193428
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193428 _%id193022%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id193022%_))
                          (let ((__tmp193429
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193429 _%id193022%_ '#t)))))))
          (let* ((_%modid193014%_
                  (##structure-ref
                   _%ctx193010%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193016%_ (symbol->string _%modid193014%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193016%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193016%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193012%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193012%_
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
      (lambda (_%ctx192947%_)
        (letrec* ((_%deps192949%_
                   (let* ((_%imports193000%_
                           (##structure-ref
                            _%ctx192947%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193002%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192947%_))))
                     (if _%$e193002%_
                         ((lambda (_%g193004193006%_)
                            (cons _%g193004193006%_ _%imports193000%_))
                          _%$e193002%_)
                         (let () _%imports193000%_)))))
          (let _%lp192951%_ ((_%rest192953%_ _%deps192949%_))
            (let* ((_%rest192954192962%_ _%rest192953%_)
                   (_%else192956192970%_ (lambda () '#!void))
                   (_%K192958192988%_
                    (lambda (_%rest192973%_ _%hd192974%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192974%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193431
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193430
                                       (##structure-ref
                                        _%hd192974%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193431 __tmp193430))
                                '#!void
                                (begin
                                  (let ((_%$e192977%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192974%_))))
                                    (if _%$e192977%_
                                        ((lambda (_%pre192980%_)
                                           (let ((__tmp193432
                                                  (cons _%pre192980%_
                                                        (##structure-ref
                                                         _%hd192974%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192951%_ __tmp193432)))
                                         _%$e192977%_)
                                        (let ((__tmp193433
                                               (##structure-ref
                                                _%hd192974%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp192951%_ __tmp193433))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192974%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192951%_ _%rest192973%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192974%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193435
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193434
                                           (##structure-ref
                                            _%hd192974%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193435 __tmp193434))
                                    '#!void
                                    (begin
                                      (let ((__tmp193436
                                             (##structure-ref
                                              _%hd192974%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192951%_ __tmp193436))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192974%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192951%_ _%rest192973%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192974%_
                                     'gx#module-import::t))
                                  (let ((__tmp193437
                                         (cons (##direct-structure-ref
                                                _%hd192974%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest192973%_)))
                                    (declare (not safe))
                                    (_%lp192951%_ __tmp193437))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192974%_
                                         'gx#module-export::t))
                                      (let ((__tmp193438
                                             (cons (##direct-structure-ref
                                                    _%hd192974%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest192973%_)))
                                        (declare (not safe))
                                        (_%lp192951%_ __tmp193438))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192974%_
                                             'gx#import-set::t))
                                          (let ((__tmp193439
                                                 (cons (##direct-structure-ref
                                                        _%hd192974%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest192973%_)))
                                            (declare (not safe))
                                            (_%lp192951%_ __tmp193439))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd192974%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192954192962%_))
                  (let ((_%hd192959192991%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192954192962%_)))
                        (_%tl192960192993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192954192962%_))))
                    (let* ((_%hd192996%_ _%hd192959192991%_)
                           (_%rest192998%_ _%tl192960192993%_))
                      (declare (not safe))
                      (_%K192958192988%_ _%rest192998%_ _%hd192996%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192927%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192927%_
                    'gx#module-context::t))
                 (let ((__tmp193440
                        (##structure-ref
                         _%ctx192927%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp193440)))
            '#!void
            (let* ((_%ht192929%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192931%_
                    (##structure-ref
                     _%ctx192927%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192933%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192929%_ _%id192931%_)))
                   (_%$e192936%_ _%mod192933%_))
              (if _%$e192936%_
                  _%$e192936%_
                  (let* ((_%mod192939%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx192927%_)))
                         (_%val192944%_
                          (let ((_%$e192941%_ _%mod192939%_))
                            (if _%$e192941%_ _%$e192941%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht192929%_ _%id192931%_ _%val192944%_))
                    _%val192944%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192925%_)
        (if (##structure-ref _%ctx192925%_ '1 gx#expander-context::t '#f)
            (let ((__tmp193441
                   (##structure-ref
                    _%ctx192925%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp193441))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192902%_)
        (letrec ((_%catch-e192904%_
                  (lambda (_%exn192923%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn192923%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn192923%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192902%_))))
                    '#f))
                 (_%import-e192905%_
                  (lambda ()
                    (let* ((_%str-id192908%_
                            (let ((__tmp193442
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192902%_))))
                              (declare (not safe))
                              (##string-append __tmp193442 '".ssxi")))
                           (_%artefact-path192916%_
                            (let ((_%odir192909192911%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192909192911%_
                                  (let ((_%odir192914%_ _%odir192909192911%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192908%_
                                        '".ss"))
                                     _%odir192914%_))
                                  '#f)))
                           (_%library-path192918%_
                            (let ((__tmp193443
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192908%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193443)))
                           (_%ssxi-path192920%_
                            (if (and _%artefact-path192916%_
                                     (file-exists? _%artefact-path192916%_))
                                _%artefact-path192916%_
                                _%library-path192918%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192920%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192920%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192904%_ _%import-e192905%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192893%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192893%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192893%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192893%_))
        (let* ((_%stx192895%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192893%_)))
               (_%stx192897%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192895%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192897%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192897%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192897%_))
          (let ((_%stx192900%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192897%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192900%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193445 (list gxc#::generate-runtime-empty::t))
            (__tmp193444 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193445
         '()
         __tmp193444
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192890%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192890%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193446
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
        (__make-promise __tmp193446)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192882%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192885%_
                (let ((__obj193417
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193417))
               (__tmp193447
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192885%_ _%stx192882%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193447
           gxc#current-compile-method
           _%self192885%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192842%_ _%stx192843%_)
        (let* ((_%g192845192855%_
                (lambda (_%g192846192852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192846192852%_))))
               (_%g192844192879%_
                (lambda (_%g192846192858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192846192858%_))
                      (let ((_%e192850192860%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192846192858%_))))
                        (let ((_%hd192849192863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192850192860%_)))
                              (_%tl192848192865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192850192860%_))))
                          ((lambda (_%L192868%_)
                             (let ((__tmp193450
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192842%_
                                         _%stx192843%_))))
                                   (__tmp193448
                                    (let ((__tmp193449
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193449 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193450
                                gx#current-expander-phi
                                __tmp193448)))
                           _%tl192848192865%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192845192855%_ _%g192846192858%_))))))
          (declare (not safe))
          (_%g192844192879%_ _%stx192843%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192781%_ _%stx192782%_)
        (let* ((_%g192784192798%_
                (lambda (_%g192785192795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192785192795%_))))
               (_%g192783192839%_
                (lambda (_%g192785192801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192785192801%_))
                      (let ((_%e192790192803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192785192801%_))))
                        (let ((_%hd192789192806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192790192803%_)))
                              (_%tl192788192808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192790192803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192788192808%_))
                              (let ((_%e192793192811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192788192808%_))))
                                (let ((_%hd192792192814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192793192811%_)))
                                      (_%tl192791192816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192793192811%_))))
                                  ((lambda (_%L192819%_ _%L192820%_)
                                     (let* ((_%ctx192833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192820%_)))
                                            (_%code192835%_
                                             (##structure-ref
                                              _%ctx192833%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193451
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192781%_
                                                  _%code192835%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193451
                                        gx#current-expander-context
                                        _%ctx192833%_)))
                                   _%tl192791192816%_
                                   _%hd192792192814%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192784192798%_ _%g192785192801%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192784192798%_ _%g192785192801%_))))))
          (declare (not safe))
          (_%g192783192839%_ _%stx192782%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192586%_ _%stx192587%_)
        (letrec ((_%generate-e192589%_
                  (lambda (_%id192766%_)
                    (let* ((_%sym192768%_
                            (if (let ((__tmp193452
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193452))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192766%_))
                                '#f))
                           (_%$e192770%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192768%_))))
                      (if _%$e192770%_
                          ((lambda (_%klass192773%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192768%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192768%_
                                                     (cons (let ((__method193418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192773%_ 'typedecl))))
                     (if __method193418
                         (__method193418 _%klass192773%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192773%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192768%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192768%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192770%_)
                          (let ((_%$e192775%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192768%_))))
                            (if _%$e192775%_
                                ((lambda (_%type192778%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192768%_
                                      '" "
                                      _%type192778%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192778%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192768%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192768%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192778%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192768%_
                                                   (cons (let ((__method193419
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192778%_ 'typedecl))))
                   (if __method193419
                       (__method193419 _%type192778%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192778%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192775%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx193030193031%_ _%stx192587%_)
                 (_%g192592192630%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193030193031%_)))))
            (let ((_%__kont193032193033%_
                   (lambda (_%L192748%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192589%_ _%L192748%_))))
                  (_%__kont193034193035%_
                   (lambda (_%L192683%_)
                     (let ((_%types192709%_
                            (map _%generate-e192589%_
                                 (let ((__tmp193453
                                        (lambda (_%g192701192704%_
                                                 _%g192702192706%_)
                                          (cons _%g192701192704%_
                                                _%g192702192706%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193453 '() _%L192683%_)))))
                       (cons 'begin _%types192709%_)))))
              (let ((_%__match193085193086%_
                     (lambda (_%e192610192635%_
                              _%hd192609192638%_
                              _%tl192608192640%_
                              _%e192613192643%_
                              _%hd192612192646%_
                              _%tl192611192648%_
                              _%__splice193036193037%_
                              _%target192614192651%_
                              _%tl192616192653%_)
                       (letrec ((_%loop192617192656%_
                                 (lambda (_%hd192615192659%_
                                          _%id192621192661%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192615192659%_))
                                       (let ((_%e192618192664%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192615192659%_))))
                                         (let ((_%lp-tl192620192669%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192618192664%_)))
                                               (_%lp-hd192619192667%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192618192664%_))))
                                           (let ((__tmp193454
                                                  (cons _%lp-hd192619192667%_
                                                        _%id192621192661%_)))
                                             (declare (not safe))
                                             (_%loop192617192656%_
                                              _%lp-tl192620192669%_
                                              __tmp193454))))
                                       (let ((_%id192622192672%_
                                              (reverse _%id192621192661%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192611192648%_))
                                             (let ((_%e192625192675%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192611192648%_))))
                                               (let ((_%tl192623192680%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192625192675%_)))
                                                     (_%hd192624192678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192625192675%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192623192680%_))
                                                     (_%__kont193034193035%_
                                                      _%id192622192672%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192592192630%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192592192630%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192617192656%_
                            _%target192614192651%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193030193031%_))
                    (let ((_%e192597192716%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193030193031%_))))
                      (let ((_%tl192595192721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192597192716%_)))
                            (_%hd192596192719%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192597192716%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192595192721%_))
                            (let ((_%e192600192724%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192595192721%_))))
                              (let ((_%tl192598192729%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192600192724%_)))
                                    (_%hd192599192727%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192600192724%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192599192727%_))
                                    (let ((_%e192603192732%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192599192727%_))))
                                      (let ((_%tl192601192737%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192603192732%_)))
                                            (_%hd192602192735%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192603192732%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192601192737%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192598192729%_))
                                                (let ((_%e192606192740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192598192729%_))))
                                                  (let ((_%tl192604192745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192606192740%_)))
                                                        (_%hd192605192743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192606192740%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192604192745%_))
                                                        (_%__kont193032193033%_
                                                         _%hd192602192735%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192599192727%_))
                                                            (let ((_%__splice193036193037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192599192727%_ '0))))
                      (let ((_%tl192616192653%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193036193037%_ '1)))
                            (_%target192614192651%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193036193037%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192616192653%_))
                            (_%__match193085193086%_
                             _%e192597192716%_
                             _%hd192596192719%_
                             _%tl192595192721%_
                             _%e192600192724%_
                             _%hd192599192727%_
                             _%tl192598192729%_
                             _%__splice193036193037%_
                             _%target192614192651%_
                             _%tl192616192653%_)
                            (let ()
                              (declare (not safe))
                              (_%g192592192630%_)))))
                    (let () (declare (not safe)) (_%g192592192630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192599192727%_))
                                                    (let ((_%__splice193036193037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192599192727%_
                                                              '0))))
                                                      (let ((_%tl192616192653%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193036193037%_ '1)))
                    (_%target192614192651%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193036193037%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192616192653%_))
                    (_%__match193085193086%_
                     _%e192597192716%_
                     _%hd192596192719%_
                     _%tl192595192721%_
                     _%e192600192724%_
                     _%hd192599192727%_
                     _%tl192598192729%_
                     _%__splice193036193037%_
                     _%target192614192651%_
                     _%tl192616192653%_)
                    (let () (declare (not safe)) (_%g192592192630%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192592192630%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192599192727%_))
                                                (let ((_%__splice193036193037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192599192727%_
                                                          '0))))
                                                  (let ((_%tl192616192653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193036193037%_
                                                            '1)))
                                                        (_%target192614192651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193036193037%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192616192653%_))
                                                        (_%__match193085193086%_
                                                         _%e192597192716%_
                                                         _%hd192596192719%_
                                                         _%tl192595192721%_
                                                         _%e192600192724%_
                                                         _%hd192599192727%_
                                                         _%tl192598192729%_
                                                         _%__splice193036193037%_
                                                         _%target192614192651%_
                                                         _%tl192616192653%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192592192630%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192592192630%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192599192727%_))
                                        (let ((_%__splice193036193037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192599192727%_
                                                  '0))))
                                          (let ((_%tl192616192653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193036193037%_
                                                    '1)))
                                                (_%target192614192651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193036193037%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192616192653%_))
                                                (_%__match193085193086%_
                                                 _%e192597192716%_
                                                 _%hd192596192719%_
                                                 _%tl192595192721%_
                                                 _%e192600192724%_
                                                 _%hd192599192727%_
                                                 _%tl192598192729%_
                                                 _%__splice193036193037%_
                                                 _%target192614192651%_
                                                 _%tl192616192653%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192592192630%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192592192630%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192592192630%_)))))
                    (let () (declare (not safe)) (_%g192592192630%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192139%_ _%stx192140%_)
        (let* ((_%__stx193088193089%_ _%stx192140%_)
               (_%g192144192246%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193088193089%_)))))
          (let ((_%__kont193090193091%_
                 (lambda (_%L192536%_
                          _%L192537%_
                          _%L192538%_
                          _%L192539%_
                          _%L192540%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192539%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192538%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192537%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192536%_))
                                                 '())))))))
                (_%__kont193092193093%_
                 (lambda (_%L192362%_ _%L192363%_ _%L192364%_ _%L192365%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192364%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192363%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192362%_))
                                           (cons '#f '())))))))
                (_%__kont193094193095%_ (lambda () '(begin))))
            (let ((_%__match193223193224%_
                   (lambda (_%e192153192408%_
                            _%hd192152192411%_
                            _%tl192151192413%_
                            _%e192156192416%_
                            _%hd192155192419%_
                            _%tl192154192421%_
                            _%e192159192424%_
                            _%hd192158192427%_
                            _%tl192157192429%_
                            _%e192162192432%_
                            _%hd192161192435%_
                            _%tl192160192437%_
                            _%e192165192440%_
                            _%hd192164192443%_
                            _%tl192163192445%_
                            _%e192168192448%_
                            _%hd192167192451%_
                            _%tl192166192453%_
                            _%e192171192456%_
                            _%hd192170192459%_
                            _%tl192169192461%_
                            _%e192174192464%_
                            _%hd192173192467%_
                            _%tl192172192469%_
                            _%e192177192472%_
                            _%hd192176192475%_
                            _%tl192175192477%_
                            _%e192180192480%_
                            _%hd192179192483%_
                            _%tl192178192485%_
                            _%e192183192488%_
                            _%hd192182192491%_
                            _%tl192181192493%_
                            _%e192186192496%_
                            _%hd192185192499%_
                            _%tl192184192501%_
                            _%e192189192504%_
                            _%hd192188192507%_
                            _%tl192187192509%_
                            _%e192192192512%_
                            _%hd192191192515%_
                            _%tl192190192517%_
                            _%e192195192520%_
                            _%hd192194192523%_
                            _%tl192193192525%_
                            _%e192198192528%_
                            _%hd192197192531%_
                            _%tl192196192533%_)
                     (let ((_%L192536%_ _%hd192197192531%_)
                           (_%L192537%_ _%hd192188192507%_)
                           (_%L192538%_ _%hd192179192483%_)
                           (_%L192539%_ _%hd192170192459%_)
                           (_%L192540%_ _%hd192161192435%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192540%_
                              'bind-method!))
                           (_%__kont193090193091%_
                            _%L192536%_
                            _%L192537%_
                            _%L192538%_
                            _%L192539%_
                            _%L192540%_)
                           (_%__kont193094193095%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193088193089%_))
                  (let ((_%e192153192408%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193088193089%_))))
                    (let ((_%tl192151192413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192153192408%_)))
                          (_%hd192152192411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192153192408%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192151192413%_))
                          (let ((_%e192156192416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192151192413%_))))
                            (let ((_%tl192154192421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192156192416%_)))
                                  (_%hd192155192419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192156192416%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192155192419%_))
                                  (let ((_%e192159192424%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192155192419%_))))
                                    (let ((_%tl192157192429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192159192424%_)))
                                          (_%hd192158192427%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192159192424%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192158192427%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192158192427%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192157192429%_))
                                                  (let ((_%e192162192432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192157192429%_))))
                                                    (let ((_%tl192160192437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192162192432%_)))
                                                          (_%hd192161192435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192162192432%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192160192437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192154192421%_))
                      (let ((_%e192165192440%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192154192421%_))))
                        (let ((_%tl192163192445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192165192440%_)))
                              (_%hd192164192443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192165192440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192164192443%_))
                              (let ((_%e192168192448%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192164192443%_))))
                                (let ((_%tl192166192453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192168192448%_)))
                                      (_%hd192167192451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192168192448%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192167192451%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192167192451%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192166192453%_))
                                              (let ((_%e192171192456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192166192453%_))))
                                                (let ((_%tl192169192461%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192171192456%_)))
                                                      (_%hd192170192459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192171192456%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192169192461%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192163192445%_))
                                                          (let ((_%e192174192464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192163192445%_))))
                    (let ((_%tl192172192469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192174192464%_)))
                          (_%hd192173192467%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192174192464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192173192467%_))
                          (let ((_%e192177192472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192173192467%_))))
                            (let ((_%tl192175192477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192177192472%_)))
                                  (_%hd192176192475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192177192472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192176192475%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192176192475%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192175192477%_))
                                          (let ((_%e192180192480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192175192477%_))))
                                            (let ((_%tl192178192485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192180192480%_)))
                                                  (_%hd192179192483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192180192480%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192178192485%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192172192469%_))
                                                      (let ((_%e192183192488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192172192469%_))))
                (let ((_%tl192181192493%_
                       (let () (declare (not safe)) (##cdr _%e192183192488%_)))
                      (_%hd192182192491%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192183192488%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192182192491%_))
                      (let ((_%e192186192496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192182192491%_))))
                        (let ((_%tl192184192501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192186192496%_)))
                              (_%hd192185192499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192186192496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192185192499%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192185192499%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192184192501%_))
                                      (let ((_%e192189192504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192184192501%_))))
                                        (let ((_%tl192187192509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192189192504%_)))
                                              (_%hd192188192507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192189192504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192187192509%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192181192493%_))
                                                  (let ((_%e192192192512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192181192493%_))))
                                                    (let ((_%tl192190192517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192192192512%_)))
                                                          (_%hd192191192515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192192192512%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192191192515%_))
                                                          (let ((_%e192195192520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192191192515%_))))
                    (let ((_%tl192193192525%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192195192520%_)))
                          (_%hd192194192523%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192195192520%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192194192523%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192194192523%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192193192525%_))
                                  (let ((_%e192198192528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192193192525%_))))
                                    (let ((_%tl192196192533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192198192528%_)))
                                          (_%hd192197192531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192198192528%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192196192533%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192190192517%_))
                                              (_%__match193223193224%_
                                               _%e192153192408%_
                                               _%hd192152192411%_
                                               _%tl192151192413%_
                                               _%e192156192416%_
                                               _%hd192155192419%_
                                               _%tl192154192421%_
                                               _%e192159192424%_
                                               _%hd192158192427%_
                                               _%tl192157192429%_
                                               _%e192162192432%_
                                               _%hd192161192435%_
                                               _%tl192160192437%_
                                               _%e192165192440%_
                                               _%hd192164192443%_
                                               _%tl192163192445%_
                                               _%e192168192448%_
                                               _%hd192167192451%_
                                               _%tl192166192453%_
                                               _%e192171192456%_
                                               _%hd192170192459%_
                                               _%tl192169192461%_
                                               _%e192174192464%_
                                               _%hd192173192467%_
                                               _%tl192172192469%_
                                               _%e192177192472%_
                                               _%hd192176192475%_
                                               _%tl192175192477%_
                                               _%e192180192480%_
                                               _%hd192179192483%_
                                               _%tl192178192485%_
                                               _%e192183192488%_
                                               _%hd192182192491%_
                                               _%tl192181192493%_
                                               _%e192186192496%_
                                               _%hd192185192499%_
                                               _%tl192184192501%_
                                               _%e192189192504%_
                                               _%hd192188192507%_
                                               _%tl192187192509%_
                                               _%e192192192512%_
                                               _%hd192191192515%_
                                               _%tl192190192517%_
                                               _%e192195192520%_
                                               _%hd192194192523%_
                                               _%tl192193192525%_
                                               _%e192198192528%_
                                               _%hd192197192531%_
                                               _%tl192196192533%_)
                                              (_%__kont193094193095%_))
                                          (_%__kont193094193095%_))))
                                  (_%__kont193094193095%_))
                              (_%__kont193094193095%_))
                          (_%__kont193094193095%_))))
                  (_%__kont193094193095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192181192493%_))
                                                      (if (let ((__tmp193455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193455 'bind-method!))
                  (let ((_%L192362%_ _%hd192188192507%_)
                        (_%L192363%_ _%hd192179192483%_)
                        (_%L192364%_ _%hd192170192459%_)
                        (_%L192365%_ _%hd192161192435%_))
                    (_%__kont193092193093%_
                     _%L192362%_
                     _%L192363%_
                     _%L192364%_
                     _%L192365%_))
                  (_%__kont193094193095%_))
              (_%__kont193094193095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193094193095%_))))
                                      (_%__kont193094193095%_))
                                  (_%__kont193094193095%_))
                              (_%__kont193094193095%_))))
                      (_%__kont193094193095%_))))
              (_%__kont193094193095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193094193095%_))))
                                          (_%__kont193094193095%_))
                                      (_%__kont193094193095%_))
                                  (_%__kont193094193095%_))))
                          (_%__kont193094193095%_))))
                  (_%__kont193094193095%_))
              (_%__kont193094193095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193094193095%_))
                                          (_%__kont193094193095%_))
                                      (_%__kont193094193095%_))))
                              (_%__kont193094193095%_))))
                      (_%__kont193094193095%_))
                  (_%__kont193094193095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193094193095%_))
                                              (_%__kont193094193095%_))
                                          (_%__kont193094193095%_))))
                                  (_%__kont193094193095%_))))
                          (_%__kont193094193095%_))))
                  (_%__kont193094193095%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191963%_ _%stx191964%_)
        (let* ((_%__stx193332193333%_ _%stx191964%_)
               (_%g191967192007%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193332193333%_)))))
          (let ((_%__kont193334193335%_
                 (lambda (_%L192113%_ _%L192114%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192114%_))
                               (cons _%L192113%_ '())))))
                (_%__kont193336193337%_
                 (lambda (_%L192036%_ _%L192037%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193332193333%_))
                (let ((_%e191973192057%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193332193333%_))))
                  (let ((_%tl191971192062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191973192057%_)))
                        (_%hd191972192060%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191973192057%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191971192062%_))
                        (let ((_%e191976192065%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191971192062%_))))
                          (let ((_%tl191974192070%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191976192065%_)))
                                (_%hd191975192068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191976192065%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191975192068%_))
                                (let ((_%e191979192073%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191975192068%_))))
                                  (let ((_%tl191977192078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191979192073%_)))
                                        (_%hd191978192076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191979192073%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191978192076%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191978192076%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191977192078%_))
                                                (let ((_%e191982192081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191977192078%_))))
                                                  (let ((_%tl191980192086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191982192081%_)))
                                                        (_%hd191981192084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191982192081%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191980192086%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191974192070%_))
                                                            (let ((_%e191985192089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191974192070%_))))
                      (let ((_%tl191983192094%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191985192089%_)))
                            (_%hd191984192092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191985192089%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191984192092%_))
                            (let ((_%e191988192097%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191984192092%_))))
                              (let ((_%tl191986192102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191988192097%_)))
                                    (_%hd191987192100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191988192097%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191987192100%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191987192100%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191986192102%_))
                                            (let ((_%e191991192105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191986192102%_))))
                                              (let ((_%tl191989192110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191991192105%_)))
                                                    (_%hd191990192108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191991192105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191989192110%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191983192094%_))
                                                        (_%__kont193334193335%_
                                                         _%hd191990192108%_
                                                         _%hd191981192084%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191967192007%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191983192094%_))
                                                        (_%__kont193336193337%_
                                                         _%hd191984192092%_
                                                         _%hd191975192068%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191967192007%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191983192094%_))
                                                (_%__kont193336193337%_
                                                 _%hd191984192092%_
                                                 _%hd191975192068%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191967192007%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191983192094%_))
                                            (_%__kont193336193337%_
                                             _%hd191984192092%_
                                             _%hd191975192068%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191967192007%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191983192094%_))
                                        (_%__kont193336193337%_
                                         _%hd191984192092%_
                                         _%hd191975192068%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191967192007%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191983192094%_))
                                (_%__kont193336193337%_
                                 _%hd191984192092%_
                                 _%hd191975192068%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191967192007%_))))))
                    (let () (declare (not safe)) (_%g191967192007%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191974192070%_))
                    (let ((_%e192002192028%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191974192070%_))))
                      (let ((_%tl192000192033%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192002192028%_)))
                            (_%hd192001192031%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192002192028%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192000192033%_))
                            (_%__kont193336193337%_
                             _%hd192001192031%_
                             _%hd191975192068%_)
                            (let ()
                              (declare (not safe))
                              (_%g191967192007%_)))))
                    (let () (declare (not safe)) (_%g191967192007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191974192070%_))
                                                    (let ((_%e192002192028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191974192070%_))))
                                                      (let ((_%tl192000192033%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192002192028%_)))
                    (_%hd192001192031%_
                     (let () (declare (not safe)) (##car _%e192002192028%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192000192033%_))
                    (_%__kont193336193337%_
                     _%hd192001192031%_
                     _%hd191975192068%_)
                    (let () (declare (not safe)) (_%g191967192007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191967192007%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191974192070%_))
                                                (let ((_%e192002192028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191974192070%_))))
                                                  (let ((_%tl192000192033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192002192028%_)))
                                                        (_%hd192001192031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192002192028%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192000192033%_))
                                                        (_%__kont193336193337%_
                                                         _%hd192001192031%_
                                                         _%hd191975192068%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191967192007%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191967192007%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191974192070%_))
                                            (let ((_%e192002192028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191974192070%_))))
                                              (let ((_%tl192000192033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192002192028%_)))
                                                    (_%hd192001192031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192002192028%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192000192033%_))
                                                    (_%__kont193336193337%_
                                                     _%hd192001192031%_
                                                     _%hd191975192068%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191967192007%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191967192007%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191974192070%_))
                                    (let ((_%e192002192028%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191974192070%_))))
                                      (let ((_%tl192000192033%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192002192028%_)))
                                            (_%hd192001192031%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192002192028%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192000192033%_))
                                            (_%__kont193336193337%_
                                             _%hd192001192031%_
                                             _%hd191975192068%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191967192007%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191967192007%_))))))
                        (let () (declare (not safe)) (_%g191967192007%_)))))
                (let () (declare (not safe)) (_%g191967192007%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191950%_)
        (let ((_%self191953%_ _%self191950%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191953%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191723%_)
        (let ((_%self191726%_ _%self191723%_))
          (let* ((_%self191735191751%_ _%self191726%_)
                 (_%E191737191755%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191735191751%_
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
                 (_%K191738191770%_
                  (lambda (_%methods191758%_
                           _%metaclass191759%_
                           _%system?191760%_
                           _%final?191761%_
                           _%struct?191762%_
                           _%constructor191763%_
                           _%fields191764%_
                           _%slots191765%_
                           _%precendence-list191766%_
                           _%super191767%_
                           _%id191768%_)
                    (cons '@class
                          (cons _%id191768%_
                                (cons _%super191767%_
                                      (cons _%precendence-list191766%_
                                            (cons _%slots191765%_
                                                  (cons _%fields191764%_
                                                        (cons _%constructor191763%_
                                                              (cons _%struct?191762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?191761%_
                                  (cons _%system?191760%_
                                        (cons _%metaclass191759%_
                                              (cons (if _%methods191758%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods191758%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e191739191773%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '1
                           '#f
                           '#f)))
                       (_%id191776%_ _%e191739191773%_)
                       (_%e191740191778%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '2
                           '#f
                           '#f)))
                       (_%super191781%_ _%e191740191778%_)
                       (_%e191741191783%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list191786%_ _%e191741191783%_)
                       (_%e191742191788%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '4
                           '#f
                           '#f)))
                       (_%slots191791%_ _%e191742191788%_)
                       (_%e191743191793%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '5
                           '#f
                           '#f)))
                       (_%fields191796%_ _%e191743191793%_)
                       (_%e191744191798%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor191801%_ _%e191744191798%_)
                       (_%e191745191803%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?191806%_ _%e191745191803%_)
                       (_%e191746191808%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '8
                           '#f
                           '#f)))
                       (_%final?191811%_ _%e191746191808%_)
                       (_%e191747191813%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '9
                           '#f
                           '#f)))
                       (_%system?191816%_ _%e191747191813%_)
                       (_%e191748191818%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass191821%_ _%e191748191818%_)
                       (_%e191749191823%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191735191751%_
                           '11
                           '#f
                           '#f)))
                       (_%methods191826%_ _%e191749191823%_))
                  (declare (not safe))
                  (_%K191738191770%_
                   _%methods191826%_
                   _%metaclass191821%_
                   _%system?191816%_
                   _%final?191811%_
                   _%struct?191806%_
                   _%constructor191801%_
                   _%fields191796%_
                   _%slots191791%_
                   _%precendence-list191786%_
                   _%super191781%_
                   _%id191776%_))
                (let () (declare (not safe)) (_%E191737191755%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191588%_)
        (let ((_%self191591%_ _%self191588%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191591%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191453%_)
        (let ((_%self191456%_ _%self191453%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191456%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191318%_)
        (let ((_%self191321%_ _%self191318%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191321%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191321%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191321%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191183%_)
        (let ((_%self191186%_ _%self191183%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191186%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191186%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191186%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191048%_)
        (let ((_%self191051%_ _%self191048%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191051%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191051%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self190861%_)
        (let ((_%self190864%_ _%self190861%_))
          (let* ((_%self190873190882%_ _%self190864%_)
                 (_%E190875190886%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self190873190882%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K190876190905%_
                  (lambda (_%dispatch190889%_
                           _%arity190890%_
                           _%signature190891%_)
                    (if _%signature190891%_
                        (let ((_%signature190893%_ _%signature190891%_))
                          (cons '@lambda
                                (cons _%arity190890%_
                                      (cons _%dispatch190889%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190893%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature190893%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature190893%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature190893%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity190890%_
                                    (cons _%dispatch190889%_ '())))))))
            (if '#t
                (let* ((_%e190877190908%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190873190882%_
                           '1
                           '#f
                           '#f)))
                       (_%e190878190911%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190873190882%_
                           '2
                           '#f
                           '#f)))
                       (_%signature190914%_ _%e190878190911%_)
                       (_%e190879190916%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190873190882%_
                           '3
                           '#f
                           '#f)))
                       (_%arity190919%_ _%e190879190916%_)
                       (_%e190880190921%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190873190882%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch190924%_ _%e190880190921%_))
                  (declare (not safe))
                  (_%K190876190905%_
                   _%dispatch190924%_
                   _%arity190919%_
                   _%signature190914%_))
                (let () (declare (not safe)) (_%E190875190886%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190722%_)
        (let ((_%self190725%_ _%self190722%_))
          (letrec ((_%clause-e190735%_
                    (lambda (_%clause190737%_)
                      (cdr (let ((__method193420
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190737%_
                                     'typedecl))))
                             (if __method193420
                                 (__method193420 _%clause190737%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190737%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190735%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190725%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self190587%_)
        (let ((_%self190590%_ _%self190587%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190590%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190590%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self190452%_)
        (let ((_%self190455%_ _%self190452%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190455%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190455%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self190317%_)
        (let ((_%self190320%_ _%self190317%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190320%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
