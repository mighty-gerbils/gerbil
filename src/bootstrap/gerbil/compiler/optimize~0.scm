(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770333069)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224324
                   (let ((__obj224318
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
                       (gxc#optimizer-info:::init! __obj224318))
                     __obj224318)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224324)))))
    (define gxc#optimize!
      (lambda (_%ctx223926%_)
        (let ((__tmp224326
               (lambda ()
                 (let ((__tmp224328
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223926%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223926%_)
                          (let ((__tmp224330
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224329
                                 (##structure-ref
                                  _%ctx223926%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224330 __tmp224329 '#t))
                          (let ((_%code223930%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223926%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223926%_
                             _%code223930%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224327
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224328
                    gxc#current-compile-local-type
                    __tmp224327))))
              (__tmp224325 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224326
           gxc#current-compile-mutators
           __tmp224325))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223912%_)
        (letrec ((_%load-it!223914%_
                  (lambda (_%id223924%_)
                    (if (let ((__tmp224331
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224331 _%id223924%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223924%_)
                          (let ((__tmp224332
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224332 _%id223924%_ '#t)))))))
          (let* ((_%modid223916%_
                  (##structure-ref
                   _%ctx223912%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223918%_ (symbol->string _%modid223916%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223918%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223918%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223914%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223914%_
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
      (lambda (_%ctx223849%_)
        (letrec* ((_%deps223851%_
                   (let* ((_%imports223902%_
                           (##structure-ref
                            _%ctx223849%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223904%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223849%_))))
                     (if _%$e223904%_
                         ((lambda (_%g223906223908%_)
                            (cons _%g223906223908%_ _%imports223902%_))
                          _%$e223904%_)
                         _%imports223902%_))))
          (let _%lp223853%_ ((_%rest223855%_ _%deps223851%_))
            (let* ((_%rest223856223864%_ _%rest223855%_)
                   (_%else223858223872%_ (lambda () '#!void))
                   (_%K223860223890%_
                    (lambda (_%rest223875%_ _%hd223876%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223876%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224334
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224333
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223876%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224334 __tmp224333))
                                '#!void
                                (begin
                                  (let ((_%$e223879%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223876%_))))
                                    (if _%$e223879%_
                                        ((lambda (_%pre223882%_)
                                           (_%lp223853%_
                                            (cons _%pre223882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223876%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223879%_)
                                        (_%lp223853%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223876%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223876%_)))
                            (_%lp223853%_ _%rest223875%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223876%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224336
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224335
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223876%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224336 __tmp224335))
                                    '#!void
                                    (begin
                                      (_%lp223853%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223876%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223876%_)))
                                (_%lp223853%_ _%rest223875%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223876%_
                                     'gx#module-import::t))
                                  (_%lp223853%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223876%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223875%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223876%_
                                         'gx#module-export::t))
                                      (_%lp223853%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223876%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223875%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223876%_
                                             'gx#import-set::t))
                                          (_%lp223853%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223876%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223875%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223876%_))))))))))
              (if (pair? _%rest223856223864%_)
                  (let ((_%hd223861223893%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223856223864%_)))
                        (_%tl223862223895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223856223864%_))))
                    (let* ((_%hd223898%_ _%hd223861223893%_)
                           (_%rest223900%_ _%tl223862223895%_))
                      (_%K223860223890%_ _%rest223900%_ _%hd223898%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223829%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223829%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223829%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223831%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223833%_
                    (##structure-ref
                     _%ctx223829%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223835%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223831%_ _%id223833%_)))
                   (_%$e223838%_ _%mod223835%_))
              (if _%$e223838%_
                  _%$e223838%_
                  (let* ((_%mod223841%_
                          (gxc#optimizer-import-ssxi _%ctx223829%_))
                         (_%val223846%_
                          (let ((_%$e223843%_ _%mod223841%_))
                            (if _%$e223843%_ _%$e223843%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223831%_ _%id223833%_ _%val223846%_))
                    _%val223846%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223827%_)
        (if (##structure-ref _%ctx223827%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223827%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223805%_)
        (letrec ((_%catch-e223807%_
                  (lambda (_%exn223825%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223825%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223825%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223805%_))))
                    '#f))
                 (_%import-e223808%_
                  (lambda ()
                    (let* ((_%str-id223811%_
                            (let ((__tmp224337
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223805%_))))
                              (declare (not safe))
                              (##string-append __tmp224337 '".ssxi")))
                           (_%artefact-path223818%_
                            (let ((_%odir223812223814%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223812223814%_
                                  (let ((_%odir223816%_ _%odir223812223814%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223811%_
                                        '".ss"))
                                     _%odir223816%_))
                                  '#f)))
                           (_%library-path223820%_
                            (let ((__tmp224338
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223811%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224338)))
                           (_%ssxi-path223822%_
                            (if (and _%artefact-path223818%_
                                     (file-exists? _%artefact-path223818%_))
                                _%artefact-path223818%_
                                _%library-path223820%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223822%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223822%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223807%_ _%import-e223808%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223790%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223790%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223790%_))
        (let* ((_%stx223792%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223790%_)))
               (_%stx223794%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223792%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223794%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223794%_))
          (let _%fixpoint223797%_ ((_%current223799%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223794%_))
            (let ((_%refined223801%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223799%_ _%refined223801%_)
                  '#!void
                  (_%fixpoint223797%_ _%refined223801%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223794%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223794%_))
          (let ((_%stx223803%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223794%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223803%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224340 (list gxc#::generate-runtime-empty::t))
            (__tmp224339 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224340
         '()
         __tmp224339
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223787%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223787%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224341
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
        (__make-atomic-promise __tmp224341)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223779%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223782%_
                (let ((__obj224320
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224320))
               (__tmp224342
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223782%_ _%stx223779%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224342
           gxc#current-compile-method
           _%self223782%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223739%_ _%stx223740%_)
        (let* ((_%g223742223752%_
                (lambda (_%g223743223749%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223743223749%_))))
               (_%g223741223776%_
                (lambda (_%g223743223755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223743223755%_))
                      (let ((_%e223745223757%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223743223755%_))))
                        (let ((_%hd223746223760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223745223757%_)))
                              (_%tl223747223762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223745223757%_))))
                          ((lambda (_%g223744223765%_)
                             (let ((__tmp224345
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223739%_
                                         _%stx223740%_))))
                                   (__tmp224343
                                    (let ((__tmp224344
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224344 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224345
                                gx#current-expander-phi
                                __tmp224343)))
                           _%tl223747223762%_)))
                      (_%g223742223752%_ _%g223743223755%_)))))
          (_%g223741223776%_ _%stx223740%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223678%_ _%stx223679%_)
        (let* ((_%g223681223695%_
                (lambda (_%g223682223692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223682223692%_))))
               (_%g223680223736%_
                (lambda (_%g223682223698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223682223698%_))
                      (let ((_%e223685223700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223682223698%_))))
                        (let ((_%hd223686223703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223685223700%_)))
                              (_%tl223687223705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223685223700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223687223705%_))
                              (let ((_%e223688223708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223687223705%_))))
                                (let ((_%hd223689223711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223688223708%_)))
                                      (_%tl223690223713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223688223708%_))))
                                  ((lambda (_%g223683223716%_
                                            _%g223684223717%_)
                                     (let* ((_%ctx223730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223684223717%_)))
                                            (_%code223732%_
                                             (##structure-ref
                                              _%ctx223730%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224346
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223678%_
                                                  _%code223732%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224346
                                        gx#current-expander-context
                                        _%ctx223730%_)))
                                   _%tl223690223713%_
                                   _%hd223689223711%_)))
                              (_%g223681223695%_ _%g223682223698%_))))
                      (_%g223681223695%_ _%g223682223698%_)))))
          (_%g223680223736%_ _%stx223679%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223485%_ _%stx223486%_)
        (letrec ((_%generate-e223488%_
                  (lambda (_%id223663%_)
                    (let* ((_%sym223665%_
                            (if (let ((__tmp224347
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224347))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223663%_))
                                '#f))
                           (_%$e223667%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223665%_))))
                      (if _%$e223667%_
                          ((lambda (_%klass223670%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223665%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223665%_
                                                     (cons (let ((__method224321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223670%_ 'typedecl))))
                     (if __method224321
                         (let ()
                           (declare (not safe))
                           (__method224321 _%klass223670%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223670%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223665%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223665%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223667%_)
                          (let ((_%$e223672%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223665%_))))
                            (if _%$e223672%_
                                ((lambda (_%type223675%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223665%_
                                      '" "
                                      _%type223675%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223675%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223665%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223665%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223675%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223665%_
                                                   (cons (let ((__method224322
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223675%_ 'typedecl))))
                   (if __method224322
                       (let ()
                         (declare (not safe))
                         (__method224322 _%type223675%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223675%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223672%_)
                                '(begin))))))))
          (let* ((_%__stx223933223934%_ _%stx223486%_)
                 (_%g223491223529%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223933223934%_)))))
            (let ((_%__kont223935223936%_
                   (lambda (_%g223493223645%_)
                     (_%generate-e223488%_ _%g223493223645%_)))
                  (_%__kont223937223938%_
                   (lambda (_%g223506223580%_)
                     (let ((_%types223606%_
                            (map _%generate-e223488%_
                                 (let ((__tmp224348
                                        (lambda (_%g223598223601%_
                                                 _%g223599223603%_)
                                          (cons _%g223598223601%_
                                                _%g223599223603%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224348
                                    '()
                                    _%g223506223580%_)))))
                       (cons 'begin _%types223606%_)))))
              (let ((_%__match223988223989%_
                     (lambda (_%e223507223534%_
                              _%hd223508223537%_
                              _%tl223509223539%_
                              _%e223510223542%_
                              _%hd223511223545%_
                              _%tl223512223547%_
                              _%__splice223939223940%_
                              _%target223513223550%_
                              _%tl223515223552%_)
                       (letrec ((_%loop223516223555%_
                                 (lambda (_%hd223514223558%_
                                          _%id223520223560%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223514223558%_))
                                       (let ((_%e223517223562%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223514223558%_))))
                                         (let ((_%lp-tl223519223567%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223517223562%_)))
                                               (_%lp-hd223518223565%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223517223562%_))))
                                           (_%loop223516223555%_
                                            _%lp-tl223519223567%_
                                            (cons _%lp-hd223518223565%_
                                                  _%id223520223560%_))))
                                       (let ((_%id223521223570%_
                                              (reverse _%id223520223560%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223512223547%_))
                                             (let ((_%e223522223572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223512223547%_))))
                                               (let ((_%tl223524223577%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223522223572%_)))
                                                     (_%hd223523223575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223522223572%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223524223577%_))
                                                     (_%__kont223937223938%_
                                                      _%id223521223570%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223491223529%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223491223529%_))))))))
                         (_%loop223516223555%_ _%target223513223550%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223933223934%_))
                    (let ((_%e223494223613%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223933223934%_))))
                      (let ((_%tl223496223618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223494223613%_)))
                            (_%hd223495223616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223494223613%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223496223618%_))
                            (let ((_%e223497223621%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223496223618%_))))
                              (let ((_%tl223499223626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223497223621%_)))
                                    (_%hd223498223624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223497223621%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223498223624%_))
                                    (let ((_%e223500223629%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223498223624%_))))
                                      (let ((_%tl223502223634%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223500223629%_)))
                                            (_%hd223501223632%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223500223629%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223502223634%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223499223626%_))
                                                (let ((_%e223503223637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223499223626%_))))
                                                  (let ((_%tl223505223642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223503223637%_)))
                                                        (_%hd223504223640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223503223637%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223505223642%_))
                                                        (_%__kont223935223936%_
                                                         _%hd223501223632%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223498223624%_))
                                                            (let ((_%__splice223939223940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223498223624%_
                              '0))))
                      (let ((_%tl223515223552%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223939223940%_ '1)))
                            (_%target223513223550%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223939223940%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223515223552%_))
                            (_%__match223988223989%_
                             _%e223494223613%_
                             _%hd223495223616%_
                             _%tl223496223618%_
                             _%e223497223621%_
                             _%hd223498223624%_
                             _%tl223499223626%_
                             _%__splice223939223940%_
                             _%target223513223550%_
                             _%tl223515223552%_)
                            (let ()
                              (declare (not safe))
                              (_%g223491223529%_)))))
                    (let () (declare (not safe)) (_%g223491223529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223498223624%_))
                                                    (let ((_%__splice223939223940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223498223624%_
                                                              '0))))
                                                      (let ((_%tl223515223552%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223939223940%_ '1)))
                    (_%target223513223550%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223939223940%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223515223552%_))
                    (_%__match223988223989%_
                     _%e223494223613%_
                     _%hd223495223616%_
                     _%tl223496223618%_
                     _%e223497223621%_
                     _%hd223498223624%_
                     _%tl223499223626%_
                     _%__splice223939223940%_
                     _%target223513223550%_
                     _%tl223515223552%_)
                    (let () (declare (not safe)) (_%g223491223529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223491223529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223498223624%_))
                                                (let ((_%__splice223939223940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223498223624%_
                                                          '0))))
                                                  (let ((_%tl223515223552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223939223940%_
                                                            '1)))
                                                        (_%target223513223550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223939223940%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223515223552%_))
                                                        (_%__match223988223989%_
                                                         _%e223494223613%_
                                                         _%hd223495223616%_
                                                         _%tl223496223618%_
                                                         _%e223497223621%_
                                                         _%hd223498223624%_
                                                         _%tl223499223626%_
                                                         _%__splice223939223940%_
                                                         _%target223513223550%_
                                                         _%tl223515223552%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223491223529%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223491223529%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223498223624%_))
                                        (let ((_%__splice223939223940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223498223624%_
                                                  '0))))
                                          (let ((_%tl223515223552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223939223940%_
                                                    '1)))
                                                (_%target223513223550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223939223940%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223515223552%_))
                                                (_%__match223988223989%_
                                                 _%e223494223613%_
                                                 _%hd223495223616%_
                                                 _%tl223496223618%_
                                                 _%e223497223621%_
                                                 _%hd223498223624%_
                                                 _%tl223499223626%_
                                                 _%__splice223939223940%_
                                                 _%target223513223550%_
                                                 _%tl223515223552%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223491223529%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223491223529%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223491223529%_)))))
                    (let () (declare (not safe)) (_%g223491223529%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self223038%_ _%stx223039%_)
        (let* ((_%__stx223991223992%_ _%stx223039%_)
               (_%g223043223145%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223991223992%_)))))
          (let ((_%__kont223993223994%_
                 (lambda (_%g223045223435%_
                          _%g223046223436%_
                          _%g223047223437%_
                          _%g223048223438%_
                          _%g223049223439%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223048223438%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223047223437%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223046223436%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g223045223435%_))
                                                 '())))))))
                (_%__kont223995223996%_
                 (lambda (_%g223098223261%_
                          _%g223099223262%_
                          _%g223100223263%_
                          _%g223101223264%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223100223263%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223099223262%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223098223261%_))
                                           (cons '#f '())))))))
                (_%__kont223997223998%_ (lambda () '(begin))))
            (let ((_%__match224126224127%_
                   (lambda (_%e223050223307%_
                            _%hd223051223310%_
                            _%tl223052223312%_
                            _%e223053223315%_
                            _%hd223054223318%_
                            _%tl223055223320%_
                            _%e223056223323%_
                            _%hd223057223326%_
                            _%tl223058223328%_
                            _%e223059223331%_
                            _%hd223060223334%_
                            _%tl223061223336%_
                            _%e223062223339%_
                            _%hd223063223342%_
                            _%tl223064223344%_
                            _%e223065223347%_
                            _%hd223066223350%_
                            _%tl223067223352%_
                            _%e223068223355%_
                            _%hd223069223358%_
                            _%tl223070223360%_
                            _%e223071223363%_
                            _%hd223072223366%_
                            _%tl223073223368%_
                            _%e223074223371%_
                            _%hd223075223374%_
                            _%tl223076223376%_
                            _%e223077223379%_
                            _%hd223078223382%_
                            _%tl223079223384%_
                            _%e223080223387%_
                            _%hd223081223390%_
                            _%tl223082223392%_
                            _%e223083223395%_
                            _%hd223084223398%_
                            _%tl223085223400%_
                            _%e223086223403%_
                            _%hd223087223406%_
                            _%tl223088223408%_
                            _%e223089223411%_
                            _%hd223090223414%_
                            _%tl223091223416%_
                            _%e223092223419%_
                            _%hd223093223422%_
                            _%tl223094223424%_
                            _%e223095223427%_
                            _%hd223096223430%_
                            _%tl223097223432%_)
                     (let ((_%g223045223435%_ _%hd223096223430%_)
                           (_%g223046223436%_ _%hd223087223406%_)
                           (_%g223047223437%_ _%hd223078223382%_)
                           (_%g223048223438%_ _%hd223069223358%_)
                           (_%g223049223439%_ _%hd223060223334%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g223049223439%_
                              'bind-method!))
                           (_%__kont223993223994%_
                            _%g223045223435%_
                            _%g223046223436%_
                            _%g223047223437%_
                            _%g223048223438%_
                            _%g223049223439%_)
                           (_%__kont223997223998%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223991223992%_))
                  (let ((_%e223050223307%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223991223992%_))))
                    (let ((_%tl223052223312%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223050223307%_)))
                          (_%hd223051223310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223050223307%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl223052223312%_))
                          (let ((_%e223053223315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl223052223312%_))))
                            (let ((_%tl223055223320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223053223315%_)))
                                  (_%hd223054223318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223053223315%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd223054223318%_))
                                  (let ((_%e223056223323%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd223054223318%_))))
                                    (let ((_%tl223058223328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223056223323%_)))
                                          (_%hd223057223326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223056223323%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd223057223326%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd223057223326%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223058223328%_))
                                                  (let ((_%e223059223331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223058223328%_))))
                                                    (let ((_%tl223061223336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223059223331%_)))
                                                          (_%hd223060223334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223059223331%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl223061223336%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl223055223320%_))
                      (let ((_%e223062223339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl223055223320%_))))
                        (let ((_%tl223064223344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223062223339%_)))
                              (_%hd223063223342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223062223339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd223063223342%_))
                              (let ((_%e223065223347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd223063223342%_))))
                                (let ((_%tl223067223352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223065223347%_)))
                                      (_%hd223066223350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223065223347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd223066223350%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd223066223350%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl223067223352%_))
                                              (let ((_%e223068223355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl223067223352%_))))
                                                (let ((_%tl223070223360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e223068223355%_)))
                                                      (_%hd223069223358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e223068223355%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223070223360%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl223064223344%_))
                                                          (let ((_%e223071223363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl223064223344%_))))
                    (let ((_%tl223073223368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223071223363%_)))
                          (_%hd223072223366%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223071223363%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223072223366%_))
                          (let ((_%e223074223371%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223072223366%_))))
                            (let ((_%tl223076223376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223074223371%_)))
                                  (_%hd223075223374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223074223371%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd223075223374%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd223075223374%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl223076223376%_))
                                          (let ((_%e223077223379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl223076223376%_))))
                                            (let ((_%tl223079223384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223077223379%_)))
                                                  (_%hd223078223382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223077223379%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223079223384%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl223073223368%_))
                                                      (let ((_%e223080223387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl223073223368%_))))
                (let ((_%tl223082223392%_
                       (let () (declare (not safe)) (##cdr _%e223080223387%_)))
                      (_%hd223081223390%_
                       (let ()
                         (declare (not safe))
                         (##car _%e223080223387%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd223081223390%_))
                      (let ((_%e223083223395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd223081223390%_))))
                        (let ((_%tl223085223400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223083223395%_)))
                              (_%hd223084223398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223083223395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd223084223398%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd223084223398%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl223085223400%_))
                                      (let ((_%e223086223403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl223085223400%_))))
                                        (let ((_%tl223088223408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223086223403%_)))
                                              (_%hd223087223406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223086223403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223088223408%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223082223392%_))
                                                  (let ((_%e223089223411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223082223392%_))))
                                                    (let ((_%tl223091223416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223089223411%_)))
                                                          (_%hd223090223414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223089223411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd223090223414%_))
                                                          (let ((_%e223092223419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd223090223414%_))))
                    (let ((_%tl223094223424%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223092223419%_)))
                          (_%hd223093223422%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223092223419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd223093223422%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd223093223422%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl223094223424%_))
                                  (let ((_%e223095223427%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl223094223424%_))))
                                    (let ((_%tl223097223432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223095223427%_)))
                                          (_%hd223096223430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223095223427%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl223097223432%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223091223416%_))
                                              (_%__match224126224127%_
                                               _%e223050223307%_
                                               _%hd223051223310%_
                                               _%tl223052223312%_
                                               _%e223053223315%_
                                               _%hd223054223318%_
                                               _%tl223055223320%_
                                               _%e223056223323%_
                                               _%hd223057223326%_
                                               _%tl223058223328%_
                                               _%e223059223331%_
                                               _%hd223060223334%_
                                               _%tl223061223336%_
                                               _%e223062223339%_
                                               _%hd223063223342%_
                                               _%tl223064223344%_
                                               _%e223065223347%_
                                               _%hd223066223350%_
                                               _%tl223067223352%_
                                               _%e223068223355%_
                                               _%hd223069223358%_
                                               _%tl223070223360%_
                                               _%e223071223363%_
                                               _%hd223072223366%_
                                               _%tl223073223368%_
                                               _%e223074223371%_
                                               _%hd223075223374%_
                                               _%tl223076223376%_
                                               _%e223077223379%_
                                               _%hd223078223382%_
                                               _%tl223079223384%_
                                               _%e223080223387%_
                                               _%hd223081223390%_
                                               _%tl223082223392%_
                                               _%e223083223395%_
                                               _%hd223084223398%_
                                               _%tl223085223400%_
                                               _%e223086223403%_
                                               _%hd223087223406%_
                                               _%tl223088223408%_
                                               _%e223089223411%_
                                               _%hd223090223414%_
                                               _%tl223091223416%_
                                               _%e223092223419%_
                                               _%hd223093223422%_
                                               _%tl223094223424%_
                                               _%e223095223427%_
                                               _%hd223096223430%_
                                               _%tl223097223432%_)
                                              (_%__kont223997223998%_))
                                          (_%__kont223997223998%_))))
                                  (_%__kont223997223998%_))
                              (_%__kont223997223998%_))
                          (_%__kont223997223998%_))))
                  (_%__kont223997223998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223082223392%_))
                                                      (if (let ((__tmp224349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224349 'bind-method!))
                  (let ((_%g223098223261%_ _%hd223087223406%_)
                        (_%g223099223262%_ _%hd223078223382%_)
                        (_%g223100223263%_ _%hd223069223358%_)
                        (_%g223101223264%_ _%hd223060223334%_))
                    (_%__kont223995223996%_
                     _%g223098223261%_
                     _%g223099223262%_
                     _%g223100223263%_
                     _%g223101223264%_))
                  (_%__kont223997223998%_))
              (_%__kont223997223998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223997223998%_))))
                                      (_%__kont223997223998%_))
                                  (_%__kont223997223998%_))
                              (_%__kont223997223998%_))))
                      (_%__kont223997223998%_))))
              (_%__kont223997223998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223997223998%_))))
                                          (_%__kont223997223998%_))
                                      (_%__kont223997223998%_))
                                  (_%__kont223997223998%_))))
                          (_%__kont223997223998%_))))
                  (_%__kont223997223998%_))
              (_%__kont223997223998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223997223998%_))
                                          (_%__kont223997223998%_))
                                      (_%__kont223997223998%_))))
                              (_%__kont223997223998%_))))
                      (_%__kont223997223998%_))
                  (_%__kont223997223998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223997223998%_))
                                              (_%__kont223997223998%_))
                                          (_%__kont223997223998%_))))
                                  (_%__kont223997223998%_))))
                          (_%__kont223997223998%_))))
                  (_%__kont223997223998%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222862%_ _%stx222863%_)
        (let* ((_%__stx224235224236%_ _%stx222863%_)
               (_%g222866222906%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224235224236%_)))))
          (let ((_%__kont224237224238%_
                 (lambda (_%g222868223012%_ _%g222869223013%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222869223013%_))
                               (cons _%g222868223012%_ '())))))
                (_%__kont224239224240%_
                 (lambda (_%g222891222935%_ _%g222892222936%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224235224236%_))
                (let ((_%e222870222956%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224235224236%_))))
                  (let ((_%tl222872222961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222870222956%_)))
                        (_%hd222871222959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222870222956%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222872222961%_))
                        (let ((_%e222873222964%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222872222961%_))))
                          (let ((_%tl222875222969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222873222964%_)))
                                (_%hd222874222967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222873222964%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222874222967%_))
                                (let ((_%e222876222972%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222874222967%_))))
                                  (let ((_%tl222878222977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222876222972%_)))
                                        (_%hd222877222975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222876222972%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222877222975%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222877222975%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222878222977%_))
                                                (let ((_%e222879222980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222878222977%_))))
                                                  (let ((_%tl222881222985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222879222980%_)))
                                                        (_%hd222880222983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222879222980%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222881222985%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222875222969%_))
                                                            (let ((_%e222882222988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222875222969%_))))
                      (let ((_%tl222884222993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222882222988%_)))
                            (_%hd222883222991%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222882222988%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222883222991%_))
                            (let ((_%e222885222996%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222883222991%_))))
                              (let ((_%tl222887223001%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222885222996%_)))
                                    (_%hd222886222999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222885222996%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222886222999%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222886222999%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222887223001%_))
                                            (let ((_%e222888223004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222887223001%_))))
                                              (let ((_%tl222890223009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222888223004%_)))
                                                    (_%hd222889223007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222888223004%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222890223009%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222884222993%_))
                                                        (_%__kont224237224238%_
                                                         _%hd222889223007%_
                                                         _%hd222880222983%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222866222906%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222884222993%_))
                                                        (_%__kont224239224240%_
                                                         _%hd222883222991%_
                                                         _%hd222874222967%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222866222906%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222884222993%_))
                                                (_%__kont224239224240%_
                                                 _%hd222883222991%_
                                                 _%hd222874222967%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222866222906%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222884222993%_))
                                            (_%__kont224239224240%_
                                             _%hd222883222991%_
                                             _%hd222874222967%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222866222906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222884222993%_))
                                        (_%__kont224239224240%_
                                         _%hd222883222991%_
                                         _%hd222874222967%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222866222906%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222884222993%_))
                                (_%__kont224239224240%_
                                 _%hd222883222991%_
                                 _%hd222874222967%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222866222906%_))))))
                    (let () (declare (not safe)) (_%g222866222906%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222875222969%_))
                    (let ((_%e222899222927%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222875222969%_))))
                      (let ((_%tl222901222932%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222899222927%_)))
                            (_%hd222900222930%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222899222927%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222901222932%_))
                            (_%__kont224239224240%_
                             _%hd222900222930%_
                             _%hd222874222967%_)
                            (let ()
                              (declare (not safe))
                              (_%g222866222906%_)))))
                    (let () (declare (not safe)) (_%g222866222906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222875222969%_))
                                                    (let ((_%e222899222927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222875222969%_))))
                                                      (let ((_%tl222901222932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222899222927%_)))
                    (_%hd222900222930%_
                     (let () (declare (not safe)) (##car _%e222899222927%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222901222932%_))
                    (_%__kont224239224240%_
                     _%hd222900222930%_
                     _%hd222874222967%_)
                    (let () (declare (not safe)) (_%g222866222906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222866222906%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222875222969%_))
                                                (let ((_%e222899222927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222875222969%_))))
                                                  (let ((_%tl222901222932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222899222927%_)))
                                                        (_%hd222900222930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222899222927%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222901222932%_))
                                                        (_%__kont224239224240%_
                                                         _%hd222900222930%_
                                                         _%hd222874222967%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222866222906%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222866222906%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222875222969%_))
                                            (let ((_%e222899222927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222875222969%_))))
                                              (let ((_%tl222901222932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222899222927%_)))
                                                    (_%hd222900222930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222899222927%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222901222932%_))
                                                    (_%__kont224239224240%_
                                                     _%hd222900222930%_
                                                     _%hd222874222967%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222866222906%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222866222906%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222875222969%_))
                                    (let ((_%e222899222927%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222875222969%_))))
                                      (let ((_%tl222901222932%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222899222927%_)))
                                            (_%hd222900222930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222899222927%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222901222932%_))
                                            (_%__kont224239224240%_
                                             _%hd222900222930%_
                                             _%hd222874222967%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222866222906%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222866222906%_))))))
                        (let () (declare (not safe)) (_%g222866222906%_)))))
                (let () (declare (not safe)) (_%g222866222906%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222849%_)
        (let ((_%self222852%_ _%self222849%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222852%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222623%_)
        (let* ((_%self222626%_ _%self222623%_)
               (_%self222635222651%_ _%self222626%_)
               (_%E222637222654%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222635222651%_
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
               (_%K222638222669%_
                (lambda (_%methods222657%_
                         _%metaclass222658%_
                         _%system?222659%_
                         _%final?222660%_
                         _%struct?222661%_
                         _%constructor222662%_
                         _%fields222663%_
                         _%slots222664%_
                         _%precendence-list222665%_
                         _%super222666%_
                         _%id222667%_)
                  (cons '@class
                        (cons _%id222667%_
                              (cons _%super222666%_
                                    (cons _%precendence-list222665%_
                                          (cons _%slots222664%_
                                                (cons _%fields222663%_
                                                      (cons _%constructor222662%_
                                                            (cons _%struct?222661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222660%_
                                (cons _%system?222659%_
                                      (cons _%metaclass222658%_
                                            (cons (if _%methods222657%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222657%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222639222672%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '1 '#f '#f)))
               (_%id222675%_ _%e222639222672%_)
               (_%e222640222677%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '2 '#f '#f)))
               (_%super222680%_ _%e222640222677%_)
               (_%e222641222682%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '3 '#f '#f)))
               (_%precendence-list222685%_ _%e222641222682%_)
               (_%e222642222687%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '4 '#f '#f)))
               (_%slots222690%_ _%e222642222687%_)
               (_%e222643222692%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '5 '#f '#f)))
               (_%fields222695%_ _%e222643222692%_)
               (_%e222644222697%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '6 '#f '#f)))
               (_%constructor222700%_ _%e222644222697%_)
               (_%e222645222702%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '7 '#f '#f)))
               (_%struct?222705%_ _%e222645222702%_)
               (_%e222646222707%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '8 '#f '#f)))
               (_%final?222710%_ _%e222646222707%_)
               (_%e222647222712%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222635222651%_ '9 '#f '#f)))
               (_%system?222715%_ _%e222647222712%_)
               (_%e222648222717%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222635222651%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222720%_ _%e222648222717%_)
               (_%e222649222722%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222635222651%_
                   '11
                   '#f
                   '#f)))
               (_%methods222725%_ _%e222649222722%_))
          (_%K222638222669%_
           _%methods222725%_
           _%metaclass222720%_
           _%system?222715%_
           _%final?222710%_
           _%struct?222705%_
           _%constructor222700%_
           _%fields222695%_
           _%slots222690%_
           _%precendence-list222685%_
           _%super222680%_
           _%id222675%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222488%_)
        (let ((_%self222491%_ _%self222488%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222491%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222353%_)
        (let ((_%self222356%_ _%self222353%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222356%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222218%_)
        (let ((_%self222221%_ _%self222218%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222221%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222221%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222221%_
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
      (lambda (_%self222083%_)
        (let ((_%self222086%_ _%self222083%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222086%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222086%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222086%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221948%_)
        (let ((_%self221951%_ _%self221948%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221951%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221951%_
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
      (lambda (_%self221762%_)
        (let* ((_%self221765%_ _%self221762%_)
               (_%self221774221783%_ _%self221765%_)
               (_%E221776221786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221774221783%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221777221805%_
                (lambda (_%dispatch221789%_
                         _%arity221790%_
                         _%signature221791%_)
                  (if _%signature221791%_
                      (let ((_%signature221793%_ _%signature221791%_))
                        (cons '@lambda
                              (cons _%arity221790%_
                                    (cons _%dispatch221789%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221793%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221793%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221793%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221793%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221793%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221790%_
                                  (cons _%dispatch221789%_ '()))))))
               (_%e221778221808%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221774221783%_ '1 '#f '#f)))
               (_%e221779221811%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221774221783%_ '2 '#f '#f)))
               (_%signature221814%_ _%e221779221811%_)
               (_%e221780221816%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221774221783%_ '3 '#f '#f)))
               (_%arity221819%_ _%e221780221816%_)
               (_%e221781221821%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221774221783%_ '4 '#f '#f)))
               (_%dispatch221824%_ _%e221781221821%_))
          (_%K221777221805%_
           _%dispatch221824%_
           _%arity221819%_
           _%signature221814%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221622%_)
        (let ((_%self221625%_ _%self221622%_))
          (letrec ((_%clause-e221636%_
                    (lambda (_%clause221638%_)
                      (cdr (let ((__method224323
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221638%_
                                     'typedecl))))
                             (if __method224323
                                 (let ()
                                   (declare (not safe))
                                   (__method224323 _%clause221638%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221638%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221636%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221625%_
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
      (lambda (_%self221487%_)
        (let ((_%self221490%_ _%self221487%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221490%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221490%_
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
      (lambda (_%self221352%_)
        (let ((_%self221355%_ _%self221352%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221355%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221355%_
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
      (lambda (_%self221217%_)
        (let ((_%self221220%_ _%self221217%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221220%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
