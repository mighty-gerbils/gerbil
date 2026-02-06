(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770336550)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224327
                   (let ((__obj224321
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
                       (gxc#optimizer-info:::init! __obj224321))
                     __obj224321)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224327)))))
    (define gxc#optimize!
      (lambda (_%ctx223929%_)
        (let ((__tmp224329
               (lambda ()
                 (let ((__tmp224331
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223929%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223929%_)
                          (let ((__tmp224333
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224332
                                 (##structure-ref
                                  _%ctx223929%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224333 __tmp224332 '#t))
                          (let ((_%code223933%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223929%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223929%_
                             _%code223933%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224330
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224331
                    gxc#current-compile-local-type
                    __tmp224330))))
              (__tmp224328 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224329
           gxc#current-compile-mutators
           __tmp224328))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223915%_)
        (letrec ((_%load-it!223917%_
                  (lambda (_%id223927%_)
                    (if (let ((__tmp224334
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224334 _%id223927%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223927%_)
                          (let ((__tmp224335
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224335 _%id223927%_ '#t)))))))
          (let* ((_%modid223919%_
                  (##structure-ref
                   _%ctx223915%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223921%_ (symbol->string _%modid223919%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223921%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223921%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223917%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223917%_
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
      (lambda (_%ctx223852%_)
        (letrec* ((_%deps223854%_
                   (let* ((_%imports223905%_
                           (##structure-ref
                            _%ctx223852%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223907%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223852%_))))
                     (if _%$e223907%_
                         ((lambda (_%g223909223911%_)
                            (cons _%g223909223911%_ _%imports223905%_))
                          _%$e223907%_)
                         _%imports223905%_))))
          (let _%lp223856%_ ((_%rest223858%_ _%deps223854%_))
            (let* ((_%rest223859223867%_ _%rest223858%_)
                   (_%else223861223875%_ (lambda () '#!void))
                   (_%K223863223893%_
                    (lambda (_%rest223878%_ _%hd223879%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223879%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224337
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224336
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223879%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224337 __tmp224336))
                                '#!void
                                (begin
                                  (let ((_%$e223882%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223879%_))))
                                    (if _%$e223882%_
                                        ((lambda (_%pre223885%_)
                                           (_%lp223856%_
                                            (cons _%pre223885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223879%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223882%_)
                                        (_%lp223856%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223879%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223879%_)))
                            (_%lp223856%_ _%rest223878%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223879%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224339
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224338
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223879%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224339 __tmp224338))
                                    '#!void
                                    (begin
                                      (_%lp223856%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223879%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223879%_)))
                                (_%lp223856%_ _%rest223878%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223879%_
                                     'gx#module-import::t))
                                  (_%lp223856%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223879%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223878%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223879%_
                                         'gx#module-export::t))
                                      (_%lp223856%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223879%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223878%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223879%_
                                             'gx#import-set::t))
                                          (_%lp223856%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223879%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223878%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223879%_))))))))))
              (if (pair? _%rest223859223867%_)
                  (let ((_%hd223864223896%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223859223867%_)))
                        (_%tl223865223898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223859223867%_))))
                    (let* ((_%hd223901%_ _%hd223864223896%_)
                           (_%rest223903%_ _%tl223865223898%_))
                      (_%K223863223893%_ _%rest223903%_ _%hd223901%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223832%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223832%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223832%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223834%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223836%_
                    (##structure-ref
                     _%ctx223832%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223838%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223834%_ _%id223836%_)))
                   (_%$e223841%_ _%mod223838%_))
              (if _%$e223841%_
                  _%$e223841%_
                  (let* ((_%mod223844%_
                          (gxc#optimizer-import-ssxi _%ctx223832%_))
                         (_%val223849%_
                          (let ((_%$e223846%_ _%mod223844%_))
                            (if _%$e223846%_ _%$e223846%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223834%_ _%id223836%_ _%val223849%_))
                    _%val223849%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223830%_)
        (if (##structure-ref _%ctx223830%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223830%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223808%_)
        (letrec ((_%catch-e223810%_
                  (lambda (_%exn223828%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223828%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223828%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223808%_))))
                    '#f))
                 (_%import-e223811%_
                  (lambda ()
                    (let* ((_%str-id223814%_
                            (let ((__tmp224340
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223808%_))))
                              (declare (not safe))
                              (##string-append __tmp224340 '".ssxi")))
                           (_%artefact-path223821%_
                            (let ((_%odir223815223817%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223815223817%_
                                  (let ((_%odir223819%_ _%odir223815223817%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223814%_
                                        '".ss"))
                                     _%odir223819%_))
                                  '#f)))
                           (_%library-path223823%_
                            (let ((__tmp224341
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223814%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224341)))
                           (_%ssxi-path223825%_
                            (if (and _%artefact-path223821%_
                                     (file-exists? _%artefact-path223821%_))
                                _%artefact-path223821%_
                                _%library-path223823%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223825%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223825%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223810%_ _%import-e223811%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223793%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223793%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223793%_))
        (let* ((_%stx223795%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223793%_)))
               (_%stx223797%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223795%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223797%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223797%_))
          (let _%fixpoint223800%_ ((_%current223802%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223797%_))
            (let ((_%refined223804%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223802%_ _%refined223804%_)
                  '#!void
                  (_%fixpoint223800%_ _%refined223804%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223797%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223797%_))
          (let ((_%stx223806%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223797%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223806%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224343 (list gxc#::generate-runtime-empty::t))
            (__tmp224342 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224343
         '()
         __tmp224342
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223790%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223790%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224344
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
        (__make-atomic-promise __tmp224344)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223782%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223785%_
                (let ((__obj224323
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224323))
               (__tmp224345
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223785%_ _%stx223782%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224345
           gxc#current-compile-method
           _%self223785%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223742%_ _%stx223743%_)
        (let* ((_%g223745223755%_
                (lambda (_%g223746223752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223746223752%_))))
               (_%g223744223779%_
                (lambda (_%g223746223758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223746223758%_))
                      (let ((_%e223748223760%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223746223758%_))))
                        (let ((_%hd223749223763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223748223760%_)))
                              (_%tl223750223765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223748223760%_))))
                          ((lambda (_%g223747223768%_)
                             (let ((__tmp224348
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223742%_
                                         _%stx223743%_))))
                                   (__tmp224346
                                    (let ((__tmp224347
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224347 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224348
                                gx#current-expander-phi
                                __tmp224346)))
                           _%tl223750223765%_)))
                      (_%g223745223755%_ _%g223746223758%_)))))
          (_%g223744223779%_ _%stx223743%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223681%_ _%stx223682%_)
        (let* ((_%g223684223698%_
                (lambda (_%g223685223695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223685223695%_))))
               (_%g223683223739%_
                (lambda (_%g223685223701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223685223701%_))
                      (let ((_%e223688223703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223685223701%_))))
                        (let ((_%hd223689223706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223688223703%_)))
                              (_%tl223690223708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223688223703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223690223708%_))
                              (let ((_%e223691223711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223690223708%_))))
                                (let ((_%hd223692223714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223691223711%_)))
                                      (_%tl223693223716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223691223711%_))))
                                  ((lambda (_%g223686223719%_
                                            _%g223687223720%_)
                                     (let* ((_%ctx223733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223687223720%_)))
                                            (_%code223735%_
                                             (##structure-ref
                                              _%ctx223733%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224349
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223681%_
                                                  _%code223735%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224349
                                        gx#current-expander-context
                                        _%ctx223733%_)))
                                   _%tl223693223716%_
                                   _%hd223692223714%_)))
                              (_%g223684223698%_ _%g223685223701%_))))
                      (_%g223684223698%_ _%g223685223701%_)))))
          (_%g223683223739%_ _%stx223682%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223488%_ _%stx223489%_)
        (letrec ((_%generate-e223491%_
                  (lambda (_%id223666%_)
                    (let* ((_%sym223668%_
                            (if (let ((__tmp224350
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224350))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223666%_))
                                '#f))
                           (_%$e223670%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223668%_))))
                      (if _%$e223670%_
                          ((lambda (_%klass223673%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223668%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223668%_
                                                     (cons (let ((__method224324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223673%_ 'typedecl))))
                     (if __method224324
                         (let ()
                           (declare (not safe))
                           (__method224324 _%klass223673%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223673%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223668%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223668%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223670%_)
                          (let ((_%$e223675%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223668%_))))
                            (if _%$e223675%_
                                ((lambda (_%type223678%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223668%_
                                      '" "
                                      _%type223678%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223678%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223668%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223668%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223678%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223668%_
                                                   (cons (let ((__method224325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223678%_ 'typedecl))))
                   (if __method224325
                       (let ()
                         (declare (not safe))
                         (__method224325 _%type223678%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223678%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223675%_)
                                '(begin))))))))
          (let* ((_%__stx223936223937%_ _%stx223489%_)
                 (_%g223494223532%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223936223937%_)))))
            (let ((_%__kont223938223939%_
                   (lambda (_%g223496223648%_)
                     (_%generate-e223491%_ _%g223496223648%_)))
                  (_%__kont223940223941%_
                   (lambda (_%g223509223583%_)
                     (let ((_%types223609%_
                            (map _%generate-e223491%_
                                 (let ((__tmp224351
                                        (lambda (_%g223601223604%_
                                                 _%g223602223606%_)
                                          (cons _%g223601223604%_
                                                _%g223602223606%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224351
                                    '()
                                    _%g223509223583%_)))))
                       (cons 'begin _%types223609%_)))))
              (let ((_%__match223991223992%_
                     (lambda (_%e223510223537%_
                              _%hd223511223540%_
                              _%tl223512223542%_
                              _%e223513223545%_
                              _%hd223514223548%_
                              _%tl223515223550%_
                              _%__splice223942223943%_
                              _%target223516223553%_
                              _%tl223518223555%_)
                       (letrec ((_%loop223519223558%_
                                 (lambda (_%hd223517223561%_
                                          _%id223523223563%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223517223561%_))
                                       (let ((_%e223520223565%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223517223561%_))))
                                         (let ((_%lp-tl223522223570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223520223565%_)))
                                               (_%lp-hd223521223568%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223520223565%_))))
                                           (_%loop223519223558%_
                                            _%lp-tl223522223570%_
                                            (cons _%lp-hd223521223568%_
                                                  _%id223523223563%_))))
                                       (let ((_%id223524223573%_
                                              (reverse _%id223523223563%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223515223550%_))
                                             (let ((_%e223525223575%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223515223550%_))))
                                               (let ((_%tl223527223580%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223525223575%_)))
                                                     (_%hd223526223578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223525223575%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223527223580%_))
                                                     (_%__kont223940223941%_
                                                      _%id223524223573%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223494223532%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223494223532%_))))))))
                         (_%loop223519223558%_ _%target223516223553%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223936223937%_))
                    (let ((_%e223497223616%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223936223937%_))))
                      (let ((_%tl223499223621%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223497223616%_)))
                            (_%hd223498223619%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223497223616%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223499223621%_))
                            (let ((_%e223500223624%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223499223621%_))))
                              (let ((_%tl223502223629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223500223624%_)))
                                    (_%hd223501223627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223500223624%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223501223627%_))
                                    (let ((_%e223503223632%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223501223627%_))))
                                      (let ((_%tl223505223637%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223503223632%_)))
                                            (_%hd223504223635%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223503223632%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223505223637%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223502223629%_))
                                                (let ((_%e223506223640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223502223629%_))))
                                                  (let ((_%tl223508223645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223506223640%_)))
                                                        (_%hd223507223643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223506223640%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223508223645%_))
                                                        (_%__kont223938223939%_
                                                         _%hd223504223635%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223501223627%_))
                                                            (let ((_%__splice223942223943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223501223627%_
                              '0))))
                      (let ((_%tl223518223555%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223942223943%_ '1)))
                            (_%target223516223553%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223942223943%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223518223555%_))
                            (_%__match223991223992%_
                             _%e223497223616%_
                             _%hd223498223619%_
                             _%tl223499223621%_
                             _%e223500223624%_
                             _%hd223501223627%_
                             _%tl223502223629%_
                             _%__splice223942223943%_
                             _%target223516223553%_
                             _%tl223518223555%_)
                            (let ()
                              (declare (not safe))
                              (_%g223494223532%_)))))
                    (let () (declare (not safe)) (_%g223494223532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223501223627%_))
                                                    (let ((_%__splice223942223943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223501223627%_
                                                              '0))))
                                                      (let ((_%tl223518223555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223942223943%_ '1)))
                    (_%target223516223553%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223942223943%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223518223555%_))
                    (_%__match223991223992%_
                     _%e223497223616%_
                     _%hd223498223619%_
                     _%tl223499223621%_
                     _%e223500223624%_
                     _%hd223501223627%_
                     _%tl223502223629%_
                     _%__splice223942223943%_
                     _%target223516223553%_
                     _%tl223518223555%_)
                    (let () (declare (not safe)) (_%g223494223532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223494223532%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223501223627%_))
                                                (let ((_%__splice223942223943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223501223627%_
                                                          '0))))
                                                  (let ((_%tl223518223555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223942223943%_
                                                            '1)))
                                                        (_%target223516223553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223942223943%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223518223555%_))
                                                        (_%__match223991223992%_
                                                         _%e223497223616%_
                                                         _%hd223498223619%_
                                                         _%tl223499223621%_
                                                         _%e223500223624%_
                                                         _%hd223501223627%_
                                                         _%tl223502223629%_
                                                         _%__splice223942223943%_
                                                         _%target223516223553%_
                                                         _%tl223518223555%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223494223532%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223494223532%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223501223627%_))
                                        (let ((_%__splice223942223943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223501223627%_
                                                  '0))))
                                          (let ((_%tl223518223555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223942223943%_
                                                    '1)))
                                                (_%target223516223553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223942223943%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223518223555%_))
                                                (_%__match223991223992%_
                                                 _%e223497223616%_
                                                 _%hd223498223619%_
                                                 _%tl223499223621%_
                                                 _%e223500223624%_
                                                 _%hd223501223627%_
                                                 _%tl223502223629%_
                                                 _%__splice223942223943%_
                                                 _%target223516223553%_
                                                 _%tl223518223555%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223494223532%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223494223532%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223494223532%_)))))
                    (let () (declare (not safe)) (_%g223494223532%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self223041%_ _%stx223042%_)
        (let* ((_%__stx223994223995%_ _%stx223042%_)
               (_%g223046223148%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223994223995%_)))))
          (let ((_%__kont223996223997%_
                 (lambda (_%g223048223438%_
                          _%g223049223439%_
                          _%g223050223440%_
                          _%g223051223441%_
                          _%g223052223442%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223051223441%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223050223440%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223049223439%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g223048223438%_))
                                                 '())))))))
                (_%__kont223998223999%_
                 (lambda (_%g223101223264%_
                          _%g223102223265%_
                          _%g223103223266%_
                          _%g223104223267%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223103223266%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223102223265%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223101223264%_))
                                           (cons '#f '())))))))
                (_%__kont224000224001%_ (lambda () '(begin))))
            (let ((_%__match224129224130%_
                   (lambda (_%e223053223310%_
                            _%hd223054223313%_
                            _%tl223055223315%_
                            _%e223056223318%_
                            _%hd223057223321%_
                            _%tl223058223323%_
                            _%e223059223326%_
                            _%hd223060223329%_
                            _%tl223061223331%_
                            _%e223062223334%_
                            _%hd223063223337%_
                            _%tl223064223339%_
                            _%e223065223342%_
                            _%hd223066223345%_
                            _%tl223067223347%_
                            _%e223068223350%_
                            _%hd223069223353%_
                            _%tl223070223355%_
                            _%e223071223358%_
                            _%hd223072223361%_
                            _%tl223073223363%_
                            _%e223074223366%_
                            _%hd223075223369%_
                            _%tl223076223371%_
                            _%e223077223374%_
                            _%hd223078223377%_
                            _%tl223079223379%_
                            _%e223080223382%_
                            _%hd223081223385%_
                            _%tl223082223387%_
                            _%e223083223390%_
                            _%hd223084223393%_
                            _%tl223085223395%_
                            _%e223086223398%_
                            _%hd223087223401%_
                            _%tl223088223403%_
                            _%e223089223406%_
                            _%hd223090223409%_
                            _%tl223091223411%_
                            _%e223092223414%_
                            _%hd223093223417%_
                            _%tl223094223419%_
                            _%e223095223422%_
                            _%hd223096223425%_
                            _%tl223097223427%_
                            _%e223098223430%_
                            _%hd223099223433%_
                            _%tl223100223435%_)
                     (let ((_%g223048223438%_ _%hd223099223433%_)
                           (_%g223049223439%_ _%hd223090223409%_)
                           (_%g223050223440%_ _%hd223081223385%_)
                           (_%g223051223441%_ _%hd223072223361%_)
                           (_%g223052223442%_ _%hd223063223337%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g223052223442%_
                              'bind-method!))
                           (_%__kont223996223997%_
                            _%g223048223438%_
                            _%g223049223439%_
                            _%g223050223440%_
                            _%g223051223441%_
                            _%g223052223442%_)
                           (_%__kont224000224001%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223994223995%_))
                  (let ((_%e223053223310%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223994223995%_))))
                    (let ((_%tl223055223315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223053223310%_)))
                          (_%hd223054223313%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223053223310%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl223055223315%_))
                          (let ((_%e223056223318%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl223055223315%_))))
                            (let ((_%tl223058223323%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223056223318%_)))
                                  (_%hd223057223321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223056223318%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd223057223321%_))
                                  (let ((_%e223059223326%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd223057223321%_))))
                                    (let ((_%tl223061223331%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223059223326%_)))
                                          (_%hd223060223329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223059223326%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd223060223329%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd223060223329%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223061223331%_))
                                                  (let ((_%e223062223334%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223061223331%_))))
                                                    (let ((_%tl223064223339%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223062223334%_)))
                                                          (_%hd223063223337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223062223334%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl223064223339%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl223058223323%_))
                      (let ((_%e223065223342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl223058223323%_))))
                        (let ((_%tl223067223347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223065223342%_)))
                              (_%hd223066223345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223065223342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd223066223345%_))
                              (let ((_%e223068223350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd223066223345%_))))
                                (let ((_%tl223070223355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223068223350%_)))
                                      (_%hd223069223353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223068223350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd223069223353%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd223069223353%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl223070223355%_))
                                              (let ((_%e223071223358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl223070223355%_))))
                                                (let ((_%tl223073223363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e223071223358%_)))
                                                      (_%hd223072223361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e223071223358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223073223363%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl223067223347%_))
                                                          (let ((_%e223074223366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl223067223347%_))))
                    (let ((_%tl223076223371%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223074223366%_)))
                          (_%hd223075223369%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223074223366%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223075223369%_))
                          (let ((_%e223077223374%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223075223369%_))))
                            (let ((_%tl223079223379%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223077223374%_)))
                                  (_%hd223078223377%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223077223374%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd223078223377%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd223078223377%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl223079223379%_))
                                          (let ((_%e223080223382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl223079223379%_))))
                                            (let ((_%tl223082223387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223080223382%_)))
                                                  (_%hd223081223385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223080223382%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223082223387%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl223076223371%_))
                                                      (let ((_%e223083223390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl223076223371%_))))
                (let ((_%tl223085223395%_
                       (let () (declare (not safe)) (##cdr _%e223083223390%_)))
                      (_%hd223084223393%_
                       (let ()
                         (declare (not safe))
                         (##car _%e223083223390%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd223084223393%_))
                      (let ((_%e223086223398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd223084223393%_))))
                        (let ((_%tl223088223403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223086223398%_)))
                              (_%hd223087223401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223086223398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd223087223401%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd223087223401%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl223088223403%_))
                                      (let ((_%e223089223406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl223088223403%_))))
                                        (let ((_%tl223091223411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223089223406%_)))
                                              (_%hd223090223409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223089223406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223091223411%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223085223395%_))
                                                  (let ((_%e223092223414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223085223395%_))))
                                                    (let ((_%tl223094223419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223092223414%_)))
                                                          (_%hd223093223417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223092223414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd223093223417%_))
                                                          (let ((_%e223095223422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd223093223417%_))))
                    (let ((_%tl223097223427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223095223422%_)))
                          (_%hd223096223425%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223095223422%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd223096223425%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd223096223425%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl223097223427%_))
                                  (let ((_%e223098223430%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl223097223427%_))))
                                    (let ((_%tl223100223435%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223098223430%_)))
                                          (_%hd223099223433%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223098223430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl223100223435%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223094223419%_))
                                              (_%__match224129224130%_
                                               _%e223053223310%_
                                               _%hd223054223313%_
                                               _%tl223055223315%_
                                               _%e223056223318%_
                                               _%hd223057223321%_
                                               _%tl223058223323%_
                                               _%e223059223326%_
                                               _%hd223060223329%_
                                               _%tl223061223331%_
                                               _%e223062223334%_
                                               _%hd223063223337%_
                                               _%tl223064223339%_
                                               _%e223065223342%_
                                               _%hd223066223345%_
                                               _%tl223067223347%_
                                               _%e223068223350%_
                                               _%hd223069223353%_
                                               _%tl223070223355%_
                                               _%e223071223358%_
                                               _%hd223072223361%_
                                               _%tl223073223363%_
                                               _%e223074223366%_
                                               _%hd223075223369%_
                                               _%tl223076223371%_
                                               _%e223077223374%_
                                               _%hd223078223377%_
                                               _%tl223079223379%_
                                               _%e223080223382%_
                                               _%hd223081223385%_
                                               _%tl223082223387%_
                                               _%e223083223390%_
                                               _%hd223084223393%_
                                               _%tl223085223395%_
                                               _%e223086223398%_
                                               _%hd223087223401%_
                                               _%tl223088223403%_
                                               _%e223089223406%_
                                               _%hd223090223409%_
                                               _%tl223091223411%_
                                               _%e223092223414%_
                                               _%hd223093223417%_
                                               _%tl223094223419%_
                                               _%e223095223422%_
                                               _%hd223096223425%_
                                               _%tl223097223427%_
                                               _%e223098223430%_
                                               _%hd223099223433%_
                                               _%tl223100223435%_)
                                              (_%__kont224000224001%_))
                                          (_%__kont224000224001%_))))
                                  (_%__kont224000224001%_))
                              (_%__kont224000224001%_))
                          (_%__kont224000224001%_))))
                  (_%__kont224000224001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223085223395%_))
                                                      (if (let ((__tmp224352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224352 'bind-method!))
                  (let ((_%g223101223264%_ _%hd223090223409%_)
                        (_%g223102223265%_ _%hd223081223385%_)
                        (_%g223103223266%_ _%hd223072223361%_)
                        (_%g223104223267%_ _%hd223063223337%_))
                    (_%__kont223998223999%_
                     _%g223101223264%_
                     _%g223102223265%_
                     _%g223103223266%_
                     _%g223104223267%_))
                  (_%__kont224000224001%_))
              (_%__kont224000224001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont224000224001%_))))
                                      (_%__kont224000224001%_))
                                  (_%__kont224000224001%_))
                              (_%__kont224000224001%_))))
                      (_%__kont224000224001%_))))
              (_%__kont224000224001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont224000224001%_))))
                                          (_%__kont224000224001%_))
                                      (_%__kont224000224001%_))
                                  (_%__kont224000224001%_))))
                          (_%__kont224000224001%_))))
                  (_%__kont224000224001%_))
              (_%__kont224000224001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont224000224001%_))
                                          (_%__kont224000224001%_))
                                      (_%__kont224000224001%_))))
                              (_%__kont224000224001%_))))
                      (_%__kont224000224001%_))
                  (_%__kont224000224001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont224000224001%_))
                                              (_%__kont224000224001%_))
                                          (_%__kont224000224001%_))))
                                  (_%__kont224000224001%_))))
                          (_%__kont224000224001%_))))
                  (_%__kont224000224001%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222865%_ _%stx222866%_)
        (let* ((_%__stx224238224239%_ _%stx222866%_)
               (_%g222869222909%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224238224239%_)))))
          (let ((_%__kont224240224241%_
                 (lambda (_%g222871223015%_ _%g222872223016%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222872223016%_))
                               (cons _%g222871223015%_ '())))))
                (_%__kont224242224243%_
                 (lambda (_%g222894222938%_ _%g222895222939%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224238224239%_))
                (let ((_%e222873222959%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224238224239%_))))
                  (let ((_%tl222875222964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222873222959%_)))
                        (_%hd222874222962%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222873222959%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222875222964%_))
                        (let ((_%e222876222967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222875222964%_))))
                          (let ((_%tl222878222972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222876222967%_)))
                                (_%hd222877222970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222876222967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222877222970%_))
                                (let ((_%e222879222975%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222877222970%_))))
                                  (let ((_%tl222881222980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222879222975%_)))
                                        (_%hd222880222978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222879222975%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222880222978%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222880222978%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222881222980%_))
                                                (let ((_%e222882222983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222881222980%_))))
                                                  (let ((_%tl222884222988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222882222983%_)))
                                                        (_%hd222883222986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222882222983%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222884222988%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222878222972%_))
                                                            (let ((_%e222885222991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222878222972%_))))
                      (let ((_%tl222887222996%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222885222991%_)))
                            (_%hd222886222994%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222885222991%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222886222994%_))
                            (let ((_%e222888222999%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222886222994%_))))
                              (let ((_%tl222890223004%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222888222999%_)))
                                    (_%hd222889223002%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222888222999%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222889223002%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222889223002%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222890223004%_))
                                            (let ((_%e222891223007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222890223004%_))))
                                              (let ((_%tl222893223012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222891223007%_)))
                                                    (_%hd222892223010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222891223007%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222893223012%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222887222996%_))
                                                        (_%__kont224240224241%_
                                                         _%hd222892223010%_
                                                         _%hd222883222986%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222869222909%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222887222996%_))
                                                        (_%__kont224242224243%_
                                                         _%hd222886222994%_
                                                         _%hd222877222970%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222869222909%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222887222996%_))
                                                (_%__kont224242224243%_
                                                 _%hd222886222994%_
                                                 _%hd222877222970%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222869222909%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222887222996%_))
                                            (_%__kont224242224243%_
                                             _%hd222886222994%_
                                             _%hd222877222970%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222869222909%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222887222996%_))
                                        (_%__kont224242224243%_
                                         _%hd222886222994%_
                                         _%hd222877222970%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222869222909%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222887222996%_))
                                (_%__kont224242224243%_
                                 _%hd222886222994%_
                                 _%hd222877222970%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222869222909%_))))))
                    (let () (declare (not safe)) (_%g222869222909%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222878222972%_))
                    (let ((_%e222902222930%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222878222972%_))))
                      (let ((_%tl222904222935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222902222930%_)))
                            (_%hd222903222933%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222902222930%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222904222935%_))
                            (_%__kont224242224243%_
                             _%hd222903222933%_
                             _%hd222877222970%_)
                            (let ()
                              (declare (not safe))
                              (_%g222869222909%_)))))
                    (let () (declare (not safe)) (_%g222869222909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222878222972%_))
                                                    (let ((_%e222902222930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222878222972%_))))
                                                      (let ((_%tl222904222935%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222902222930%_)))
                    (_%hd222903222933%_
                     (let () (declare (not safe)) (##car _%e222902222930%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222904222935%_))
                    (_%__kont224242224243%_
                     _%hd222903222933%_
                     _%hd222877222970%_)
                    (let () (declare (not safe)) (_%g222869222909%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222869222909%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222878222972%_))
                                                (let ((_%e222902222930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222878222972%_))))
                                                  (let ((_%tl222904222935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222902222930%_)))
                                                        (_%hd222903222933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222902222930%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222904222935%_))
                                                        (_%__kont224242224243%_
                                                         _%hd222903222933%_
                                                         _%hd222877222970%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222869222909%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222869222909%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222878222972%_))
                                            (let ((_%e222902222930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222878222972%_))))
                                              (let ((_%tl222904222935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222902222930%_)))
                                                    (_%hd222903222933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222902222930%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222904222935%_))
                                                    (_%__kont224242224243%_
                                                     _%hd222903222933%_
                                                     _%hd222877222970%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222869222909%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222869222909%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222878222972%_))
                                    (let ((_%e222902222930%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222878222972%_))))
                                      (let ((_%tl222904222935%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222902222930%_)))
                                            (_%hd222903222933%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222902222930%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222904222935%_))
                                            (_%__kont224242224243%_
                                             _%hd222903222933%_
                                             _%hd222877222970%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222869222909%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222869222909%_))))))
                        (let () (declare (not safe)) (_%g222869222909%_)))))
                (let () (declare (not safe)) (_%g222869222909%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222852%_)
        (let ((_%self222855%_ _%self222852%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222855%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222626%_)
        (let* ((_%self222629%_ _%self222626%_)
               (_%self222638222654%_ _%self222629%_)
               (_%E222640222657%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222638222654%_
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
               (_%K222641222672%_
                (lambda (_%methods222660%_
                         _%metaclass222661%_
                         _%system?222662%_
                         _%final?222663%_
                         _%struct?222664%_
                         _%constructor222665%_
                         _%fields222666%_
                         _%slots222667%_
                         _%precendence-list222668%_
                         _%super222669%_
                         _%id222670%_)
                  (cons '@class
                        (cons _%id222670%_
                              (cons _%super222669%_
                                    (cons _%precendence-list222668%_
                                          (cons _%slots222667%_
                                                (cons _%fields222666%_
                                                      (cons _%constructor222665%_
                                                            (cons _%struct?222664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222663%_
                                (cons _%system?222662%_
                                      (cons _%metaclass222661%_
                                            (cons (if _%methods222660%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222660%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222642222675%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '1 '#f '#f)))
               (_%id222678%_ _%e222642222675%_)
               (_%e222643222680%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '2 '#f '#f)))
               (_%super222683%_ _%e222643222680%_)
               (_%e222644222685%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '3 '#f '#f)))
               (_%precendence-list222688%_ _%e222644222685%_)
               (_%e222645222690%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '4 '#f '#f)))
               (_%slots222693%_ _%e222645222690%_)
               (_%e222646222695%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '5 '#f '#f)))
               (_%fields222698%_ _%e222646222695%_)
               (_%e222647222700%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '6 '#f '#f)))
               (_%constructor222703%_ _%e222647222700%_)
               (_%e222648222705%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '7 '#f '#f)))
               (_%struct?222708%_ _%e222648222705%_)
               (_%e222649222710%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '8 '#f '#f)))
               (_%final?222713%_ _%e222649222710%_)
               (_%e222650222715%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222638222654%_ '9 '#f '#f)))
               (_%system?222718%_ _%e222650222715%_)
               (_%e222651222720%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222638222654%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222723%_ _%e222651222720%_)
               (_%e222652222725%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222638222654%_
                   '11
                   '#f
                   '#f)))
               (_%methods222728%_ _%e222652222725%_))
          (_%K222641222672%_
           _%methods222728%_
           _%metaclass222723%_
           _%system?222718%_
           _%final?222713%_
           _%struct?222708%_
           _%constructor222703%_
           _%fields222698%_
           _%slots222693%_
           _%precendence-list222688%_
           _%super222683%_
           _%id222678%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222491%_)
        (let ((_%self222494%_ _%self222491%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222494%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222356%_)
        (let ((_%self222359%_ _%self222356%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222359%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222221%_)
        (let ((_%self222224%_ _%self222221%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222224%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222224%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222224%_
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
      (lambda (_%self222086%_)
        (let ((_%self222089%_ _%self222086%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222089%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222089%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222089%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221951%_)
        (let ((_%self221954%_ _%self221951%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221954%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221954%_
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
      (lambda (_%self221765%_)
        (let* ((_%self221768%_ _%self221765%_)
               (_%self221777221786%_ _%self221768%_)
               (_%E221779221789%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221777221786%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221780221808%_
                (lambda (_%dispatch221792%_
                         _%arity221793%_
                         _%signature221794%_)
                  (if _%signature221794%_
                      (let ((_%signature221796%_ _%signature221794%_))
                        (cons '@lambda
                              (cons _%arity221793%_
                                    (cons _%dispatch221792%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221796%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221796%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221796%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221796%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221796%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221793%_
                                  (cons _%dispatch221792%_ '()))))))
               (_%e221781221811%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221777221786%_ '1 '#f '#f)))
               (_%e221782221814%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221777221786%_ '2 '#f '#f)))
               (_%signature221817%_ _%e221782221814%_)
               (_%e221783221819%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221777221786%_ '3 '#f '#f)))
               (_%arity221822%_ _%e221783221819%_)
               (_%e221784221824%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221777221786%_ '4 '#f '#f)))
               (_%dispatch221827%_ _%e221784221824%_))
          (_%K221780221808%_
           _%dispatch221827%_
           _%arity221822%_
           _%signature221817%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221625%_)
        (let ((_%self221628%_ _%self221625%_))
          (letrec ((_%clause-e221639%_
                    (lambda (_%clause221641%_)
                      (cdr (let ((__method224326
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221641%_
                                     'typedecl))))
                             (if __method224326
                                 (let ()
                                   (declare (not safe))
                                   (__method224326 _%clause221641%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221641%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221639%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221628%_
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
      (lambda (_%self221490%_)
        (let ((_%self221493%_ _%self221490%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221493%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221493%_
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
      (lambda (_%self221355%_)
        (let ((_%self221358%_ _%self221355%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221358%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221358%_
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
      (lambda (_%self221220%_)
        (let ((_%self221223%_ _%self221220%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221223%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
