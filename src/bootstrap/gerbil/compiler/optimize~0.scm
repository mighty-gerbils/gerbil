(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1756142023)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp207853
                   (let ((__obj207847
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
                       (gxc#optimizer-info:::init! __obj207847))
                     __obj207847)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp207853)))))
    (define gxc#optimize!
      (lambda (_%ctx207455%_)
        (let ((__tmp207855
               (lambda ()
                 (let ((__tmp207857
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx207455%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx207455%_)
                          (let ((__tmp207859
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp207858
                                 (##structure-ref
                                  _%ctx207455%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp207859 __tmp207858 '#t))
                          (let ((_%code207459%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx207455%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx207455%_
                             _%code207459%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp207856
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp207857
                    gxc#current-compile-local-type
                    __tmp207856))))
              (__tmp207854 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207855
           gxc#current-compile-mutators
           __tmp207854))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx207441%_)
        (letrec ((_%load-it!207443%_
                  (lambda (_%id207453%_)
                    (if (let ((__tmp207860
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp207860 _%id207453%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id207453%_)
                          (let ((__tmp207861
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp207861 _%id207453%_ '#t)))))))
          (let* ((_%modid207445%_
                  (##structure-ref
                   _%ctx207441%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str207447%_ (symbol->string _%modid207445%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str207447%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str207447%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!207443%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!207443%_
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
      (lambda (_%ctx207378%_)
        (letrec* ((_%deps207380%_
                   (let* ((_%imports207431%_
                           (##structure-ref
                            _%ctx207378%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e207433%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx207378%_))))
                     (if _%$e207433%_
                         ((lambda (_%g207435207437%_)
                            (cons _%g207435207437%_ _%imports207431%_))
                          _%$e207433%_)
                         _%imports207431%_))))
          (let _%lp207382%_ ((_%rest207384%_ _%deps207380%_))
            (let* ((_%rest207385207393%_ _%rest207384%_)
                   (_%else207387207401%_ (lambda () '#!void))
                   (_%K207389207419%_
                    (lambda (_%rest207404%_ _%hd207405%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd207405%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp207863
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp207862
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd207405%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp207863 __tmp207862))
                                '#!void
                                (begin
                                  (let ((_%$e207408%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd207405%_))))
                                    (if _%$e207408%_
                                        ((lambda (_%pre207411%_)
                                           (_%lp207382%_
                                            (cons _%pre207411%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd207405%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e207408%_)
                                        (_%lp207382%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd207405%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd207405%_)))
                            (_%lp207382%_ _%rest207404%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd207405%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp207865
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp207864
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd207405%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp207865 __tmp207864))
                                    '#!void
                                    (begin
                                      (_%lp207382%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd207405%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd207405%_)))
                                (_%lp207382%_ _%rest207404%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd207405%_
                                     'gx#module-import::t))
                                  (_%lp207382%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd207405%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest207404%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd207405%_
                                         'gx#module-export::t))
                                      (_%lp207382%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd207405%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest207404%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd207405%_
                                             'gx#import-set::t))
                                          (_%lp207382%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd207405%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest207404%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd207405%_))))))))))
              (if (pair? _%rest207385207393%_)
                  (let ((_%hd207390207422%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest207385207393%_)))
                        (_%tl207391207424%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest207385207393%_))))
                    (let* ((_%hd207427%_ _%hd207390207422%_)
                           (_%rest207429%_ _%tl207391207424%_))
                      (_%K207389207419%_ _%rest207429%_ _%hd207427%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx207358%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx207358%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx207358%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht207360%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id207362%_
                    (##structure-ref
                     _%ctx207358%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod207364%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht207360%_ _%id207362%_)))
                   (_%$e207367%_ _%mod207364%_))
              (if _%$e207367%_
                  _%$e207367%_
                  (let* ((_%mod207370%_
                          (gxc#optimizer-import-ssxi _%ctx207358%_))
                         (_%val207375%_
                          (let ((_%$e207372%_ _%mod207370%_))
                            (if _%$e207372%_ _%$e207372%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht207360%_ _%id207362%_ _%val207375%_))
                    _%val207375%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx207356%_)
        (if (##structure-ref _%ctx207356%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx207356%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id207333%_)
        (letrec ((_%catch-e207335%_
                  (lambda (_%exn207354%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn207354%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn207354%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id207333%_))))
                    '#f))
                 (_%import-e207336%_
                  (lambda ()
                    (let* ((_%str-id207339%_
                            (let ((__tmp207866
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id207333%_))))
                              (declare (not safe))
                              (##string-append __tmp207866 '".ssxi")))
                           (_%artefact-path207347%_
                            (let ((_%odir207340207342%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir207340207342%_
                                  (let ((_%odir207345%_ _%odir207340207342%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id207339%_
                                        '".ss"))
                                     _%odir207345%_))
                                  '#f)))
                           (_%library-path207349%_
                            (let ((__tmp207867
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id207339%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp207867)))
                           (_%ssxi-path207351%_
                            (if (and _%artefact-path207347%_
                                     (file-exists? _%artefact-path207347%_))
                                _%artefact-path207347%_
                                _%library-path207349%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path207351%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path207351%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e207335%_ _%import-e207336%_)))))
    (define gxc#optimize-source
      (lambda (_%stx207318%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx207318%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx207318%_))
        (let* ((_%stx207320%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx207318%_)))
               (_%stx207322%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx207320%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx207322%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx207322%_))
          (let _%fixpoint207325%_ ((_%current207327%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx207322%_))
            (let ((_%refined207329%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current207327%_ _%refined207329%_)
                  '#!void
                  (_%fixpoint207325%_ _%refined207329%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx207322%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx207322%_))
          (let ((_%stx207331%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx207322%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx207331%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp207869 (list gxc#::generate-runtime-empty::t))
            (__tmp207868 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp207869
         '()
         __tmp207868
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args207315%_
        (apply make-instance gxc#::generate-ssxi::t _%$args207315%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp207870
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
        (__make-promise __tmp207870)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx207307%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self207310%_
                (let ((__obj207849
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj207849))
               (__tmp207871
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self207310%_ _%stx207307%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207871
           gxc#current-compile-method
           _%self207310%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self207267%_ _%stx207268%_)
        (let* ((_%g207270207280%_
                (lambda (_%g207271207277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207271207277%_))))
               (_%g207269207304%_
                (lambda (_%g207271207283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207271207283%_))
                      (let ((_%e207273207285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207271207283%_))))
                        (let ((_%hd207274207288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207273207285%_)))
                              (_%tl207275207290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207273207285%_))))
                          ((lambda (_%L207293%_)
                             (let ((__tmp207874
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self207267%_
                                         _%stx207268%_))))
                                   (__tmp207872
                                    (let ((__tmp207873
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp207873 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp207874
                                gx#current-expander-phi
                                __tmp207872)))
                           _%tl207275207290%_)))
                      (_%g207270207280%_ _%g207271207283%_)))))
          (_%g207269207304%_ _%stx207268%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self207206%_ _%stx207207%_)
        (let* ((_%g207209207223%_
                (lambda (_%g207210207220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207210207220%_))))
               (_%g207208207264%_
                (lambda (_%g207210207226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207210207226%_))
                      (let ((_%e207213207228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207210207226%_))))
                        (let ((_%hd207214207231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207213207228%_)))
                              (_%tl207215207233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207213207228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207215207233%_))
                              (let ((_%e207216207236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207215207233%_))))
                                (let ((_%hd207217207239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207216207236%_)))
                                      (_%tl207218207241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207216207236%_))))
                                  ((lambda (_%L207244%_ _%L207245%_)
                                     (let* ((_%ctx207258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L207245%_)))
                                            (_%code207260%_
                                             (##structure-ref
                                              _%ctx207258%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp207875
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self207206%_
                                                  _%code207260%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp207875
                                        gx#current-expander-context
                                        _%ctx207258%_)))
                                   _%tl207218207241%_
                                   _%hd207217207239%_)))
                              (_%g207209207223%_ _%g207210207226%_))))
                      (_%g207209207223%_ _%g207210207226%_)))))
          (_%g207208207264%_ _%stx207207%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self207011%_ _%stx207012%_)
        (letrec ((_%generate-e207014%_
                  (lambda (_%id207191%_)
                    (let* ((_%sym207193%_
                            (if (let ((__tmp207876
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp207876))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id207191%_))
                                '#f))
                           (_%$e207195%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym207193%_))))
                      (if _%$e207195%_
                          ((lambda (_%klass207198%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym207193%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym207193%_
                                                     (cons (let ((__method207850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass207198%_ 'typedecl))))
                     (if __method207850
                         (let ()
                           (declare (not safe))
                           (__method207850 _%klass207198%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass207198%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym207193%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym207193%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e207195%_)
                          (let ((_%$e207200%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym207193%_))))
                            (if _%$e207200%_
                                ((lambda (_%type207203%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym207193%_
                                      '" "
                                      _%type207203%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type207203%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym207193%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym207193%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type207203%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym207193%_
                                                   (cons (let ((__method207851
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type207203%_ 'typedecl))))
                   (if __method207851
                       (let ()
                         (declare (not safe))
                         (__method207851 _%type207203%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type207203%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e207200%_)
                                '(begin))))))))
          (let* ((_%__stx207462207463%_ _%stx207012%_)
                 (_%g207017207055%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207462207463%_)))))
            (let ((_%__kont207464207465%_
                   (lambda (_%L207173%_) (_%generate-e207014%_ _%L207173%_)))
                  (_%__kont207466207467%_
                   (lambda (_%L207108%_)
                     (let ((_%types207134%_
                            (map _%generate-e207014%_
                                 (let ((__tmp207877
                                        (lambda (_%g207126207129%_
                                                 _%g207127207131%_)
                                          (cons _%g207126207129%_
                                                _%g207127207131%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp207877 '() _%L207108%_)))))
                       (cons 'begin _%types207134%_)))))
              (let ((_%__match207517207518%_
                     (lambda (_%e207033207060%_
                              _%hd207034207063%_
                              _%tl207035207065%_
                              _%e207036207068%_
                              _%hd207037207071%_
                              _%tl207038207073%_
                              _%__splice207468207469%_
                              _%target207039207076%_
                              _%tl207041207078%_)
                       (letrec ((_%loop207042207081%_
                                 (lambda (_%hd207040207084%_
                                          _%id207046207086%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd207040207084%_))
                                       (let ((_%e207043207089%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd207040207084%_))))
                                         (let ((_%lp-tl207045207094%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e207043207089%_)))
                                               (_%lp-hd207044207092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e207043207089%_))))
                                           (_%loop207042207081%_
                                            _%lp-tl207045207094%_
                                            (cons _%lp-hd207044207092%_
                                                  _%id207046207086%_))))
                                       (let ((_%id207047207097%_
                                              (reverse _%id207046207086%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl207038207073%_))
                                             (let ((_%e207048207100%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl207038207073%_))))
                                               (let ((_%tl207050207105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e207048207100%_)))
                                                     (_%hd207049207103%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e207048207100%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl207050207105%_))
                                                     (_%__kont207466207467%_
                                                      _%id207047207097%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g207017207055%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g207017207055%_))))))))
                         (_%loop207042207081%_ _%target207039207076%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx207462207463%_))
                    (let ((_%e207020207141%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx207462207463%_))))
                      (let ((_%tl207022207146%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207020207141%_)))
                            (_%hd207021207144%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207020207141%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207022207146%_))
                            (let ((_%e207023207149%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl207022207146%_))))
                              (let ((_%tl207025207154%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207023207149%_)))
                                    (_%hd207024207152%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207023207149%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd207024207152%_))
                                    (let ((_%e207026207157%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207024207152%_))))
                                      (let ((_%tl207028207162%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e207026207157%_)))
                                            (_%hd207027207160%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e207026207157%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207028207162%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207025207154%_))
                                                (let ((_%e207029207165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207025207154%_))))
                                                  (let ((_%tl207031207170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207029207165%_)))
                                                        (_%hd207030207168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207029207165%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207031207170%_))
                                                        (_%__kont207464207465%_
                                                         _%hd207027207160%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd207024207152%_))
                                                            (let ((_%__splice207468207469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd207024207152%_
                              '0))))
                      (let ((_%tl207041207078%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice207468207469%_ '1)))
                            (_%target207039207076%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice207468207469%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl207041207078%_))
                            (_%__match207517207518%_
                             _%e207020207141%_
                             _%hd207021207144%_
                             _%tl207022207146%_
                             _%e207023207149%_
                             _%hd207024207152%_
                             _%tl207025207154%_
                             _%__splice207468207469%_
                             _%target207039207076%_
                             _%tl207041207078%_)
                            (let ()
                              (declare (not safe))
                              (_%g207017207055%_)))))
                    (let () (declare (not safe)) (_%g207017207055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd207024207152%_))
                                                    (let ((_%__splice207468207469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd207024207152%_
                                                              '0))))
                                                      (let ((_%tl207041207078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice207468207469%_ '1)))
                    (_%target207039207076%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice207468207469%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl207041207078%_))
                    (_%__match207517207518%_
                     _%e207020207141%_
                     _%hd207021207144%_
                     _%tl207022207146%_
                     _%e207023207149%_
                     _%hd207024207152%_
                     _%tl207025207154%_
                     _%__splice207468207469%_
                     _%target207039207076%_
                     _%tl207041207078%_)
                    (let () (declare (not safe)) (_%g207017207055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207017207055%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd207024207152%_))
                                                (let ((_%__splice207468207469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd207024207152%_
                                                          '0))))
                                                  (let ((_%tl207041207078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice207468207469%_
                                                            '1)))
                                                        (_%target207039207076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice207468207469%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207041207078%_))
                                                        (_%__match207517207518%_
                                                         _%e207020207141%_
                                                         _%hd207021207144%_
                                                         _%tl207022207146%_
                                                         _%e207023207149%_
                                                         _%hd207024207152%_
                                                         _%tl207025207154%_
                                                         _%__splice207468207469%_
                                                         _%target207039207076%_
                                                         _%tl207041207078%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207017207055%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207017207055%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd207024207152%_))
                                        (let ((_%__splice207468207469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd207024207152%_
                                                  '0))))
                                          (let ((_%tl207041207078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice207468207469%_
                                                    '1)))
                                                (_%target207039207076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice207468207469%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207041207078%_))
                                                (_%__match207517207518%_
                                                 _%e207020207141%_
                                                 _%hd207021207144%_
                                                 _%tl207022207146%_
                                                 _%e207023207149%_
                                                 _%hd207024207152%_
                                                 _%tl207025207154%_
                                                 _%__splice207468207469%_
                                                 _%target207039207076%_
                                                 _%tl207041207078%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207017207055%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g207017207055%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g207017207055%_)))))
                    (let () (declare (not safe)) (_%g207017207055%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self206564%_ _%stx206565%_)
        (let* ((_%__stx207520207521%_ _%stx206565%_)
               (_%g206569206671%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207520207521%_)))))
          (let ((_%__kont207522207523%_
                 (lambda (_%L206961%_
                          _%L206962%_
                          _%L206963%_
                          _%L206964%_
                          _%L206965%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L206964%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L206963%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L206962%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L206961%_))
                                                 '())))))))
                (_%__kont207524207525%_
                 (lambda (_%L206787%_ _%L206788%_ _%L206789%_ _%L206790%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L206789%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L206788%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L206787%_))
                                           (cons '#f '())))))))
                (_%__kont207526207527%_ (lambda () '(begin))))
            (let ((_%__match207655207656%_
                   (lambda (_%e206576206833%_
                            _%hd206577206836%_
                            _%tl206578206838%_
                            _%e206579206841%_
                            _%hd206580206844%_
                            _%tl206581206846%_
                            _%e206582206849%_
                            _%hd206583206852%_
                            _%tl206584206854%_
                            _%e206585206857%_
                            _%hd206586206860%_
                            _%tl206587206862%_
                            _%e206588206865%_
                            _%hd206589206868%_
                            _%tl206590206870%_
                            _%e206591206873%_
                            _%hd206592206876%_
                            _%tl206593206878%_
                            _%e206594206881%_
                            _%hd206595206884%_
                            _%tl206596206886%_
                            _%e206597206889%_
                            _%hd206598206892%_
                            _%tl206599206894%_
                            _%e206600206897%_
                            _%hd206601206900%_
                            _%tl206602206902%_
                            _%e206603206905%_
                            _%hd206604206908%_
                            _%tl206605206910%_
                            _%e206606206913%_
                            _%hd206607206916%_
                            _%tl206608206918%_
                            _%e206609206921%_
                            _%hd206610206924%_
                            _%tl206611206926%_
                            _%e206612206929%_
                            _%hd206613206932%_
                            _%tl206614206934%_
                            _%e206615206937%_
                            _%hd206616206940%_
                            _%tl206617206942%_
                            _%e206618206945%_
                            _%hd206619206948%_
                            _%tl206620206950%_
                            _%e206621206953%_
                            _%hd206622206956%_
                            _%tl206623206958%_)
                     (let ((_%L206961%_ _%hd206622206956%_)
                           (_%L206962%_ _%hd206613206932%_)
                           (_%L206963%_ _%hd206604206908%_)
                           (_%L206964%_ _%hd206595206884%_)
                           (_%L206965%_ _%hd206586206860%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L206965%_
                              'bind-method!))
                           (_%__kont207522207523%_
                            _%L206961%_
                            _%L206962%_
                            _%L206963%_
                            _%L206964%_
                            _%L206965%_)
                           (_%__kont207526207527%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207520207521%_))
                  (let ((_%e206576206833%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx207520207521%_))))
                    (let ((_%tl206578206838%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206576206833%_)))
                          (_%hd206577206836%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206576206833%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206578206838%_))
                          (let ((_%e206579206841%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl206578206838%_))))
                            (let ((_%tl206581206846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206579206841%_)))
                                  (_%hd206580206844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206579206841%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd206580206844%_))
                                  (let ((_%e206582206849%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd206580206844%_))))
                                    (let ((_%tl206584206854%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206582206849%_)))
                                          (_%hd206583206852%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206582206849%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd206583206852%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd206583206852%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206584206854%_))
                                                  (let ((_%e206585206857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl206584206854%_))))
                                                    (let ((_%tl206587206862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206585206857%_)))
                                                          (_%hd206586206860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206585206857%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206587206862%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl206581206846%_))
                      (let ((_%e206588206865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl206581206846%_))))
                        (let ((_%tl206590206870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206588206865%_)))
                              (_%hd206589206868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206588206865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206589206868%_))
                              (let ((_%e206591206873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd206589206868%_))))
                                (let ((_%tl206593206878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206591206873%_)))
                                      (_%hd206592206876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206591206873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206592206876%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd206592206876%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206593206878%_))
                                              (let ((_%e206594206881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl206593206878%_))))
                                                (let ((_%tl206596206886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206594206881%_)))
                                                      (_%hd206595206884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206594206881%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206596206886%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206590206870%_))
                                                          (let ((_%e206597206889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl206590206870%_))))
                    (let ((_%tl206599206894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206597206889%_)))
                          (_%hd206598206892%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206597206889%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd206598206892%_))
                          (let ((_%e206600206897%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206598206892%_))))
                            (let ((_%tl206602206902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206600206897%_)))
                                  (_%hd206601206900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206600206897%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd206601206900%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd206601206900%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206602206902%_))
                                          (let ((_%e206603206905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl206602206902%_))))
                                            (let ((_%tl206605206910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206603206905%_)))
                                                  (_%hd206604206908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206603206905%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl206605206910%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206599206894%_))
                                                      (let ((_%e206606206913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl206599206894%_))))
                (let ((_%tl206608206918%_
                       (let () (declare (not safe)) (##cdr _%e206606206913%_)))
                      (_%hd206607206916%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206606206913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd206607206916%_))
                      (let ((_%e206609206921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd206607206916%_))))
                        (let ((_%tl206611206926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206609206921%_)))
                              (_%hd206610206924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206609206921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd206610206924%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd206610206924%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206611206926%_))
                                      (let ((_%e206612206929%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl206611206926%_))))
                                        (let ((_%tl206614206934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206612206929%_)))
                                              (_%hd206613206932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206612206929%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206614206934%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206608206918%_))
                                                  (let ((_%e206615206937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl206608206918%_))))
                                                    (let ((_%tl206617206942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206615206937%_)))
                                                          (_%hd206616206940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206615206937%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206616206940%_))
                                                          (let ((_%e206618206945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd206616206940%_))))
                    (let ((_%tl206620206950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206618206945%_)))
                          (_%hd206619206948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206618206945%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206619206948%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd206619206948%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206620206950%_))
                                  (let ((_%e206621206953%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl206620206950%_))))
                                    (let ((_%tl206623206958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206621206953%_)))
                                          (_%hd206622206956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206621206953%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206623206958%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206617206942%_))
                                              (_%__match207655207656%_
                                               _%e206576206833%_
                                               _%hd206577206836%_
                                               _%tl206578206838%_
                                               _%e206579206841%_
                                               _%hd206580206844%_
                                               _%tl206581206846%_
                                               _%e206582206849%_
                                               _%hd206583206852%_
                                               _%tl206584206854%_
                                               _%e206585206857%_
                                               _%hd206586206860%_
                                               _%tl206587206862%_
                                               _%e206588206865%_
                                               _%hd206589206868%_
                                               _%tl206590206870%_
                                               _%e206591206873%_
                                               _%hd206592206876%_
                                               _%tl206593206878%_
                                               _%e206594206881%_
                                               _%hd206595206884%_
                                               _%tl206596206886%_
                                               _%e206597206889%_
                                               _%hd206598206892%_
                                               _%tl206599206894%_
                                               _%e206600206897%_
                                               _%hd206601206900%_
                                               _%tl206602206902%_
                                               _%e206603206905%_
                                               _%hd206604206908%_
                                               _%tl206605206910%_
                                               _%e206606206913%_
                                               _%hd206607206916%_
                                               _%tl206608206918%_
                                               _%e206609206921%_
                                               _%hd206610206924%_
                                               _%tl206611206926%_
                                               _%e206612206929%_
                                               _%hd206613206932%_
                                               _%tl206614206934%_
                                               _%e206615206937%_
                                               _%hd206616206940%_
                                               _%tl206617206942%_
                                               _%e206618206945%_
                                               _%hd206619206948%_
                                               _%tl206620206950%_
                                               _%e206621206953%_
                                               _%hd206622206956%_
                                               _%tl206623206958%_)
                                              (_%__kont207526207527%_))
                                          (_%__kont207526207527%_))))
                                  (_%__kont207526207527%_))
                              (_%__kont207526207527%_))
                          (_%__kont207526207527%_))))
                  (_%__kont207526207527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206608206918%_))
                                                      (if (let ((__tmp207878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp207878 'bind-method!))
                  (let ((_%L206787%_ _%hd206613206932%_)
                        (_%L206788%_ _%hd206604206908%_)
                        (_%L206789%_ _%hd206595206884%_)
                        (_%L206790%_ _%hd206586206860%_))
                    (_%__kont207524207525%_
                     _%L206787%_
                     _%L206788%_
                     _%L206789%_
                     _%L206790%_))
                  (_%__kont207526207527%_))
              (_%__kont207526207527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207526207527%_))))
                                      (_%__kont207526207527%_))
                                  (_%__kont207526207527%_))
                              (_%__kont207526207527%_))))
                      (_%__kont207526207527%_))))
              (_%__kont207526207527%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207526207527%_))))
                                          (_%__kont207526207527%_))
                                      (_%__kont207526207527%_))
                                  (_%__kont207526207527%_))))
                          (_%__kont207526207527%_))))
                  (_%__kont207526207527%_))
              (_%__kont207526207527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont207526207527%_))
                                          (_%__kont207526207527%_))
                                      (_%__kont207526207527%_))))
                              (_%__kont207526207527%_))))
                      (_%__kont207526207527%_))
                  (_%__kont207526207527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont207526207527%_))
                                              (_%__kont207526207527%_))
                                          (_%__kont207526207527%_))))
                                  (_%__kont207526207527%_))))
                          (_%__kont207526207527%_))))
                  (_%__kont207526207527%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self206388%_ _%stx206389%_)
        (let* ((_%__stx207764207765%_ _%stx206389%_)
               (_%g206392206432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207764207765%_)))))
          (let ((_%__kont207766207767%_
                 (lambda (_%L206538%_ _%L206539%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L206539%_))
                               (cons _%L206538%_ '())))))
                (_%__kont207768207769%_
                 (lambda (_%L206461%_ _%L206462%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207764207765%_))
                (let ((_%e206396206482%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx207764207765%_))))
                  (let ((_%tl206398206487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206396206482%_)))
                        (_%hd206397206485%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206396206482%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206398206487%_))
                        (let ((_%e206399206490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl206398206487%_))))
                          (let ((_%tl206401206495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206399206490%_)))
                                (_%hd206400206493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206399206490%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206400206493%_))
                                (let ((_%e206402206498%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206400206493%_))))
                                  (let ((_%tl206404206503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206402206498%_)))
                                        (_%hd206403206501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206402206498%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206403206501%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd206403206501%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206404206503%_))
                                                (let ((_%e206405206506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl206404206503%_))))
                                                  (let ((_%tl206407206511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206405206506%_)))
                                                        (_%hd206406206509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206405206506%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206407206511%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206401206495%_))
                                                            (let ((_%e206408206514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl206401206495%_))))
                      (let ((_%tl206410206519%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206408206514%_)))
                            (_%hd206409206517%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206408206514%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd206409206517%_))
                            (let ((_%e206411206522%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd206409206517%_))))
                              (let ((_%tl206413206527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206411206522%_)))
                                    (_%hd206412206525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206411206522%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd206412206525%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd206412206525%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206413206527%_))
                                            (let ((_%e206414206530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl206413206527%_))))
                                              (let ((_%tl206416206535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206414206530%_)))
                                                    (_%hd206415206533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206414206530%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206416206535%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206410206519%_))
                                                        (_%__kont207766207767%_
                                                         _%hd206415206533%_
                                                         _%hd206406206509%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g206392206432%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206410206519%_))
                                                        (_%__kont207768207769%_
                                                         _%hd206409206517%_
                                                         _%hd206400206493%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g206392206432%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl206410206519%_))
                                                (_%__kont207768207769%_
                                                 _%hd206409206517%_
                                                 _%hd206400206493%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g206392206432%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206410206519%_))
                                            (_%__kont207768207769%_
                                             _%hd206409206517%_
                                             _%hd206400206493%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g206392206432%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206410206519%_))
                                        (_%__kont207768207769%_
                                         _%hd206409206517%_
                                         _%hd206400206493%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g206392206432%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl206410206519%_))
                                (_%__kont207768207769%_
                                 _%hd206409206517%_
                                 _%hd206400206493%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g206392206432%_))))))
                    (let () (declare (not safe)) (_%g206392206432%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl206401206495%_))
                    (let ((_%e206425206453%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl206401206495%_))))
                      (let ((_%tl206427206458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206425206453%_)))
                            (_%hd206426206456%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206425206453%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206427206458%_))
                            (_%__kont207768207769%_
                             _%hd206426206456%_
                             _%hd206400206493%_)
                            (let ()
                              (declare (not safe))
                              (_%g206392206432%_)))))
                    (let () (declare (not safe)) (_%g206392206432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl206401206495%_))
                                                    (let ((_%e206425206453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl206401206495%_))))
                                                      (let ((_%tl206427206458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e206425206453%_)))
                    (_%hd206426206456%_
                     (let () (declare (not safe)) (##car _%e206425206453%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl206427206458%_))
                    (_%__kont207768207769%_
                     _%hd206426206456%_
                     _%hd206400206493%_)
                    (let () (declare (not safe)) (_%g206392206432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206392206432%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206401206495%_))
                                                (let ((_%e206425206453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl206401206495%_))))
                                                  (let ((_%tl206427206458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206425206453%_)))
                                                        (_%hd206426206456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206425206453%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206427206458%_))
                                                        (_%__kont207768207769%_
                                                         _%hd206426206456%_
                                                         _%hd206400206493%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g206392206432%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g206392206432%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206401206495%_))
                                            (let ((_%e206425206453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl206401206495%_))))
                                              (let ((_%tl206427206458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206425206453%_)))
                                                    (_%hd206426206456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206425206453%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206427206458%_))
                                                    (_%__kont207768207769%_
                                                     _%hd206426206456%_
                                                     _%hd206400206493%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206392206432%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206392206432%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206401206495%_))
                                    (let ((_%e206425206453%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl206401206495%_))))
                                      (let ((_%tl206427206458%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206425206453%_)))
                                            (_%hd206426206456%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206425206453%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206427206458%_))
                                            (_%__kont207768207769%_
                                             _%hd206426206456%_
                                             _%hd206400206493%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g206392206432%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206392206432%_))))))
                        (let () (declare (not safe)) (_%g206392206432%_)))))
                (let () (declare (not safe)) (_%g206392206432%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self206375%_)
        (let ((_%self206378%_ _%self206375%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206378%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self206148%_)
        (let* ((_%self206151%_ _%self206148%_)
               (_%self206160206176%_ _%self206151%_)
               (_%E206162206180%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206160206176%_
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
               (_%K206163206195%_
                (lambda (_%methods206183%_
                         _%metaclass206184%_
                         _%system?206185%_
                         _%final?206186%_
                         _%struct?206187%_
                         _%constructor206188%_
                         _%fields206189%_
                         _%slots206190%_
                         _%precendence-list206191%_
                         _%super206192%_
                         _%id206193%_)
                  (cons '@class
                        (cons _%id206193%_
                              (cons _%super206192%_
                                    (cons _%precendence-list206191%_
                                          (cons _%slots206190%_
                                                (cons _%fields206189%_
                                                      (cons _%constructor206188%_
                                                            (cons _%struct?206187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?206186%_
                                (cons _%system?206185%_
                                      (cons _%metaclass206184%_
                                            (cons (if _%methods206183%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods206183%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e206164206198%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '1 '#f '#f)))
               (_%id206201%_ _%e206164206198%_)
               (_%e206165206203%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '2 '#f '#f)))
               (_%super206206%_ _%e206165206203%_)
               (_%e206166206208%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '3 '#f '#f)))
               (_%precendence-list206211%_ _%e206166206208%_)
               (_%e206167206213%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '4 '#f '#f)))
               (_%slots206216%_ _%e206167206213%_)
               (_%e206168206218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '5 '#f '#f)))
               (_%fields206221%_ _%e206168206218%_)
               (_%e206169206223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '6 '#f '#f)))
               (_%constructor206226%_ _%e206169206223%_)
               (_%e206170206228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '7 '#f '#f)))
               (_%struct?206231%_ _%e206170206228%_)
               (_%e206171206233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '8 '#f '#f)))
               (_%final?206236%_ _%e206171206233%_)
               (_%e206172206238%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206160206176%_ '9 '#f '#f)))
               (_%system?206241%_ _%e206172206238%_)
               (_%e206173206243%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self206160206176%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass206246%_ _%e206173206243%_)
               (_%e206174206248%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self206160206176%_
                   '11
                   '#f
                   '#f)))
               (_%methods206251%_ _%e206174206248%_))
          (_%K206163206195%_
           _%methods206251%_
           _%metaclass206246%_
           _%system?206241%_
           _%final?206236%_
           _%struct?206231%_
           _%constructor206226%_
           _%fields206221%_
           _%slots206216%_
           _%precendence-list206211%_
           _%super206206%_
           _%id206201%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self206013%_)
        (let ((_%self206016%_ _%self206013%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206016%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self205878%_)
        (let ((_%self205881%_ _%self205878%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205881%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self205743%_)
        (let ((_%self205746%_ _%self205743%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205746%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self205746%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self205746%_
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
      (lambda (_%self205608%_)
        (let ((_%self205611%_ _%self205608%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205611%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self205611%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self205611%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self205473%_)
        (let ((_%self205476%_ _%self205473%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205476%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self205476%_
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
      (lambda (_%self205286%_)
        (let* ((_%self205289%_ _%self205286%_)
               (_%self205298205307%_ _%self205289%_)
               (_%E205300205311%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self205298205307%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K205301205330%_
                (lambda (_%dispatch205314%_
                         _%arity205315%_
                         _%signature205316%_)
                  (if _%signature205316%_
                      (let ((_%signature205318%_ _%signature205316%_))
                        (cons '@lambda
                              (cons _%arity205315%_
                                    (cons _%dispatch205314%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature205318%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature205318%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature205318%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature205318%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature205318%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity205315%_
                                  (cons _%dispatch205314%_ '()))))))
               (_%e205302205333%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205298205307%_ '1 '#f '#f)))
               (_%e205303205336%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205298205307%_ '2 '#f '#f)))
               (_%signature205339%_ _%e205303205336%_)
               (_%e205304205341%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205298205307%_ '3 '#f '#f)))
               (_%arity205344%_ _%e205304205341%_)
               (_%e205305205346%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self205298205307%_ '4 '#f '#f)))
               (_%dispatch205349%_ _%e205305205346%_))
          (_%K205301205330%_
           _%dispatch205349%_
           _%arity205344%_
           _%signature205339%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self205146%_)
        (let ((_%self205149%_ _%self205146%_))
          (letrec ((_%clause-e205160%_
                    (lambda (_%clause205162%_)
                      (cdr (let ((__method207852
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause205162%_
                                     'typedecl))))
                             (if __method207852
                                 (let ()
                                   (declare (not safe))
                                   (__method207852 _%clause205162%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause205162%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e205160%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self205149%_
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
      (lambda (_%self205011%_)
        (let ((_%self205014%_ _%self205011%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205014%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self205014%_
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
      (lambda (_%self204876%_)
        (let ((_%self204879%_ _%self204876%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204879%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self204879%_
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
      (lambda (_%self204741%_)
        (let ((_%self204744%_ _%self204741%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self204744%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
