(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771025416)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp257260
                   (let ((__obj257254
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
                       (gxc#optimizer-info:::init! __obj257254))
                     __obj257254)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp257260)))))
    (define gxc#optimize!
      (lambda (_%ctx256862%_)
        (let ((__tmp257262
               (lambda ()
                 (let ((__tmp257264
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx256862%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx256862%_)
                          (let ((__tmp257266
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp257265
                                 (##structure-ref
                                  _%ctx256862%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257266 __tmp257265 '#t))
                          (let ((_%code256866%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx256862%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx256862%_
                             _%code256866%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp257263
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp257264
                    gxc#current-compile-local-type
                    __tmp257263))))
              (__tmp257261 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257262
           gxc#current-compile-mutators
           __tmp257261))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx256848%_)
        (letrec ((_%load-it!256850%_
                  (lambda (_%id256860%_)
                    (if (let ((__tmp257267
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp257267 _%id256860%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id256860%_)
                          (let ((__tmp257268
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp257268 _%id256860%_ '#t)))))))
          (let* ((_%modid256852%_
                  (##structure-ref
                   _%ctx256848%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str256854%_ (symbol->string _%modid256852%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str256854%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str256854%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!256850%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!256850%_
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
      (lambda (_%ctx256785%_)
        (letrec* ((_%deps256787%_
                   (let* ((_%imports256838%_
                           (##structure-ref
                            _%ctx256785%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e256840%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx256785%_))))
                     (if _%$e256840%_
                         ((lambda (_%g256842256844%_)
                            (cons _%g256842256844%_ _%imports256838%_))
                          _%$e256840%_)
                         _%imports256838%_))))
          (let _%lp256789%_ ((_%rest256791%_ _%deps256787%_))
            (let* ((_%rest256792256800%_ _%rest256791%_)
                   (_%else256794256808%_ (lambda () '#!void))
                   (_%K256796256826%_
                    (lambda (_%rest256811%_ _%hd256812%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd256812%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp257270
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp257269
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd256812%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp257270 __tmp257269))
                                '#!void
                                (begin
                                  (let ((_%$e256815%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd256812%_))))
                                    (if _%$e256815%_
                                        ((lambda (_%pre256818%_)
                                           (_%lp256789%_
                                            (cons _%pre256818%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd256812%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e256815%_)
                                        (_%lp256789%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd256812%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd256812%_)))
                            (_%lp256789%_ _%rest256811%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd256812%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp257272
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp257271
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd256812%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp257272 __tmp257271))
                                    '#!void
                                    (begin
                                      (_%lp256789%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd256812%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd256812%_)))
                                (_%lp256789%_ _%rest256811%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd256812%_
                                     'gx#module-import::t))
                                  (_%lp256789%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd256812%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest256811%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd256812%_
                                         'gx#module-export::t))
                                      (_%lp256789%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd256812%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest256811%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd256812%_
                                             'gx#import-set::t))
                                          (_%lp256789%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd256812%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest256811%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd256812%_))))))))))
              (if (pair? _%rest256792256800%_)
                  (let ((_%hd256797256829%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest256792256800%_)))
                        (_%tl256798256831%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest256792256800%_))))
                    (let* ((_%hd256834%_ _%hd256797256829%_)
                           (_%rest256836%_ _%tl256798256831%_))
                      (_%K256796256826%_ _%rest256836%_ _%hd256834%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx256765%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx256765%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx256765%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht256767%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id256769%_
                    (##structure-ref
                     _%ctx256765%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod256771%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht256767%_ _%id256769%_)))
                   (_%$e256774%_ _%mod256771%_))
              (if _%$e256774%_
                  _%$e256774%_
                  (let* ((_%mod256777%_
                          (gxc#optimizer-import-ssxi _%ctx256765%_))
                         (_%val256782%_
                          (let ((_%$e256779%_ _%mod256777%_))
                            (if _%$e256779%_ _%$e256779%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht256767%_ _%id256769%_ _%val256782%_))
                    _%val256782%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx256763%_)
        (if (##structure-ref _%ctx256763%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx256763%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id256741%_)
        (letrec ((_%catch-e256743%_
                  (lambda (_%exn256761%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn256761%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn256761%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id256741%_))))
                    '#f))
                 (_%import-e256744%_
                  (lambda ()
                    (let* ((_%str-id256747%_
                            (let ((__tmp257273
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id256741%_))))
                              (declare (not safe))
                              (##string-append __tmp257273 '".ssxi")))
                           (_%artefact-path256754%_
                            (let ((_%odir256748256750%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir256748256750%_
                                  (let ((_%odir256752%_ _%odir256748256750%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id256747%_
                                        '".ss"))
                                     _%odir256752%_))
                                  '#f)))
                           (_%library-path256756%_
                            (let ((__tmp257274
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id256747%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp257274)))
                           (_%ssxi-path256758%_
                            (if (and _%artefact-path256754%_
                                     (file-exists? _%artefact-path256754%_))
                                _%artefact-path256754%_
                                _%library-path256756%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path256758%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path256758%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e256743%_ _%import-e256744%_)))))
    (define gxc#optimize-source
      (lambda (_%stx256726%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx256726%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx256726%_))
        (let* ((_%stx256728%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx256726%_)))
               (_%stx256730%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx256728%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx256730%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx256730%_))
          (let _%fixpoint256733%_ ((_%current256735%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx256730%_))
            (let ((_%refined256737%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current256735%_ _%refined256737%_)
                  '#!void
                  (_%fixpoint256733%_ _%refined256737%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx256730%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx256730%_))
          (let ((_%stx256739%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx256730%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx256739%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp257276 (list gxc#::generate-runtime-empty::t))
            (__tmp257275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp257276
         '()
         __tmp257275
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args256723%_
        (apply make-instance gxc#::generate-ssxi::t _%$args256723%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp257277
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
        (__make-atomic-promise __tmp257277)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx256715%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self256718%_
                (let ((__obj257256
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj257256))
               (__tmp257278
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self256718%_ _%stx256715%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp257278
           gxc#current-compile-method
           _%self256718%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self256675%_ _%stx256676%_)
        (let* ((_%g256678256688%_
                (lambda (_%g256679256685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256679256685%_))))
               (_%g256677256712%_
                (lambda (_%g256679256691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256679256691%_))
                      (let ((_%e256681256693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g256679256691%_))))
                        (let ((_%hd256682256696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256681256693%_)))
                              (_%tl256683256698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256681256693%_))))
                          ((lambda (_%g256680256701%_)
                             (let ((__tmp257281
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self256675%_
                                         _%stx256676%_))))
                                   (__tmp257279
                                    (let ((__tmp257280
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp257280 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp257281
                                gx#current-expander-phi
                                __tmp257279)))
                           _%tl256683256698%_)))
                      (_%g256678256688%_ _%g256679256691%_)))))
          (_%g256677256712%_ _%stx256676%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self256614%_ _%stx256615%_)
        (let* ((_%g256617256631%_
                (lambda (_%g256618256628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g256618256628%_))))
               (_%g256616256672%_
                (lambda (_%g256618256634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g256618256634%_))
                      (let ((_%e256621256636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g256618256634%_))))
                        (let ((_%hd256622256639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256621256636%_)))
                              (_%tl256623256641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256621256636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl256623256641%_))
                              (let ((_%e256624256644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl256623256641%_))))
                                (let ((_%hd256625256647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256624256644%_)))
                                      (_%tl256626256649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256624256644%_))))
                                  ((lambda (_%g256619256652%_
                                            _%g256620256653%_)
                                     (let* ((_%ctx256666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g256620256653%_)))
                                            (_%code256668%_
                                             (##structure-ref
                                              _%ctx256666%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp257282
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self256614%_
                                                  _%code256668%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp257282
                                        gx#current-expander-context
                                        _%ctx256666%_)))
                                   _%tl256626256649%_
                                   _%hd256625256647%_)))
                              (_%g256617256631%_ _%g256618256634%_))))
                      (_%g256617256631%_ _%g256618256634%_)))))
          (_%g256616256672%_ _%stx256615%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self256421%_ _%stx256422%_)
        (letrec ((_%generate-e256424%_
                  (lambda (_%id256599%_)
                    (let* ((_%sym256601%_
                            (if (let ((__tmp257283
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp257283))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id256599%_))
                                '#f))
                           (_%$e256603%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym256601%_))))
                      (if _%$e256603%_
                          ((lambda (_%klass256606%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym256601%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym256601%_
                                                     (cons (let ((__method257257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass256606%_ 'typedecl))))
                     (if __method257257
                         (let ()
                           (declare (not safe))
                           (__method257257 _%klass256606%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass256606%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym256601%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym256601%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e256603%_)
                          (let ((_%$e256608%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym256601%_))))
                            (if _%$e256608%_
                                ((lambda (_%type256611%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym256601%_
                                      '" "
                                      _%type256611%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type256611%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym256601%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym256601%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type256611%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym256601%_
                                                   (cons (let ((__method257258
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type256611%_ 'typedecl))))
                   (if __method257258
                       (let ()
                         (declare (not safe))
                         (__method257258 _%type256611%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type256611%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e256608%_)
                                '(begin))))))))
          (let* ((_%__stx256869256870%_ _%stx256422%_)
                 (_%g256427256465%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx256869256870%_)))))
            (let ((_%__kont256871256872%_
                   (lambda (_%g256429256581%_)
                     (_%generate-e256424%_ _%g256429256581%_)))
                  (_%__kont256873256874%_
                   (lambda (_%g256442256516%_)
                     (let ((_%types256542%_
                            (map _%generate-e256424%_
                                 (let ((__tmp257284
                                        (lambda (_%g256534256537%_
                                                 _%g256535256539%_)
                                          (cons _%g256534256537%_
                                                _%g256535256539%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp257284
                                    '()
                                    _%g256442256516%_)))))
                       (cons 'begin _%types256542%_)))))
              (let ((_%__match256924256925%_
                     (lambda (_%e256443256470%_
                              _%hd256444256473%_
                              _%tl256445256475%_
                              _%e256446256478%_
                              _%hd256447256481%_
                              _%tl256448256483%_
                              _%__splice256875256876%_
                              _%target256449256486%_
                              _%tl256451256488%_)
                       (letrec ((_%loop256452256491%_
                                 (lambda (_%hd256450256494%_
                                          _%id256456256496%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd256450256494%_))
                                       (let ((_%e256453256498%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd256450256494%_))))
                                         (let ((_%lp-tl256455256503%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e256453256498%_)))
                                               (_%lp-hd256454256501%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e256453256498%_))))
                                           (_%loop256452256491%_
                                            _%lp-tl256455256503%_
                                            (cons _%lp-hd256454256501%_
                                                  _%id256456256496%_))))
                                       (let ((_%id256457256506%_
                                              (reverse _%id256456256496%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl256448256483%_))
                                             (let ((_%e256458256508%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl256448256483%_))))
                                               (let ((_%tl256460256513%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e256458256508%_)))
                                                     (_%hd256459256511%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e256458256508%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl256460256513%_))
                                                     (_%__kont256873256874%_
                                                      _%id256457256506%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g256427256465%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g256427256465%_))))))))
                         (_%loop256452256491%_ _%target256449256486%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx256869256870%_))
                    (let ((_%e256430256549%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx256869256870%_))))
                      (let ((_%tl256432256554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256430256549%_)))
                            (_%hd256431256552%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256430256549%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl256432256554%_))
                            (let ((_%e256433256557%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl256432256554%_))))
                              (let ((_%tl256435256562%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256433256557%_)))
                                    (_%hd256434256560%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256433256557%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd256434256560%_))
                                    (let ((_%e256436256565%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd256434256560%_))))
                                      (let ((_%tl256438256570%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256436256565%_)))
                                            (_%hd256437256568%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256436256565%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256438256570%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256435256562%_))
                                                (let ((_%e256439256573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256435256562%_))))
                                                  (let ((_%tl256441256578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256439256573%_)))
                                                        (_%hd256440256576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256439256573%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256441256578%_))
                                                        (_%__kont256871256872%_
                                                         _%hd256437256568%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd256434256560%_))
                                                            (let ((_%__splice256875256876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd256434256560%_
                              '0))))
                      (let ((_%tl256451256488%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice256875256876%_ '1)))
                            (_%target256449256486%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice256875256876%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256451256488%_))
                            (_%__match256924256925%_
                             _%e256430256549%_
                             _%hd256431256552%_
                             _%tl256432256554%_
                             _%e256433256557%_
                             _%hd256434256560%_
                             _%tl256435256562%_
                             _%__splice256875256876%_
                             _%target256449256486%_
                             _%tl256451256488%_)
                            (let ()
                              (declare (not safe))
                              (_%g256427256465%_)))))
                    (let () (declare (not safe)) (_%g256427256465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd256434256560%_))
                                                    (let ((_%__splice256875256876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd256434256560%_
                                                              '0))))
                                                      (let ((_%tl256451256488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice256875256876%_ '1)))
                    (_%target256449256486%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice256875256876%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256451256488%_))
                    (_%__match256924256925%_
                     _%e256430256549%_
                     _%hd256431256552%_
                     _%tl256432256554%_
                     _%e256433256557%_
                     _%hd256434256560%_
                     _%tl256435256562%_
                     _%__splice256875256876%_
                     _%target256449256486%_
                     _%tl256451256488%_)
                    (let () (declare (not safe)) (_%g256427256465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256427256465%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd256434256560%_))
                                                (let ((_%__splice256875256876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd256434256560%_
                                                          '0))))
                                                  (let ((_%tl256451256488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice256875256876%_
                                                            '1)))
                                                        (_%target256449256486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice256875256876%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256451256488%_))
                                                        (_%__match256924256925%_
                                                         _%e256430256549%_
                                                         _%hd256431256552%_
                                                         _%tl256432256554%_
                                                         _%e256433256557%_
                                                         _%hd256434256560%_
                                                         _%tl256435256562%_
                                                         _%__splice256875256876%_
                                                         _%target256449256486%_
                                                         _%tl256451256488%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256427256465%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256427256465%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd256434256560%_))
                                        (let ((_%__splice256875256876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd256434256560%_
                                                  '0))))
                                          (let ((_%tl256451256488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice256875256876%_
                                                    '1)))
                                                (_%target256449256486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice256875256876%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256451256488%_))
                                                (_%__match256924256925%_
                                                 _%e256430256549%_
                                                 _%hd256431256552%_
                                                 _%tl256432256554%_
                                                 _%e256433256557%_
                                                 _%hd256434256560%_
                                                 _%tl256435256562%_
                                                 _%__splice256875256876%_
                                                 _%target256449256486%_
                                                 _%tl256451256488%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256427256465%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g256427256465%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g256427256465%_)))))
                    (let () (declare (not safe)) (_%g256427256465%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self255974%_ _%stx255975%_)
        (let* ((_%__stx256927256928%_ _%stx255975%_)
               (_%g255979256081%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx256927256928%_)))))
          (let ((_%__kont256929256930%_
                 (lambda (_%g255981256371%_
                          _%g255982256372%_
                          _%g255983256373%_
                          _%g255984256374%_
                          _%g255985256375%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g255984256374%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g255983256373%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g255982256372%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g255981256371%_))
                                                 '())))))))
                (_%__kont256931256932%_
                 (lambda (_%g256034256197%_
                          _%g256035256198%_
                          _%g256036256199%_
                          _%g256037256200%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256036256199%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g256035256198%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g256034256197%_))
                                           (cons '#f '())))))))
                (_%__kont256933256934%_ (lambda () '(begin))))
            (let ((_%__match257062257063%_
                   (lambda (_%e255986256243%_
                            _%hd255987256246%_
                            _%tl255988256248%_
                            _%e255989256251%_
                            _%hd255990256254%_
                            _%tl255991256256%_
                            _%e255992256259%_
                            _%hd255993256262%_
                            _%tl255994256264%_
                            _%e255995256267%_
                            _%hd255996256270%_
                            _%tl255997256272%_
                            _%e255998256275%_
                            _%hd255999256278%_
                            _%tl256000256280%_
                            _%e256001256283%_
                            _%hd256002256286%_
                            _%tl256003256288%_
                            _%e256004256291%_
                            _%hd256005256294%_
                            _%tl256006256296%_
                            _%e256007256299%_
                            _%hd256008256302%_
                            _%tl256009256304%_
                            _%e256010256307%_
                            _%hd256011256310%_
                            _%tl256012256312%_
                            _%e256013256315%_
                            _%hd256014256318%_
                            _%tl256015256320%_
                            _%e256016256323%_
                            _%hd256017256326%_
                            _%tl256018256328%_
                            _%e256019256331%_
                            _%hd256020256334%_
                            _%tl256021256336%_
                            _%e256022256339%_
                            _%hd256023256342%_
                            _%tl256024256344%_
                            _%e256025256347%_
                            _%hd256026256350%_
                            _%tl256027256352%_
                            _%e256028256355%_
                            _%hd256029256358%_
                            _%tl256030256360%_
                            _%e256031256363%_
                            _%hd256032256366%_
                            _%tl256033256368%_)
                     (let ((_%g255981256371%_ _%hd256032256366%_)
                           (_%g255982256372%_ _%hd256023256342%_)
                           (_%g255983256373%_ _%hd256014256318%_)
                           (_%g255984256374%_ _%hd256005256294%_)
                           (_%g255985256375%_ _%hd255996256270%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g255985256375%_
                              'bind-method!))
                           (_%__kont256929256930%_
                            _%g255981256371%_
                            _%g255982256372%_
                            _%g255983256373%_
                            _%g255984256374%_
                            _%g255985256375%_)
                           (_%__kont256933256934%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx256927256928%_))
                  (let ((_%e255986256243%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx256927256928%_))))
                    (let ((_%tl255988256248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e255986256243%_)))
                          (_%hd255987256246%_
                           (let ()
                             (declare (not safe))
                             (##car _%e255986256243%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl255988256248%_))
                          (let ((_%e255989256251%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl255988256248%_))))
                            (let ((_%tl255991256256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e255989256251%_)))
                                  (_%hd255990256254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e255989256251%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd255990256254%_))
                                  (let ((_%e255992256259%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd255990256254%_))))
                                    (let ((_%tl255994256264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e255992256259%_)))
                                          (_%hd255993256262%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e255992256259%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd255993256262%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd255993256262%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl255994256264%_))
                                                  (let ((_%e255995256267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl255994256264%_))))
                                                    (let ((_%tl255997256272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e255995256267%_)))
                                                          (_%hd255996256270%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e255995256267%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl255997256272%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl255991256256%_))
                      (let ((_%e255998256275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl255991256256%_))))
                        (let ((_%tl256000256280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255998256275%_)))
                              (_%hd255999256278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255998256275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd255999256278%_))
                              (let ((_%e256001256283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd255999256278%_))))
                                (let ((_%tl256003256288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e256001256283%_)))
                                      (_%hd256002256286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e256001256283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd256002256286%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd256002256286%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl256003256288%_))
                                              (let ((_%e256004256291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl256003256288%_))))
                                                (let ((_%tl256006256296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e256004256291%_)))
                                                      (_%hd256005256294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e256004256291%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256006256296%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl256000256280%_))
                                                          (let ((_%e256007256299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl256000256280%_))))
                    (let ((_%tl256009256304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256007256299%_)))
                          (_%hd256008256302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256007256299%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd256008256302%_))
                          (let ((_%e256010256307%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd256008256302%_))))
                            (let ((_%tl256012256312%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e256010256307%_)))
                                  (_%hd256011256310%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e256010256307%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd256011256310%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd256011256310%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl256012256312%_))
                                          (let ((_%e256013256315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl256012256312%_))))
                                            (let ((_%tl256015256320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e256013256315%_)))
                                                  (_%hd256014256318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e256013256315%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl256015256320%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl256009256304%_))
                                                      (let ((_%e256016256323%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl256009256304%_))))
                (let ((_%tl256018256328%_
                       (let () (declare (not safe)) (##cdr _%e256016256323%_)))
                      (_%hd256017256326%_
                       (let ()
                         (declare (not safe))
                         (##car _%e256016256323%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd256017256326%_))
                      (let ((_%e256019256331%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd256017256326%_))))
                        (let ((_%tl256021256336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e256019256331%_)))
                              (_%hd256020256334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e256019256331%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd256020256334%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd256020256334%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl256021256336%_))
                                      (let ((_%e256022256339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl256021256336%_))))
                                        (let ((_%tl256024256344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e256022256339%_)))
                                              (_%hd256023256342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e256022256339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256024256344%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl256018256328%_))
                                                  (let ((_%e256025256347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl256018256328%_))))
                                                    (let ((_%tl256027256352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e256025256347%_)))
                                                          (_%hd256026256350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e256025256347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd256026256350%_))
                                                          (let ((_%e256028256355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd256026256350%_))))
                    (let ((_%tl256030256360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e256028256355%_)))
                          (_%hd256029256358%_
                           (let ()
                             (declare (not safe))
                             (##car _%e256028256355%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd256029256358%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd256029256358%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl256030256360%_))
                                  (let ((_%e256031256363%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl256030256360%_))))
                                    (let ((_%tl256033256368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e256031256363%_)))
                                          (_%hd256032256366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e256031256363%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl256033256368%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl256027256352%_))
                                              (_%__match257062257063%_
                                               _%e255986256243%_
                                               _%hd255987256246%_
                                               _%tl255988256248%_
                                               _%e255989256251%_
                                               _%hd255990256254%_
                                               _%tl255991256256%_
                                               _%e255992256259%_
                                               _%hd255993256262%_
                                               _%tl255994256264%_
                                               _%e255995256267%_
                                               _%hd255996256270%_
                                               _%tl255997256272%_
                                               _%e255998256275%_
                                               _%hd255999256278%_
                                               _%tl256000256280%_
                                               _%e256001256283%_
                                               _%hd256002256286%_
                                               _%tl256003256288%_
                                               _%e256004256291%_
                                               _%hd256005256294%_
                                               _%tl256006256296%_
                                               _%e256007256299%_
                                               _%hd256008256302%_
                                               _%tl256009256304%_
                                               _%e256010256307%_
                                               _%hd256011256310%_
                                               _%tl256012256312%_
                                               _%e256013256315%_
                                               _%hd256014256318%_
                                               _%tl256015256320%_
                                               _%e256016256323%_
                                               _%hd256017256326%_
                                               _%tl256018256328%_
                                               _%e256019256331%_
                                               _%hd256020256334%_
                                               _%tl256021256336%_
                                               _%e256022256339%_
                                               _%hd256023256342%_
                                               _%tl256024256344%_
                                               _%e256025256347%_
                                               _%hd256026256350%_
                                               _%tl256027256352%_
                                               _%e256028256355%_
                                               _%hd256029256358%_
                                               _%tl256030256360%_
                                               _%e256031256363%_
                                               _%hd256032256366%_
                                               _%tl256033256368%_)
                                              (_%__kont256933256934%_))
                                          (_%__kont256933256934%_))))
                                  (_%__kont256933256934%_))
                              (_%__kont256933256934%_))
                          (_%__kont256933256934%_))))
                  (_%__kont256933256934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl256018256328%_))
                                                      (if (let ((__tmp257285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp257285 'bind-method!))
                  (let ((_%g256034256197%_ _%hd256023256342%_)
                        (_%g256035256198%_ _%hd256014256318%_)
                        (_%g256036256199%_ _%hd256005256294%_)
                        (_%g256037256200%_ _%hd255996256270%_))
                    (_%__kont256931256932%_
                     _%g256034256197%_
                     _%g256035256198%_
                     _%g256036256199%_
                     _%g256037256200%_))
                  (_%__kont256933256934%_))
              (_%__kont256933256934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256933256934%_))))
                                      (_%__kont256933256934%_))
                                  (_%__kont256933256934%_))
                              (_%__kont256933256934%_))))
                      (_%__kont256933256934%_))))
              (_%__kont256933256934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256933256934%_))))
                                          (_%__kont256933256934%_))
                                      (_%__kont256933256934%_))
                                  (_%__kont256933256934%_))))
                          (_%__kont256933256934%_))))
                  (_%__kont256933256934%_))
              (_%__kont256933256934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont256933256934%_))
                                          (_%__kont256933256934%_))
                                      (_%__kont256933256934%_))))
                              (_%__kont256933256934%_))))
                      (_%__kont256933256934%_))
                  (_%__kont256933256934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont256933256934%_))
                                              (_%__kont256933256934%_))
                                          (_%__kont256933256934%_))))
                                  (_%__kont256933256934%_))))
                          (_%__kont256933256934%_))))
                  (_%__kont256933256934%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self255798%_ _%stx255799%_)
        (let* ((_%__stx257171257172%_ _%stx255799%_)
               (_%g255802255842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257171257172%_)))))
          (let ((_%__kont257173257174%_
                 (lambda (_%g255804255948%_ _%g255805255949%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g255805255949%_))
                               (cons _%g255804255948%_ '())))))
                (_%__kont257175257176%_
                 (lambda (_%g255827255871%_ _%g255828255872%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx257171257172%_))
                (let ((_%e255806255892%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx257171257172%_))))
                  (let ((_%tl255808255897%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e255806255892%_)))
                        (_%hd255807255895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e255806255892%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl255808255897%_))
                        (let ((_%e255809255900%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl255808255897%_))))
                          (let ((_%tl255811255905%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e255809255900%_)))
                                (_%hd255810255903%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e255809255900%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd255810255903%_))
                                (let ((_%e255812255908%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd255810255903%_))))
                                  (let ((_%tl255814255913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e255812255908%_)))
                                        (_%hd255813255911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e255812255908%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd255813255911%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd255813255911%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255814255913%_))
                                                (let ((_%e255815255916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255814255913%_))))
                                                  (let ((_%tl255817255921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255815255916%_)))
                                                        (_%hd255816255919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255815255916%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255817255921%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl255811255905%_))
                                                            (let ((_%e255818255924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl255811255905%_))))
                      (let ((_%tl255820255929%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255818255924%_)))
                            (_%hd255819255927%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255818255924%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd255819255927%_))
                            (let ((_%e255821255932%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd255819255927%_))))
                              (let ((_%tl255823255937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e255821255932%_)))
                                    (_%hd255822255935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e255821255932%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd255822255935%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd255822255935%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255823255937%_))
                                            (let ((_%e255824255940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255823255937%_))))
                                              (let ((_%tl255826255945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255824255940%_)))
                                                    (_%hd255825255943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255824255940%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255826255945%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255820255929%_))
                                                        (_%__kont257173257174%_
                                                         _%hd255825255943%_
                                                         _%hd255816255919%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255802255842%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255820255929%_))
                                                        (_%__kont257175257176%_
                                                         _%hd255819255927%_
                                                         _%hd255810255903%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255802255842%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl255820255929%_))
                                                (_%__kont257175257176%_
                                                 _%hd255819255927%_
                                                 _%hd255810255903%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255802255842%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255820255929%_))
                                            (_%__kont257175257176%_
                                             _%hd255819255927%_
                                             _%hd255810255903%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g255802255842%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl255820255929%_))
                                        (_%__kont257175257176%_
                                         _%hd255819255927%_
                                         _%hd255810255903%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g255802255842%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl255820255929%_))
                                (_%__kont257175257176%_
                                 _%hd255819255927%_
                                 _%hd255810255903%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g255802255842%_))))))
                    (let () (declare (not safe)) (_%g255802255842%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl255811255905%_))
                    (let ((_%e255835255863%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl255811255905%_))))
                      (let ((_%tl255837255868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255835255863%_)))
                            (_%hd255836255866%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255835255863%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl255837255868%_))
                            (_%__kont257175257176%_
                             _%hd255836255866%_
                             _%hd255810255903%_)
                            (let ()
                              (declare (not safe))
                              (_%g255802255842%_)))))
                    (let () (declare (not safe)) (_%g255802255842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl255811255905%_))
                                                    (let ((_%e255835255863%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl255811255905%_))))
                                                      (let ((_%tl255837255868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e255835255863%_)))
                    (_%hd255836255866%_
                     (let () (declare (not safe)) (##car _%e255835255863%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl255837255868%_))
                    (_%__kont257175257176%_
                     _%hd255836255866%_
                     _%hd255810255903%_)
                    (let () (declare (not safe)) (_%g255802255842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255802255842%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255811255905%_))
                                                (let ((_%e255835255863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255811255905%_))))
                                                  (let ((_%tl255837255868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255835255863%_)))
                                                        (_%hd255836255866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255835255863%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255837255868%_))
                                                        (_%__kont257175257176%_
                                                         _%hd255836255866%_
                                                         _%hd255810255903%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255802255842%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255802255842%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl255811255905%_))
                                            (let ((_%e255835255863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl255811255905%_))))
                                              (let ((_%tl255837255868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e255835255863%_)))
                                                    (_%hd255836255866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e255835255863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl255837255868%_))
                                                    (_%__kont257175257176%_
                                                     _%hd255836255866%_
                                                     _%hd255810255903%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255802255842%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g255802255842%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl255811255905%_))
                                    (let ((_%e255835255863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl255811255905%_))))
                                      (let ((_%tl255837255868%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e255835255863%_)))
                                            (_%hd255836255866%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e255835255863%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255837255868%_))
                                            (_%__kont257175257176%_
                                             _%hd255836255866%_
                                             _%hd255810255903%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g255802255842%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g255802255842%_))))))
                        (let () (declare (not safe)) (_%g255802255842%_)))))
                (let () (declare (not safe)) (_%g255802255842%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self255785%_)
        (let ((_%self255788%_ _%self255785%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255788%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self255559%_)
        (let* ((_%self255562%_ _%self255559%_)
               (_%self255571255587%_ _%self255562%_)
               (_%E255573255590%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255571255587%_
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
               (_%K255574255605%_
                (lambda (_%methods255593%_
                         _%metaclass255594%_
                         _%system?255595%_
                         _%final?255596%_
                         _%struct?255597%_
                         _%constructor255598%_
                         _%fields255599%_
                         _%slots255600%_
                         _%precendence-list255601%_
                         _%super255602%_
                         _%id255603%_)
                  (cons '@class
                        (cons _%id255603%_
                              (cons _%super255602%_
                                    (cons _%precendence-list255601%_
                                          (cons _%slots255600%_
                                                (cons _%fields255599%_
                                                      (cons _%constructor255598%_
                                                            (cons _%struct?255597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?255596%_
                                (cons _%system?255595%_
                                      (cons _%metaclass255594%_
                                            (cons (if _%methods255593%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods255593%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e255575255608%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '1 '#f '#f)))
               (_%id255611%_ _%e255575255608%_)
               (_%e255576255613%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '2 '#f '#f)))
               (_%super255616%_ _%e255576255613%_)
               (_%e255577255618%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '3 '#f '#f)))
               (_%precendence-list255621%_ _%e255577255618%_)
               (_%e255578255623%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '4 '#f '#f)))
               (_%slots255626%_ _%e255578255623%_)
               (_%e255579255628%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '5 '#f '#f)))
               (_%fields255631%_ _%e255579255628%_)
               (_%e255580255633%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '6 '#f '#f)))
               (_%constructor255636%_ _%e255580255633%_)
               (_%e255581255638%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '7 '#f '#f)))
               (_%struct?255641%_ _%e255581255638%_)
               (_%e255582255643%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '8 '#f '#f)))
               (_%final?255646%_ _%e255582255643%_)
               (_%e255583255648%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255571255587%_ '9 '#f '#f)))
               (_%system?255651%_ _%e255583255648%_)
               (_%e255584255653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self255571255587%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass255656%_ _%e255584255653%_)
               (_%e255585255658%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self255571255587%_
                   '11
                   '#f
                   '#f)))
               (_%methods255661%_ _%e255585255658%_))
          (_%K255574255605%_
           _%methods255661%_
           _%metaclass255656%_
           _%system?255651%_
           _%final?255646%_
           _%struct?255641%_
           _%constructor255636%_
           _%fields255631%_
           _%slots255626%_
           _%precendence-list255621%_
           _%super255616%_
           _%id255611%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self255424%_)
        (let ((_%self255427%_ _%self255424%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255427%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self255289%_)
        (let ((_%self255292%_ _%self255289%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255292%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self255154%_)
        (let ((_%self255157%_ _%self255154%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255157%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255157%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255157%_
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
      (lambda (_%self255019%_)
        (let ((_%self255022%_ _%self255019%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255022%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255022%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self255022%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self254884%_)
        (let ((_%self254887%_ _%self254884%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254887%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254887%_
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
      (lambda (_%self254698%_)
        (let* ((_%self254701%_ _%self254698%_)
               (_%self254710254719%_ _%self254701%_)
               (_%E254712254722%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self254710254719%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K254713254741%_
                (lambda (_%dispatch254725%_
                         _%arity254726%_
                         _%signature254727%_)
                  (if _%signature254727%_
                      (let ((_%signature254729%_ _%signature254727%_))
                        (cons '@lambda
                              (cons _%arity254726%_
                                    (cons _%dispatch254725%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature254729%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature254729%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature254729%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature254729%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature254729%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity254726%_
                                  (cons _%dispatch254725%_ '()))))))
               (_%e254714254744%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254710254719%_ '1 '#f '#f)))
               (_%e254715254747%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254710254719%_ '2 '#f '#f)))
               (_%signature254750%_ _%e254715254747%_)
               (_%e254716254752%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254710254719%_ '3 '#f '#f)))
               (_%arity254755%_ _%e254716254752%_)
               (_%e254717254757%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254710254719%_ '4 '#f '#f)))
               (_%dispatch254760%_ _%e254717254757%_))
          (_%K254713254741%_
           _%dispatch254760%_
           _%arity254755%_
           _%signature254750%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self254558%_)
        (let ((_%self254561%_ _%self254558%_))
          (letrec ((_%clause-e254572%_
                    (lambda (_%clause254574%_)
                      (cdr (let ((__method257259
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause254574%_
                                     'typedecl))))
                             (if __method257259
                                 (let ()
                                   (declare (not safe))
                                   (__method257259 _%clause254574%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause254574%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e254572%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self254561%_
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
      (lambda (_%self254423%_)
        (let ((_%self254426%_ _%self254423%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254426%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254426%_
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
      (lambda (_%self254288%_)
        (let ((_%self254291%_ _%self254288%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254291%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self254291%_
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
      (lambda (_%self254153%_)
        (let ((_%self254156%_ _%self254153%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254156%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
