(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1779967250)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp261358
                   (let ((__obj261352
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
                       (gxc#optimizer-info:::init! __obj261352))
                     __obj261352)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp261358)))))
    (define gxc#optimize!
      (lambda (_%ctx260960%_)
        (let ((__tmp261360
               (lambda ()
                 (let ((__tmp261362
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx260960%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx260960%_)
                          (let ((__tmp261364
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp261363
                                 (##structure-ref
                                  _%ctx260960%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp261364 __tmp261363 '#t))
                          (let ((_%code260964%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx260960%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx260960%_
                             _%code260964%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp261361
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp261362
                    gxc#current-compile-local-type
                    __tmp261361))))
              (__tmp261359 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261360
           gxc#current-compile-mutators
           __tmp261359))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx260946%_)
        (letrec ((_%load-it!260948%_
                  (lambda (_%id260958%_)
                    (if (let ((__tmp261365
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp261365 _%id260958%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id260958%_)
                          (let ((__tmp261366
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp261366 _%id260958%_ '#t)))))))
          (let* ((_%modid260950%_
                  (##structure-ref
                   _%ctx260946%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str260952%_ (symbol->string _%modid260950%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str260952%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str260952%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260948%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!260948%_
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
      (lambda (_%ctx260883%_)
        (letrec* ((_%deps260885%_
                   (let* ((_%imports260936%_
                           (##structure-ref
                            _%ctx260883%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e260938%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx260883%_))))
                     (if _%$e260938%_
                         (cons _%$e260938%_ _%imports260936%_)
                         _%imports260936%_))))
          (let _%lp260887%_ ((_%rest260889%_ _%deps260885%_))
            (let* ((_%rest260890260898%_ _%rest260889%_)
                   (_%else260892260906%_ (lambda () '#!void))
                   (_%K260894260924%_
                    (lambda (_%rest260909%_ _%hd260910%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd260910%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp261368
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp261367
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd260910%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp261368 __tmp261367))
                                '#!void
                                (begin
                                  (let ((_%$e260913%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd260910%_))))
                                    (if _%$e260913%_
                                        (_%lp260887%_
                                         (cons _%$e260913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd260910%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp260887%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260910%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd260910%_)))
                            (_%lp260887%_ _%rest260909%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd260910%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp261370
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp261369
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd260910%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp261370 __tmp261369))
                                    '#!void
                                    (begin
                                      (_%lp260887%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd260910%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd260910%_)))
                                (_%lp260887%_ _%rest260909%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd260910%_
                                     'gx#module-import::t))
                                  (_%lp260887%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd260910%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest260909%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd260910%_
                                         'gx#module-export::t))
                                      (_%lp260887%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd260910%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest260909%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd260910%_
                                             'gx#import-set::t))
                                          (_%lp260887%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd260910%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest260909%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd260910%_))))))))))
              (if (pair? _%rest260890260898%_)
                  (let ((_%hd260895260927%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest260890260898%_)))
                        (_%tl260896260929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest260890260898%_))))
                    (let* ((_%hd260932%_ _%hd260895260927%_)
                           (_%rest260934%_ _%tl260896260929%_))
                      (_%K260894260924%_ _%rest260934%_ _%hd260932%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx260863%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx260863%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx260863%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht260865%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id260867%_
                    (##structure-ref
                     _%ctx260863%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod260869%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht260865%_ _%id260867%_)))
                   (_%$e260872%_ _%mod260869%_))
              (if _%$e260872%_
                  _%$e260872%_
                  (let* ((_%mod260875%_
                          (gxc#optimizer-import-ssxi _%ctx260863%_))
                         (_%val260880%_
                          (let ((_%$e260877%_ _%mod260875%_))
                            (if _%$e260877%_ _%$e260877%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht260865%_ _%id260867%_ _%val260880%_))
                    _%val260880%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx260861%_)
        (if (##structure-ref _%ctx260861%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx260861%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id260839%_)
        (letrec ((_%catch-e260841%_
                  (lambda (_%exn260859%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn260859%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn260859%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id260839%_))))
                    '#f))
                 (_%import-e260842%_
                  (lambda ()
                    (let* ((_%str-id260845%_
                            (let ((__tmp261371
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id260839%_))))
                              (declare (not safe))
                              (##string-append __tmp261371 '".ssxi")))
                           (_%artefact-path260852%_
                            (let ((_%odir260846260848%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir260846260848%_
                                  (let ((_%odir260850%_ _%odir260846260848%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id260845%_
                                        '".ss"))
                                     _%odir260850%_))
                                  '#f)))
                           (_%library-path260854%_
                            (let ((__tmp261372
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id260845%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp261372)))
                           (_%ssxi-path260856%_
                            (if (and _%artefact-path260852%_
                                     (file-exists? _%artefact-path260852%_))
                                _%artefact-path260852%_
                                _%library-path260854%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path260856%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path260856%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e260841%_ _%import-e260842%_)))))
    (define gxc#optimize-source
      (lambda (_%stx260824%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx260824%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx260824%_))
        (let* ((_%stx260826%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx260824%_)))
               (_%stx260828%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx260826%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx260828%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx260828%_))
          (let _%fixpoint260831%_ ((_%current260833%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx260828%_))
            (let ((_%refined260835%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current260833%_ _%refined260835%_)
                  '#!void
                  (_%fixpoint260831%_ _%refined260835%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx260828%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx260828%_))
          (let ((_%stx260837%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx260828%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx260837%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp261374 (list gxc#::generate-runtime-empty::t))
            (__tmp261373 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp261374
         '()
         __tmp261373
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args260821%_
        (apply make-instance gxc#::generate-ssxi::t _%$args260821%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp261375
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
        (__make-atomic-promise __tmp261375)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx260813%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self260816%_
                (let ((__obj261354
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj261354))
               (__tmp261376
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self260816%_ _%stx260813%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp261376
           gxc#current-compile-method
           _%self260816%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self260773%_ _%stx260774%_)
        (let* ((_%g260776260786%_
                (lambda (_%g260777260783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260777260783%_))))
               (_%g260775260810%_
                (lambda (_%g260777260789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260777260789%_))
                      (let ((_%e260779260791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260777260789%_))))
                        (let ((_%hd260780260794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260779260791%_)))
                              (_%tl260781260796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260779260791%_))))
                          (let ((__tmp261379
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self260773%_
                                      _%stx260774%_))))
                                (__tmp261377
                                 (let ((__tmp261378
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp261378 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp261379
                             gx#current-expander-phi
                             __tmp261377))))
                      (_%g260776260786%_ _%g260777260789%_)))))
          (_%g260775260810%_ _%stx260774%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self260712%_ _%stx260713%_)
        (let* ((_%g260715260729%_
                (lambda (_%g260716260726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g260716260726%_))))
               (_%g260714260770%_
                (lambda (_%g260716260732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g260716260732%_))
                      (let ((_%e260719260734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g260716260732%_))))
                        (let ((_%hd260720260737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260719260734%_)))
                              (_%tl260721260739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260719260734%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl260721260739%_))
                              (let ((_%e260722260742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl260721260739%_))))
                                (let ((_%hd260723260745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260722260742%_)))
                                      (_%tl260724260747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260722260742%_))))
                                  (let* ((_%ctx260764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%hd260723260745%_)))
                                         (_%code260766%_
                                          (##structure-ref
                                           _%ctx260764%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp261380
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self260712%_
                                               _%code260766%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp261380
                                     gx#current-expander-context
                                     _%ctx260764%_))))
                              (_%g260715260729%_ _%g260716260732%_))))
                      (_%g260715260729%_ _%g260716260732%_)))))
          (_%g260714260770%_ _%stx260713%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self260519%_ _%stx260520%_)
        (letrec ((_%generate-e260522%_
                  (lambda (_%id260697%_)
                    (let* ((_%sym260699%_
                            (if (let ((__tmp261381
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp261381))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id260697%_))
                                '#f))
                           (_%$e260701%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym260699%_))))
                      (if _%$e260701%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym260699%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym260699%_
                                                    (cons (let ((__method261355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e260701%_ 'typedecl))))
                    (if __method261355
                        (let ()
                          (declare (not safe))
                          (__method261355 _%$e260701%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e260701%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym260699%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym260699%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e260706%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym260699%_))))
                            (if _%$e260706%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym260699%_
                                     '" "
                                     _%$e260706%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e260706%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym260699%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym260699%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e260706%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym260699%_
                                                  (cons (let ((__method261356
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e260706%_ 'typedecl))))
                  (if __method261356
                      (let ()
                        (declare (not safe))
                        (__method261356 _%$e260706%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e260706%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx260967260968%_ _%stx260520%_)
                 (_%g260525260563%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx260967260968%_)))))
            (let ((_%__kont260969260970%_
                   (lambda (_%g260527260679%_)
                     (_%generate-e260522%_ _%g260527260679%_)))
                  (_%__kont260971260972%_
                   (lambda (_%g260540260614%_)
                     (let ((_%types260640%_
                            (map _%generate-e260522%_
                                 (let ((__tmp261382
                                        (lambda (_%g260632260635%_
                                                 _%g260633260637%_)
                                          (cons _%g260632260635%_
                                                _%g260633260637%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp261382
                                    '()
                                    _%g260540260614%_)))))
                       (cons 'begin _%types260640%_)))))
              (let ((_%__match261022261023%_
                     (lambda (_%e260541260568%_
                              _%hd260542260571%_
                              _%tl260543260573%_
                              _%e260544260576%_
                              _%hd260545260579%_
                              _%tl260546260581%_
                              _%__splice260973260974%_
                              _%target260547260584%_
                              _%tl260549260586%_)
                       (letrec ((_%loop260550260589%_
                                 (lambda (_%hd260548260592%_
                                          _%id260554260594%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd260548260592%_))
                                       (let ((_%e260551260596%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd260548260592%_))))
                                         (let ((_%lp-tl260553260601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e260551260596%_)))
                                               (_%lp-hd260552260599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e260551260596%_))))
                                           (_%loop260550260589%_
                                            _%lp-tl260553260601%_
                                            (cons _%lp-hd260552260599%_
                                                  _%id260554260594%_))))
                                       (let ((_%id260555260604%_
                                              (reverse _%id260554260594%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl260546260581%_))
                                             (let ((_%e260556260606%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl260546260581%_))))
                                               (let ((_%tl260558260611%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e260556260606%_)))
                                                     (_%hd260557260609%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e260556260606%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl260558260611%_))
                                                     (_%__kont260971260972%_
                                                      _%id260555260604%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g260525260563%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g260525260563%_))))))))
                         (_%loop260550260589%_ _%target260547260584%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx260967260968%_))
                    (let ((_%e260528260647%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx260967260968%_))))
                      (let ((_%tl260530260652%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e260528260647%_)))
                            (_%hd260529260650%_
                             (let ()
                               (declare (not safe))
                               (##car _%e260528260647%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl260530260652%_))
                            (let ((_%e260531260655%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl260530260652%_))))
                              (let ((_%tl260533260660%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e260531260655%_)))
                                    (_%hd260532260658%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e260531260655%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd260532260658%_))
                                    (let ((_%e260534260663%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd260532260658%_))))
                                      (let ((_%tl260536260668%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e260534260663%_)))
                                            (_%hd260535260666%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e260534260663%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl260536260668%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl260533260660%_))
                                                (let ((_%e260537260671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl260533260660%_))))
                                                  (let ((_%tl260539260676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e260537260671%_)))
                                                        (_%hd260538260674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e260537260671%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl260539260676%_))
                                                        (_%__kont260969260970%_
                                                         _%hd260535260666%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd260532260658%_))
                                                            (let ((_%__splice260973260974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd260532260658%_
                              '0))))
                      (let ((_%tl260549260586%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260973260974%_ '1)))
                            (_%target260547260584%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice260973260974%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl260549260586%_))
                            (_%__match261022261023%_
                             _%e260528260647%_
                             _%hd260529260650%_
                             _%tl260530260652%_
                             _%e260531260655%_
                             _%hd260532260658%_
                             _%tl260533260660%_
                             _%__splice260973260974%_
                             _%target260547260584%_
                             _%tl260549260586%_)
                            (let ()
                              (declare (not safe))
                              (_%g260525260563%_)))))
                    (let () (declare (not safe)) (_%g260525260563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd260532260658%_))
                                                    (let ((_%__splice260973260974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd260532260658%_
                                                              '0))))
                                                      (let ((_%tl260549260586%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice260973260974%_ '1)))
                    (_%target260547260584%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice260973260974%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl260549260586%_))
                    (_%__match261022261023%_
                     _%e260528260647%_
                     _%hd260529260650%_
                     _%tl260530260652%_
                     _%e260531260655%_
                     _%hd260532260658%_
                     _%tl260533260660%_
                     _%__splice260973260974%_
                     _%target260547260584%_
                     _%tl260549260586%_)
                    (let () (declare (not safe)) (_%g260525260563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g260525260563%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd260532260658%_))
                                                (let ((_%__splice260973260974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd260532260658%_
                                                          '0))))
                                                  (let ((_%tl260549260586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260973260974%_
                                                            '1)))
                                                        (_%target260547260584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice260973260974%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl260549260586%_))
                                                        (_%__match261022261023%_
                                                         _%e260528260647%_
                                                         _%hd260529260650%_
                                                         _%tl260530260652%_
                                                         _%e260531260655%_
                                                         _%hd260532260658%_
                                                         _%tl260533260660%_
                                                         _%__splice260973260974%_
                                                         _%target260547260584%_
                                                         _%tl260549260586%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g260525260563%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g260525260563%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd260532260658%_))
                                        (let ((_%__splice260973260974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd260532260658%_
                                                  '0))))
                                          (let ((_%tl260549260586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260973260974%_
                                                    '1)))
                                                (_%target260547260584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice260973260974%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl260549260586%_))
                                                (_%__match261022261023%_
                                                 _%e260528260647%_
                                                 _%hd260529260650%_
                                                 _%tl260530260652%_
                                                 _%e260531260655%_
                                                 _%hd260532260658%_
                                                 _%tl260533260660%_
                                                 _%__splice260973260974%_
                                                 _%target260547260584%_
                                                 _%tl260549260586%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g260525260563%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g260525260563%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g260525260563%_)))))
                    (let () (declare (not safe)) (_%g260525260563%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self260072%_ _%stx260073%_)
        (let* ((_%__stx261025261026%_ _%stx260073%_)
               (_%g260077260179%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261025261026%_)))))
          (let ((_%__kont261027261028%_
                 (lambda (_%g260079260469%_
                          _%g260080260470%_
                          _%g260081260471%_
                          _%g260082260472%_
                          _%g260083260473%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g260082260472%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g260081260471%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g260080260470%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g260079260469%_))
                                                 '())))))))
                (_%__kont261029261030%_
                 (lambda (_%g260132260295%_
                          _%g260133260296%_
                          _%g260134260297%_
                          _%g260135260298%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g260134260297%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g260133260296%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g260132260295%_))
                                           (cons '#f '())))))))
                (_%__kont261031261032%_ (lambda () '(begin))))
            (let ((_%__match261160261161%_
                   (lambda (_%e260084260341%_
                            _%hd260085260344%_
                            _%tl260086260346%_
                            _%e260087260349%_
                            _%hd260088260352%_
                            _%tl260089260354%_
                            _%e260090260357%_
                            _%hd260091260360%_
                            _%tl260092260362%_
                            _%e260093260365%_
                            _%hd260094260368%_
                            _%tl260095260370%_
                            _%e260096260373%_
                            _%hd260097260376%_
                            _%tl260098260378%_
                            _%e260099260381%_
                            _%hd260100260384%_
                            _%tl260101260386%_
                            _%e260102260389%_
                            _%hd260103260392%_
                            _%tl260104260394%_
                            _%e260105260397%_
                            _%hd260106260400%_
                            _%tl260107260402%_
                            _%e260108260405%_
                            _%hd260109260408%_
                            _%tl260110260410%_
                            _%e260111260413%_
                            _%hd260112260416%_
                            _%tl260113260418%_
                            _%e260114260421%_
                            _%hd260115260424%_
                            _%tl260116260426%_
                            _%e260117260429%_
                            _%hd260118260432%_
                            _%tl260119260434%_
                            _%e260120260437%_
                            _%hd260121260440%_
                            _%tl260122260442%_
                            _%e260123260445%_
                            _%hd260124260448%_
                            _%tl260125260450%_
                            _%e260126260453%_
                            _%hd260127260456%_
                            _%tl260128260458%_
                            _%e260129260461%_
                            _%hd260130260464%_
                            _%tl260131260466%_)
                     (let ((_%g260079260469%_ _%hd260130260464%_)
                           (_%g260080260470%_ _%hd260121260440%_)
                           (_%g260081260471%_ _%hd260112260416%_)
                           (_%g260082260472%_ _%hd260103260392%_)
                           (_%g260083260473%_ _%hd260094260368%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g260083260473%_
                              'bind-method!))
                           (_%__kont261027261028%_
                            _%g260079260469%_
                            _%g260080260470%_
                            _%g260081260471%_
                            _%g260082260472%_
                            _%g260083260473%_)
                           (_%__kont261031261032%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx261025261026%_))
                  (let ((_%e260084260341%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx261025261026%_))))
                    (let ((_%tl260086260346%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260084260341%_)))
                          (_%hd260085260344%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260084260341%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl260086260346%_))
                          (let ((_%e260087260349%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl260086260346%_))))
                            (let ((_%tl260089260354%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260087260349%_)))
                                  (_%hd260088260352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260087260349%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd260088260352%_))
                                  (let ((_%e260090260357%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd260088260352%_))))
                                    (let ((_%tl260092260362%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260090260357%_)))
                                          (_%hd260091260360%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260090260357%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd260091260360%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd260091260360%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260092260362%_))
                                                  (let ((_%e260093260365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl260092260362%_))))
                                                    (let ((_%tl260095260370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260093260365%_)))
                                                          (_%hd260094260368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260093260365%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl260095260370%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl260089260354%_))
                      (let ((_%e260096260373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl260089260354%_))))
                        (let ((_%tl260098260378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260096260373%_)))
                              (_%hd260097260376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260096260373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd260097260376%_))
                              (let ((_%e260099260381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd260097260376%_))))
                                (let ((_%tl260101260386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e260099260381%_)))
                                      (_%hd260100260384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e260099260381%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd260100260384%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd260100260384%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl260101260386%_))
                                              (let ((_%e260102260389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl260101260386%_))))
                                                (let ((_%tl260104260394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e260102260389%_)))
                                                      (_%hd260103260392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e260102260389%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260104260394%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl260098260378%_))
                                                          (let ((_%e260105260397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl260098260378%_))))
                    (let ((_%tl260107260402%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260105260397%_)))
                          (_%hd260106260400%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260105260397%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd260106260400%_))
                          (let ((_%e260108260405%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd260106260400%_))))
                            (let ((_%tl260110260410%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e260108260405%_)))
                                  (_%hd260109260408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e260108260405%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd260109260408%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd260109260408%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl260110260410%_))
                                          (let ((_%e260111260413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl260110260410%_))))
                                            (let ((_%tl260113260418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e260111260413%_)))
                                                  (_%hd260112260416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e260111260413%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl260113260418%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl260107260402%_))
                                                      (let ((_%e260114260421%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl260107260402%_))))
                (let ((_%tl260116260426%_
                       (let () (declare (not safe)) (##cdr _%e260114260421%_)))
                      (_%hd260115260424%_
                       (let ()
                         (declare (not safe))
                         (##car _%e260114260421%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd260115260424%_))
                      (let ((_%e260117260429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd260115260424%_))))
                        (let ((_%tl260119260434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e260117260429%_)))
                              (_%hd260118260432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e260117260429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd260118260432%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd260118260432%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl260119260434%_))
                                      (let ((_%e260120260437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl260119260434%_))))
                                        (let ((_%tl260122260442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e260120260437%_)))
                                              (_%hd260121260440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e260120260437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260122260442%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl260116260426%_))
                                                  (let ((_%e260123260445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl260116260426%_))))
                                                    (let ((_%tl260125260450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e260123260445%_)))
                                                          (_%hd260124260448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e260123260445%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd260124260448%_))
                                                          (let ((_%e260126260453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd260124260448%_))))
                    (let ((_%tl260128260458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e260126260453%_)))
                          (_%hd260127260456%_
                           (let ()
                             (declare (not safe))
                             (##car _%e260126260453%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd260127260456%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd260127260456%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl260128260458%_))
                                  (let ((_%e260129260461%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl260128260458%_))))
                                    (let ((_%tl260131260466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e260129260461%_)))
                                          (_%hd260130260464%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e260129260461%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl260131260466%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl260125260450%_))
                                              (_%__match261160261161%_
                                               _%e260084260341%_
                                               _%hd260085260344%_
                                               _%tl260086260346%_
                                               _%e260087260349%_
                                               _%hd260088260352%_
                                               _%tl260089260354%_
                                               _%e260090260357%_
                                               _%hd260091260360%_
                                               _%tl260092260362%_
                                               _%e260093260365%_
                                               _%hd260094260368%_
                                               _%tl260095260370%_
                                               _%e260096260373%_
                                               _%hd260097260376%_
                                               _%tl260098260378%_
                                               _%e260099260381%_
                                               _%hd260100260384%_
                                               _%tl260101260386%_
                                               _%e260102260389%_
                                               _%hd260103260392%_
                                               _%tl260104260394%_
                                               _%e260105260397%_
                                               _%hd260106260400%_
                                               _%tl260107260402%_
                                               _%e260108260405%_
                                               _%hd260109260408%_
                                               _%tl260110260410%_
                                               _%e260111260413%_
                                               _%hd260112260416%_
                                               _%tl260113260418%_
                                               _%e260114260421%_
                                               _%hd260115260424%_
                                               _%tl260116260426%_
                                               _%e260117260429%_
                                               _%hd260118260432%_
                                               _%tl260119260434%_
                                               _%e260120260437%_
                                               _%hd260121260440%_
                                               _%tl260122260442%_
                                               _%e260123260445%_
                                               _%hd260124260448%_
                                               _%tl260125260450%_
                                               _%e260126260453%_
                                               _%hd260127260456%_
                                               _%tl260128260458%_
                                               _%e260129260461%_
                                               _%hd260130260464%_
                                               _%tl260131260466%_)
                                              (_%__kont261031261032%_))
                                          (_%__kont261031261032%_))))
                                  (_%__kont261031261032%_))
                              (_%__kont261031261032%_))
                          (_%__kont261031261032%_))))
                  (_%__kont261031261032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl260116260426%_))
                                                      (if (let ((__tmp261383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp261383 'bind-method!))
                  (let ((_%g260132260295%_ _%hd260121260440%_)
                        (_%g260133260296%_ _%hd260112260416%_)
                        (_%g260134260297%_ _%hd260103260392%_)
                        (_%g260135260298%_ _%hd260094260368%_))
                    (_%__kont261029261030%_
                     _%g260132260295%_
                     _%g260133260296%_
                     _%g260134260297%_
                     _%g260135260298%_))
                  (_%__kont261031261032%_))
              (_%__kont261031261032%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont261031261032%_))))
                                      (_%__kont261031261032%_))
                                  (_%__kont261031261032%_))
                              (_%__kont261031261032%_))))
                      (_%__kont261031261032%_))))
              (_%__kont261031261032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261031261032%_))))
                                          (_%__kont261031261032%_))
                                      (_%__kont261031261032%_))
                                  (_%__kont261031261032%_))))
                          (_%__kont261031261032%_))))
                  (_%__kont261031261032%_))
              (_%__kont261031261032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont261031261032%_))
                                          (_%__kont261031261032%_))
                                      (_%__kont261031261032%_))))
                              (_%__kont261031261032%_))))
                      (_%__kont261031261032%_))
                  (_%__kont261031261032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont261031261032%_))
                                              (_%__kont261031261032%_))
                                          (_%__kont261031261032%_))))
                                  (_%__kont261031261032%_))))
                          (_%__kont261031261032%_))))
                  (_%__kont261031261032%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self259896%_ _%stx259897%_)
        (let* ((_%__stx261269261270%_ _%stx259897%_)
               (_%g259900259940%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx261269261270%_)))))
          (let ((_%__kont261271261272%_
                 (lambda (_%g259902260046%_ _%g259903260047%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g259903260047%_))
                               (cons _%g259902260046%_ '())))))
                (_%__kont261273261274%_
                 (lambda (_%g259925259969%_ _%g259926259970%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx261269261270%_))
                (let ((_%e259904259990%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx261269261270%_))))
                  (let ((_%tl259906259995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e259904259990%_)))
                        (_%hd259905259993%_
                         (let ()
                           (declare (not safe))
                           (##car _%e259904259990%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl259906259995%_))
                        (let ((_%e259907259998%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl259906259995%_))))
                          (let ((_%tl259909260003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e259907259998%_)))
                                (_%hd259908260001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e259907259998%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd259908260001%_))
                                (let ((_%e259910260006%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd259908260001%_))))
                                  (let ((_%tl259912260011%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e259910260006%_)))
                                        (_%hd259911260009%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e259910260006%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd259911260009%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd259911260009%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259912260011%_))
                                                (let ((_%e259913260014%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259912260011%_))))
                                                  (let ((_%tl259915260019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259913260014%_)))
                                                        (_%hd259914260017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259913260014%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259915260019%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl259909260003%_))
                                                            (let ((_%e259916260022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259909260003%_))))
                      (let ((_%tl259918260027%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259916260022%_)))
                            (_%hd259917260025%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259916260022%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd259917260025%_))
                            (let ((_%e259919260030%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd259917260025%_))))
                              (let ((_%tl259921260035%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e259919260030%_)))
                                    (_%hd259920260033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e259919260030%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd259920260033%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd259920260033%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259921260035%_))
                                            (let ((_%e259922260038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259921260035%_))))
                                              (let ((_%tl259924260043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259922260038%_)))
                                                    (_%hd259923260041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259922260038%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259924260043%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259918260027%_))
                                                        (_%__kont261271261272%_
                                                         _%hd259923260041%_
                                                         _%hd259914260017%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259900259940%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259918260027%_))
                                                        (_%__kont261273261274%_
                                                         _%hd259917260025%_
                                                         _%hd259908260001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259900259940%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl259918260027%_))
                                                (_%__kont261273261274%_
                                                 _%hd259917260025%_
                                                 _%hd259908260001%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259900259940%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259918260027%_))
                                            (_%__kont261273261274%_
                                             _%hd259917260025%_
                                             _%hd259908260001%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259900259940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl259918260027%_))
                                        (_%__kont261273261274%_
                                         _%hd259917260025%_
                                         _%hd259908260001%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g259900259940%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl259918260027%_))
                                (_%__kont261273261274%_
                                 _%hd259917260025%_
                                 _%hd259908260001%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g259900259940%_))))))
                    (let () (declare (not safe)) (_%g259900259940%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl259909260003%_))
                    (let ((_%e259933259961%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl259909260003%_))))
                      (let ((_%tl259935259966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e259933259961%_)))
                            (_%hd259934259964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e259933259961%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl259935259966%_))
                            (_%__kont261273261274%_
                             _%hd259934259964%_
                             _%hd259908260001%_)
                            (let ()
                              (declare (not safe))
                              (_%g259900259940%_)))))
                    (let () (declare (not safe)) (_%g259900259940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl259909260003%_))
                                                    (let ((_%e259933259961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl259909260003%_))))
                                                      (let ((_%tl259935259966%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e259933259961%_)))
                    (_%hd259934259964%_
                     (let () (declare (not safe)) (##car _%e259933259961%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl259935259966%_))
                    (_%__kont261273261274%_
                     _%hd259934259964%_
                     _%hd259908260001%_)
                    (let () (declare (not safe)) (_%g259900259940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259900259940%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl259909260003%_))
                                                (let ((_%e259933259961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl259909260003%_))))
                                                  (let ((_%tl259935259966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e259933259961%_)))
                                                        (_%hd259934259964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e259933259961%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl259935259966%_))
                                                        (_%__kont261273261274%_
                                                         _%hd259934259964%_
                                                         _%hd259908260001%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g259900259940%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g259900259940%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl259909260003%_))
                                            (let ((_%e259933259961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl259909260003%_))))
                                              (let ((_%tl259935259966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e259933259961%_)))
                                                    (_%hd259934259964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e259933259961%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl259935259966%_))
                                                    (_%__kont261273261274%_
                                                     _%hd259934259964%_
                                                     _%hd259908260001%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g259900259940%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g259900259940%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl259909260003%_))
                                    (let ((_%e259933259961%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl259909260003%_))))
                                      (let ((_%tl259935259966%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e259933259961%_)))
                                            (_%hd259934259964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e259933259961%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl259935259966%_))
                                            (_%__kont261273261274%_
                                             _%hd259934259964%_
                                             _%hd259908260001%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g259900259940%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g259900259940%_))))))
                        (let () (declare (not safe)) (_%g259900259940%_)))))
                (let () (declare (not safe)) (_%g259900259940%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self259883%_)
        (let ((_%self259886%_ _%self259883%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259886%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self259657%_)
        (let* ((_%self259660%_ _%self259657%_)
               (_%self259669259685%_ _%self259660%_)
               (_%E259671259688%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self259669259685%_
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
               (_%K259672259703%_
                (lambda (_%methods259691%_
                         _%metaclass259692%_
                         _%system?259693%_
                         _%final?259694%_
                         _%struct?259695%_
                         _%constructor259696%_
                         _%fields259697%_
                         _%slots259698%_
                         _%precendence-list259699%_
                         _%super259700%_
                         _%id259701%_)
                  (cons '@class
                        (cons _%id259701%_
                              (cons _%super259700%_
                                    (cons _%precendence-list259699%_
                                          (cons _%slots259698%_
                                                (cons _%fields259697%_
                                                      (cons _%constructor259696%_
                                                            (cons _%struct?259695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?259694%_
                                (cons _%system?259693%_
                                      (cons _%metaclass259692%_
                                            (cons (if _%methods259691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods259691%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e259673259706%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '1 '#f '#f)))
               (_%id259709%_ _%e259673259706%_)
               (_%e259674259711%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '2 '#f '#f)))
               (_%super259714%_ _%e259674259711%_)
               (_%e259675259716%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '3 '#f '#f)))
               (_%precendence-list259719%_ _%e259675259716%_)
               (_%e259676259721%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '4 '#f '#f)))
               (_%slots259724%_ _%e259676259721%_)
               (_%e259677259726%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '5 '#f '#f)))
               (_%fields259729%_ _%e259677259726%_)
               (_%e259678259731%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '6 '#f '#f)))
               (_%constructor259734%_ _%e259678259731%_)
               (_%e259679259736%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '7 '#f '#f)))
               (_%struct?259739%_ _%e259679259736%_)
               (_%e259680259741%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '8 '#f '#f)))
               (_%final?259744%_ _%e259680259741%_)
               (_%e259681259746%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self259669259685%_ '9 '#f '#f)))
               (_%system?259749%_ _%e259681259746%_)
               (_%e259682259751%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259669259685%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass259754%_ _%e259682259751%_)
               (_%e259683259756%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self259669259685%_
                   '11
                   '#f
                   '#f)))
               (_%methods259759%_ _%e259683259756%_))
          (_%K259672259703%_
           _%methods259759%_
           _%metaclass259754%_
           _%system?259749%_
           _%final?259744%_
           _%struct?259739%_
           _%constructor259734%_
           _%fields259729%_
           _%slots259724%_
           _%precendence-list259719%_
           _%super259714%_
           _%id259709%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self259522%_)
        (let ((_%self259525%_ _%self259522%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259525%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self259387%_)
        (let ((_%self259390%_ _%self259387%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259390%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self259252%_)
        (let ((_%self259255%_ _%self259252%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259255%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self259255%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self259255%_
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
      (lambda (_%self259117%_)
        (let ((_%self259120%_ _%self259117%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self259120%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self259120%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self259120%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self258982%_)
        (let ((_%self258985%_ _%self258982%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258985%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258985%_
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
      (lambda (_%self258796%_)
        (let* ((_%self258799%_ _%self258796%_)
               (_%self258808258817%_ _%self258799%_)
               (_%E258810258820%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self258808258817%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K258811258839%_
                (lambda (_%dispatch258823%_
                         _%arity258824%_
                         _%signature258825%_)
                  (if _%signature258825%_
                      (let ((_%signature258827%_ _%signature258825%_))
                        (cons '@lambda
                              (cons _%arity258824%_
                                    (cons _%dispatch258823%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature258827%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature258827%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature258827%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature258827%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature258827%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity258824%_
                                  (cons _%dispatch258823%_ '()))))))
               (_%e258812258842%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258808258817%_ '1 '#f '#f)))
               (_%e258813258845%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258808258817%_ '2 '#f '#f)))
               (_%signature258848%_ _%e258813258845%_)
               (_%e258814258850%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258808258817%_ '3 '#f '#f)))
               (_%arity258853%_ _%e258814258850%_)
               (_%e258815258855%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self258808258817%_ '4 '#f '#f)))
               (_%dispatch258858%_ _%e258815258855%_))
          (_%K258811258839%_
           _%dispatch258858%_
           _%arity258853%_
           _%signature258848%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self258656%_)
        (let ((_%self258659%_ _%self258656%_))
          (letrec ((_%clause-e258670%_
                    (lambda (_%clause258672%_)
                      (cdr (let ((__method261357
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause258672%_
                                     'typedecl))))
                             (if __method261357
                                 (let ()
                                   (declare (not safe))
                                   (__method261357 _%clause258672%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause258672%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e258670%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self258659%_
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
      (lambda (_%self258521%_)
        (let ((_%self258524%_ _%self258521%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258524%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258524%_
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
      (lambda (_%self258386%_)
        (let ((_%self258389%_ _%self258386%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258389%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self258389%_
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
      (lambda (_%self258251%_)
        (let ((_%self258254%_ _%self258251%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self258254%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
