(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770326762)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224183
                   (let ((__obj224177
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
                       (gxc#optimizer-info:::init! __obj224177))
                     __obj224177)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224183)))))
    (define gxc#optimize!
      (lambda (_%ctx223785%_)
        (let ((__tmp224185
               (lambda ()
                 (let ((__tmp224187
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223785%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223785%_)
                          (let ((__tmp224189
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224188
                                 (##structure-ref
                                  _%ctx223785%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224189 __tmp224188 '#t))
                          (let ((_%code223789%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223785%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223785%_
                             _%code223789%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224186
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224187
                    gxc#current-compile-local-type
                    __tmp224186))))
              (__tmp224184 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224185
           gxc#current-compile-mutators
           __tmp224184))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223771%_)
        (letrec ((_%load-it!223773%_
                  (lambda (_%id223783%_)
                    (if (let ((__tmp224190
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224190 _%id223783%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223783%_)
                          (let ((__tmp224191
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224191 _%id223783%_ '#t)))))))
          (let* ((_%modid223775%_
                  (##structure-ref
                   _%ctx223771%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223777%_ (symbol->string _%modid223775%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223777%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223777%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223773%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223773%_
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
      (lambda (_%ctx223708%_)
        (letrec* ((_%deps223710%_
                   (let* ((_%imports223761%_
                           (##structure-ref
                            _%ctx223708%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223763%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223708%_))))
                     (if _%$e223763%_
                         ((lambda (_%g223765223767%_)
                            (cons _%g223765223767%_ _%imports223761%_))
                          _%$e223763%_)
                         _%imports223761%_))))
          (let _%lp223712%_ ((_%rest223714%_ _%deps223710%_))
            (let* ((_%rest223715223723%_ _%rest223714%_)
                   (_%else223717223731%_ (lambda () '#!void))
                   (_%K223719223749%_
                    (lambda (_%rest223734%_ _%hd223735%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223735%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224193
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224192
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223735%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224193 __tmp224192))
                                '#!void
                                (begin
                                  (let ((_%$e223738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223735%_))))
                                    (if _%$e223738%_
                                        ((lambda (_%pre223741%_)
                                           (_%lp223712%_
                                            (cons _%pre223741%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223735%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223738%_)
                                        (_%lp223712%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223735%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223735%_)))
                            (_%lp223712%_ _%rest223734%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223735%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224195
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224194
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223735%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224195 __tmp224194))
                                    '#!void
                                    (begin
                                      (_%lp223712%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223735%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223735%_)))
                                (_%lp223712%_ _%rest223734%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223735%_
                                     'gx#module-import::t))
                                  (_%lp223712%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223735%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223734%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223735%_
                                         'gx#module-export::t))
                                      (_%lp223712%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223735%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223734%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223735%_
                                             'gx#import-set::t))
                                          (_%lp223712%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223735%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223734%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223735%_))))))))))
              (if (pair? _%rest223715223723%_)
                  (let ((_%hd223720223752%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223715223723%_)))
                        (_%tl223721223754%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223715223723%_))))
                    (let* ((_%hd223757%_ _%hd223720223752%_)
                           (_%rest223759%_ _%tl223721223754%_))
                      (_%K223719223749%_ _%rest223759%_ _%hd223757%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223688%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223688%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223688%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223690%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223692%_
                    (##structure-ref
                     _%ctx223688%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223694%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223690%_ _%id223692%_)))
                   (_%$e223697%_ _%mod223694%_))
              (if _%$e223697%_
                  _%$e223697%_
                  (let* ((_%mod223700%_
                          (gxc#optimizer-import-ssxi _%ctx223688%_))
                         (_%val223705%_
                          (let ((_%$e223702%_ _%mod223700%_))
                            (if _%$e223702%_ _%$e223702%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223690%_ _%id223692%_ _%val223705%_))
                    _%val223705%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223686%_)
        (if (##structure-ref _%ctx223686%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223686%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223664%_)
        (letrec ((_%catch-e223666%_
                  (lambda (_%exn223684%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223684%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223684%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223664%_))))
                    '#f))
                 (_%import-e223667%_
                  (lambda ()
                    (let* ((_%str-id223670%_
                            (let ((__tmp224196
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223664%_))))
                              (declare (not safe))
                              (##string-append __tmp224196 '".ssxi")))
                           (_%artefact-path223677%_
                            (let ((_%odir223671223673%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223671223673%_
                                  (let ((_%odir223675%_ _%odir223671223673%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223670%_
                                        '".ss"))
                                     _%odir223675%_))
                                  '#f)))
                           (_%library-path223679%_
                            (let ((__tmp224197
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223670%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224197)))
                           (_%ssxi-path223681%_
                            (if (and _%artefact-path223677%_
                                     (file-exists? _%artefact-path223677%_))
                                _%artefact-path223677%_
                                _%library-path223679%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223681%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223681%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223666%_ _%import-e223667%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223649%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223649%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223649%_))
        (let* ((_%stx223651%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223649%_)))
               (_%stx223653%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223651%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223653%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223653%_))
          (let _%fixpoint223656%_ ((_%current223658%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223653%_))
            (let ((_%refined223660%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223658%_ _%refined223660%_)
                  '#!void
                  (_%fixpoint223656%_ _%refined223660%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223653%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223653%_))
          (let ((_%stx223662%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223653%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223662%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224199 (list gxc#::generate-runtime-empty::t))
            (__tmp224198 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224199
         '()
         __tmp224198
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223646%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223646%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224200
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
        (__make-atomic-promise __tmp224200)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223638%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223641%_
                (let ((__obj224179
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224179))
               (__tmp224201
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223641%_ _%stx223638%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224201
           gxc#current-compile-method
           _%self223641%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223598%_ _%stx223599%_)
        (let* ((_%g223601223611%_
                (lambda (_%g223602223608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223602223608%_))))
               (_%g223600223635%_
                (lambda (_%g223602223614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223602223614%_))
                      (let ((_%e223604223616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223602223614%_))))
                        (let ((_%hd223605223619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223604223616%_)))
                              (_%tl223606223621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223604223616%_))))
                          ((lambda (_%g223603223624%_)
                             (let ((__tmp224204
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223598%_
                                         _%stx223599%_))))
                                   (__tmp224202
                                    (let ((__tmp224203
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224203 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224204
                                gx#current-expander-phi
                                __tmp224202)))
                           _%tl223606223621%_)))
                      (_%g223601223611%_ _%g223602223614%_)))))
          (_%g223600223635%_ _%stx223599%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223537%_ _%stx223538%_)
        (let* ((_%g223540223554%_
                (lambda (_%g223541223551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223541223551%_))))
               (_%g223539223595%_
                (lambda (_%g223541223557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223541223557%_))
                      (let ((_%e223544223559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223541223557%_))))
                        (let ((_%hd223545223562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223544223559%_)))
                              (_%tl223546223564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223544223559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223546223564%_))
                              (let ((_%e223547223567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223546223564%_))))
                                (let ((_%hd223548223570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223547223567%_)))
                                      (_%tl223549223572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223547223567%_))))
                                  ((lambda (_%g223542223575%_
                                            _%g223543223576%_)
                                     (let* ((_%ctx223589%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223543223576%_)))
                                            (_%code223591%_
                                             (##structure-ref
                                              _%ctx223589%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224205
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223537%_
                                                  _%code223591%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224205
                                        gx#current-expander-context
                                        _%ctx223589%_)))
                                   _%tl223549223572%_
                                   _%hd223548223570%_)))
                              (_%g223540223554%_ _%g223541223557%_))))
                      (_%g223540223554%_ _%g223541223557%_)))))
          (_%g223539223595%_ _%stx223538%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223344%_ _%stx223345%_)
        (letrec ((_%generate-e223347%_
                  (lambda (_%id223522%_)
                    (let* ((_%sym223524%_
                            (if (let ((__tmp224206
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224206))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223522%_))
                                '#f))
                           (_%$e223526%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223524%_))))
                      (if _%$e223526%_
                          ((lambda (_%klass223529%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223524%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223524%_
                                                     (cons (let ((__method224180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223529%_ 'typedecl))))
                     (if __method224180
                         (let ()
                           (declare (not safe))
                           (__method224180 _%klass223529%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223529%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223524%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223524%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223526%_)
                          (let ((_%$e223531%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223524%_))))
                            (if _%$e223531%_
                                ((lambda (_%type223534%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223524%_
                                      '" "
                                      _%type223534%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223534%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223524%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223524%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223534%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223524%_
                                                   (cons (let ((__method224181
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223534%_ 'typedecl))))
                   (if __method224181
                       (let ()
                         (declare (not safe))
                         (__method224181 _%type223534%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223534%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223531%_)
                                '(begin))))))))
          (let* ((_%__stx223792223793%_ _%stx223345%_)
                 (_%g223350223388%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223792223793%_)))))
            (let ((_%__kont223794223795%_
                   (lambda (_%g223352223504%_)
                     (_%generate-e223347%_ _%g223352223504%_)))
                  (_%__kont223796223797%_
                   (lambda (_%g223365223439%_)
                     (let ((_%types223465%_
                            (map _%generate-e223347%_
                                 (let ((__tmp224207
                                        (lambda (_%g223457223460%_
                                                 _%g223458223462%_)
                                          (cons _%g223457223460%_
                                                _%g223458223462%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224207
                                    '()
                                    _%g223365223439%_)))))
                       (cons 'begin _%types223465%_)))))
              (let ((_%__match223847223848%_
                     (lambda (_%e223366223393%_
                              _%hd223367223396%_
                              _%tl223368223398%_
                              _%e223369223401%_
                              _%hd223370223404%_
                              _%tl223371223406%_
                              _%__splice223798223799%_
                              _%target223372223409%_
                              _%tl223374223411%_)
                       (letrec ((_%loop223375223414%_
                                 (lambda (_%hd223373223417%_
                                          _%id223379223419%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223373223417%_))
                                       (let ((_%e223376223421%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223373223417%_))))
                                         (let ((_%lp-tl223378223426%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223376223421%_)))
                                               (_%lp-hd223377223424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223376223421%_))))
                                           (_%loop223375223414%_
                                            _%lp-tl223378223426%_
                                            (cons _%lp-hd223377223424%_
                                                  _%id223379223419%_))))
                                       (let ((_%id223380223429%_
                                              (reverse _%id223379223419%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223371223406%_))
                                             (let ((_%e223381223431%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223371223406%_))))
                                               (let ((_%tl223383223436%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223381223431%_)))
                                                     (_%hd223382223434%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223381223431%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223383223436%_))
                                                     (_%__kont223796223797%_
                                                      _%id223380223429%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223350223388%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223350223388%_))))))))
                         (_%loop223375223414%_ _%target223372223409%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223792223793%_))
                    (let ((_%e223353223472%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223792223793%_))))
                      (let ((_%tl223355223477%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223353223472%_)))
                            (_%hd223354223475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223353223472%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223355223477%_))
                            (let ((_%e223356223480%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223355223477%_))))
                              (let ((_%tl223358223485%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223356223480%_)))
                                    (_%hd223357223483%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223356223480%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223357223483%_))
                                    (let ((_%e223359223488%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223357223483%_))))
                                      (let ((_%tl223361223493%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223359223488%_)))
                                            (_%hd223360223491%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223359223488%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223361223493%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223358223485%_))
                                                (let ((_%e223362223496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223358223485%_))))
                                                  (let ((_%tl223364223501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223362223496%_)))
                                                        (_%hd223363223499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223362223496%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223364223501%_))
                                                        (_%__kont223794223795%_
                                                         _%hd223360223491%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223357223483%_))
                                                            (let ((_%__splice223798223799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223357223483%_
                              '0))))
                      (let ((_%tl223374223411%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223798223799%_ '1)))
                            (_%target223372223409%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223798223799%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223374223411%_))
                            (_%__match223847223848%_
                             _%e223353223472%_
                             _%hd223354223475%_
                             _%tl223355223477%_
                             _%e223356223480%_
                             _%hd223357223483%_
                             _%tl223358223485%_
                             _%__splice223798223799%_
                             _%target223372223409%_
                             _%tl223374223411%_)
                            (let ()
                              (declare (not safe))
                              (_%g223350223388%_)))))
                    (let () (declare (not safe)) (_%g223350223388%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223357223483%_))
                                                    (let ((_%__splice223798223799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223357223483%_
                                                              '0))))
                                                      (let ((_%tl223374223411%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223798223799%_ '1)))
                    (_%target223372223409%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223798223799%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223374223411%_))
                    (_%__match223847223848%_
                     _%e223353223472%_
                     _%hd223354223475%_
                     _%tl223355223477%_
                     _%e223356223480%_
                     _%hd223357223483%_
                     _%tl223358223485%_
                     _%__splice223798223799%_
                     _%target223372223409%_
                     _%tl223374223411%_)
                    (let () (declare (not safe)) (_%g223350223388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223350223388%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223357223483%_))
                                                (let ((_%__splice223798223799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223357223483%_
                                                          '0))))
                                                  (let ((_%tl223374223411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223798223799%_
                                                            '1)))
                                                        (_%target223372223409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223798223799%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223374223411%_))
                                                        (_%__match223847223848%_
                                                         _%e223353223472%_
                                                         _%hd223354223475%_
                                                         _%tl223355223477%_
                                                         _%e223356223480%_
                                                         _%hd223357223483%_
                                                         _%tl223358223485%_
                                                         _%__splice223798223799%_
                                                         _%target223372223409%_
                                                         _%tl223374223411%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223350223388%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223350223388%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223357223483%_))
                                        (let ((_%__splice223798223799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223357223483%_
                                                  '0))))
                                          (let ((_%tl223374223411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223798223799%_
                                                    '1)))
                                                (_%target223372223409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223798223799%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223374223411%_))
                                                (_%__match223847223848%_
                                                 _%e223353223472%_
                                                 _%hd223354223475%_
                                                 _%tl223355223477%_
                                                 _%e223356223480%_
                                                 _%hd223357223483%_
                                                 _%tl223358223485%_
                                                 _%__splice223798223799%_
                                                 _%target223372223409%_
                                                 _%tl223374223411%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223350223388%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223350223388%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223350223388%_)))))
                    (let () (declare (not safe)) (_%g223350223388%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self222897%_ _%stx222898%_)
        (let* ((_%__stx223850223851%_ _%stx222898%_)
               (_%g222902223004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223850223851%_)))))
          (let ((_%__kont223852223853%_
                 (lambda (_%g222904223294%_
                          _%g222905223295%_
                          _%g222906223296%_
                          _%g222907223297%_
                          _%g222908223298%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222907223297%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g222906223296%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g222905223295%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g222904223294%_))
                                                 '())))))))
                (_%__kont223854223855%_
                 (lambda (_%g222957223120%_
                          _%g222958223121%_
                          _%g222959223122%_
                          _%g222960223123%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222959223122%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g222958223121%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g222957223120%_))
                                           (cons '#f '())))))))
                (_%__kont223856223857%_ (lambda () '(begin))))
            (let ((_%__match223985223986%_
                   (lambda (_%e222909223166%_
                            _%hd222910223169%_
                            _%tl222911223171%_
                            _%e222912223174%_
                            _%hd222913223177%_
                            _%tl222914223179%_
                            _%e222915223182%_
                            _%hd222916223185%_
                            _%tl222917223187%_
                            _%e222918223190%_
                            _%hd222919223193%_
                            _%tl222920223195%_
                            _%e222921223198%_
                            _%hd222922223201%_
                            _%tl222923223203%_
                            _%e222924223206%_
                            _%hd222925223209%_
                            _%tl222926223211%_
                            _%e222927223214%_
                            _%hd222928223217%_
                            _%tl222929223219%_
                            _%e222930223222%_
                            _%hd222931223225%_
                            _%tl222932223227%_
                            _%e222933223230%_
                            _%hd222934223233%_
                            _%tl222935223235%_
                            _%e222936223238%_
                            _%hd222937223241%_
                            _%tl222938223243%_
                            _%e222939223246%_
                            _%hd222940223249%_
                            _%tl222941223251%_
                            _%e222942223254%_
                            _%hd222943223257%_
                            _%tl222944223259%_
                            _%e222945223262%_
                            _%hd222946223265%_
                            _%tl222947223267%_
                            _%e222948223270%_
                            _%hd222949223273%_
                            _%tl222950223275%_
                            _%e222951223278%_
                            _%hd222952223281%_
                            _%tl222953223283%_
                            _%e222954223286%_
                            _%hd222955223289%_
                            _%tl222956223291%_)
                     (let ((_%g222904223294%_ _%hd222955223289%_)
                           (_%g222905223295%_ _%hd222946223265%_)
                           (_%g222906223296%_ _%hd222937223241%_)
                           (_%g222907223297%_ _%hd222928223217%_)
                           (_%g222908223298%_ _%hd222919223193%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g222908223298%_
                              'bind-method!))
                           (_%__kont223852223853%_
                            _%g222904223294%_
                            _%g222905223295%_
                            _%g222906223296%_
                            _%g222907223297%_
                            _%g222908223298%_)
                           (_%__kont223856223857%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223850223851%_))
                  (let ((_%e222909223166%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223850223851%_))))
                    (let ((_%tl222911223171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222909223166%_)))
                          (_%hd222910223169%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222909223166%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl222911223171%_))
                          (let ((_%e222912223174%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl222911223171%_))))
                            (let ((_%tl222914223179%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e222912223174%_)))
                                  (_%hd222913223177%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e222912223174%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd222913223177%_))
                                  (let ((_%e222915223182%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd222913223177%_))))
                                    (let ((_%tl222917223187%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e222915223182%_)))
                                          (_%hd222916223185%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e222915223182%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd222916223185%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd222916223185%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl222917223187%_))
                                                  (let ((_%e222918223190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl222917223187%_))))
                                                    (let ((_%tl222920223195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e222918223190%_)))
                                                          (_%hd222919223193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e222918223190%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl222920223195%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl222914223179%_))
                      (let ((_%e222921223198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl222914223179%_))))
                        (let ((_%tl222923223203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222921223198%_)))
                              (_%hd222922223201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222921223198%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd222922223201%_))
                              (let ((_%e222924223206%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd222922223201%_))))
                                (let ((_%tl222926223211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e222924223206%_)))
                                      (_%hd222925223209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e222924223206%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd222925223209%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd222925223209%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl222926223211%_))
                                              (let ((_%e222927223214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl222926223211%_))))
                                                (let ((_%tl222929223219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e222927223214%_)))
                                                      (_%hd222928223217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e222927223214%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl222929223219%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl222923223203%_))
                                                          (let ((_%e222930223222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl222923223203%_))))
                    (let ((_%tl222932223227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222930223222%_)))
                          (_%hd222931223225%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222930223222%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd222931223225%_))
                          (let ((_%e222933223230%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd222931223225%_))))
                            (let ((_%tl222935223235%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e222933223230%_)))
                                  (_%hd222934223233%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e222933223230%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd222934223233%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd222934223233%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl222935223235%_))
                                          (let ((_%e222936223238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl222935223235%_))))
                                            (let ((_%tl222938223243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e222936223238%_)))
                                                  (_%hd222937223241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e222936223238%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl222938223243%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl222932223227%_))
                                                      (let ((_%e222939223246%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl222932223227%_))))
                (let ((_%tl222941223251%_
                       (let () (declare (not safe)) (##cdr _%e222939223246%_)))
                      (_%hd222940223249%_
                       (let ()
                         (declare (not safe))
                         (##car _%e222939223246%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd222940223249%_))
                      (let ((_%e222942223254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd222940223249%_))))
                        (let ((_%tl222944223259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222942223254%_)))
                              (_%hd222943223257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222942223254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd222943223257%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd222943223257%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl222944223259%_))
                                      (let ((_%e222945223262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl222944223259%_))))
                                        (let ((_%tl222947223267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e222945223262%_)))
                                              (_%hd222946223265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e222945223262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl222947223267%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl222941223251%_))
                                                  (let ((_%e222948223270%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl222941223251%_))))
                                                    (let ((_%tl222950223275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e222948223270%_)))
                                                          (_%hd222949223273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e222948223270%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd222949223273%_))
                                                          (let ((_%e222951223278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd222949223273%_))))
                    (let ((_%tl222953223283%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222951223278%_)))
                          (_%hd222952223281%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222951223278%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd222952223281%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd222952223281%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl222953223283%_))
                                  (let ((_%e222954223286%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl222953223283%_))))
                                    (let ((_%tl222956223291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e222954223286%_)))
                                          (_%hd222955223289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e222954223286%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl222956223291%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl222950223275%_))
                                              (_%__match223985223986%_
                                               _%e222909223166%_
                                               _%hd222910223169%_
                                               _%tl222911223171%_
                                               _%e222912223174%_
                                               _%hd222913223177%_
                                               _%tl222914223179%_
                                               _%e222915223182%_
                                               _%hd222916223185%_
                                               _%tl222917223187%_
                                               _%e222918223190%_
                                               _%hd222919223193%_
                                               _%tl222920223195%_
                                               _%e222921223198%_
                                               _%hd222922223201%_
                                               _%tl222923223203%_
                                               _%e222924223206%_
                                               _%hd222925223209%_
                                               _%tl222926223211%_
                                               _%e222927223214%_
                                               _%hd222928223217%_
                                               _%tl222929223219%_
                                               _%e222930223222%_
                                               _%hd222931223225%_
                                               _%tl222932223227%_
                                               _%e222933223230%_
                                               _%hd222934223233%_
                                               _%tl222935223235%_
                                               _%e222936223238%_
                                               _%hd222937223241%_
                                               _%tl222938223243%_
                                               _%e222939223246%_
                                               _%hd222940223249%_
                                               _%tl222941223251%_
                                               _%e222942223254%_
                                               _%hd222943223257%_
                                               _%tl222944223259%_
                                               _%e222945223262%_
                                               _%hd222946223265%_
                                               _%tl222947223267%_
                                               _%e222948223270%_
                                               _%hd222949223273%_
                                               _%tl222950223275%_
                                               _%e222951223278%_
                                               _%hd222952223281%_
                                               _%tl222953223283%_
                                               _%e222954223286%_
                                               _%hd222955223289%_
                                               _%tl222956223291%_)
                                              (_%__kont223856223857%_))
                                          (_%__kont223856223857%_))))
                                  (_%__kont223856223857%_))
                              (_%__kont223856223857%_))
                          (_%__kont223856223857%_))))
                  (_%__kont223856223857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl222941223251%_))
                                                      (if (let ((__tmp224208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224208 'bind-method!))
                  (let ((_%g222957223120%_ _%hd222946223265%_)
                        (_%g222958223121%_ _%hd222937223241%_)
                        (_%g222959223122%_ _%hd222928223217%_)
                        (_%g222960223123%_ _%hd222919223193%_))
                    (_%__kont223854223855%_
                     _%g222957223120%_
                     _%g222958223121%_
                     _%g222959223122%_
                     _%g222960223123%_))
                  (_%__kont223856223857%_))
              (_%__kont223856223857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223856223857%_))))
                                      (_%__kont223856223857%_))
                                  (_%__kont223856223857%_))
                              (_%__kont223856223857%_))))
                      (_%__kont223856223857%_))))
              (_%__kont223856223857%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223856223857%_))))
                                          (_%__kont223856223857%_))
                                      (_%__kont223856223857%_))
                                  (_%__kont223856223857%_))))
                          (_%__kont223856223857%_))))
                  (_%__kont223856223857%_))
              (_%__kont223856223857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223856223857%_))
                                          (_%__kont223856223857%_))
                                      (_%__kont223856223857%_))))
                              (_%__kont223856223857%_))))
                      (_%__kont223856223857%_))
                  (_%__kont223856223857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223856223857%_))
                                              (_%__kont223856223857%_))
                                          (_%__kont223856223857%_))))
                                  (_%__kont223856223857%_))))
                          (_%__kont223856223857%_))))
                  (_%__kont223856223857%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222721%_ _%stx222722%_)
        (let* ((_%__stx224094224095%_ _%stx222722%_)
               (_%g222725222765%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224094224095%_)))))
          (let ((_%__kont224096224097%_
                 (lambda (_%g222727222871%_ _%g222728222872%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222728222872%_))
                               (cons _%g222727222871%_ '())))))
                (_%__kont224098224099%_
                 (lambda (_%g222750222794%_ _%g222751222795%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224094224095%_))
                (let ((_%e222729222815%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224094224095%_))))
                  (let ((_%tl222731222820%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222729222815%_)))
                        (_%hd222730222818%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222729222815%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222731222820%_))
                        (let ((_%e222732222823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222731222820%_))))
                          (let ((_%tl222734222828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222732222823%_)))
                                (_%hd222733222826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222732222823%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222733222826%_))
                                (let ((_%e222735222831%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222733222826%_))))
                                  (let ((_%tl222737222836%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222735222831%_)))
                                        (_%hd222736222834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222735222831%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222736222834%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222736222834%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222737222836%_))
                                                (let ((_%e222738222839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222737222836%_))))
                                                  (let ((_%tl222740222844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222738222839%_)))
                                                        (_%hd222739222842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222738222839%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222740222844%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222734222828%_))
                                                            (let ((_%e222741222847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222734222828%_))))
                      (let ((_%tl222743222852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222741222847%_)))
                            (_%hd222742222850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222741222847%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222742222850%_))
                            (let ((_%e222744222855%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222742222850%_))))
                              (let ((_%tl222746222860%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222744222855%_)))
                                    (_%hd222745222858%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222744222855%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222745222858%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222745222858%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222746222860%_))
                                            (let ((_%e222747222863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222746222860%_))))
                                              (let ((_%tl222749222868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222747222863%_)))
                                                    (_%hd222748222866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222747222863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222749222868%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222743222852%_))
                                                        (_%__kont224096224097%_
                                                         _%hd222748222866%_
                                                         _%hd222739222842%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222725222765%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222743222852%_))
                                                        (_%__kont224098224099%_
                                                         _%hd222742222850%_
                                                         _%hd222733222826%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222725222765%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222743222852%_))
                                                (_%__kont224098224099%_
                                                 _%hd222742222850%_
                                                 _%hd222733222826%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222725222765%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222743222852%_))
                                            (_%__kont224098224099%_
                                             _%hd222742222850%_
                                             _%hd222733222826%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222725222765%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222743222852%_))
                                        (_%__kont224098224099%_
                                         _%hd222742222850%_
                                         _%hd222733222826%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222725222765%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222743222852%_))
                                (_%__kont224098224099%_
                                 _%hd222742222850%_
                                 _%hd222733222826%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222725222765%_))))))
                    (let () (declare (not safe)) (_%g222725222765%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222734222828%_))
                    (let ((_%e222758222786%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222734222828%_))))
                      (let ((_%tl222760222791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222758222786%_)))
                            (_%hd222759222789%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222758222786%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222760222791%_))
                            (_%__kont224098224099%_
                             _%hd222759222789%_
                             _%hd222733222826%_)
                            (let ()
                              (declare (not safe))
                              (_%g222725222765%_)))))
                    (let () (declare (not safe)) (_%g222725222765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222734222828%_))
                                                    (let ((_%e222758222786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222734222828%_))))
                                                      (let ((_%tl222760222791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222758222786%_)))
                    (_%hd222759222789%_
                     (let () (declare (not safe)) (##car _%e222758222786%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222760222791%_))
                    (_%__kont224098224099%_
                     _%hd222759222789%_
                     _%hd222733222826%_)
                    (let () (declare (not safe)) (_%g222725222765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222725222765%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222734222828%_))
                                                (let ((_%e222758222786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222734222828%_))))
                                                  (let ((_%tl222760222791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222758222786%_)))
                                                        (_%hd222759222789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222758222786%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222760222791%_))
                                                        (_%__kont224098224099%_
                                                         _%hd222759222789%_
                                                         _%hd222733222826%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222725222765%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222725222765%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222734222828%_))
                                            (let ((_%e222758222786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222734222828%_))))
                                              (let ((_%tl222760222791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222758222786%_)))
                                                    (_%hd222759222789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222758222786%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222760222791%_))
                                                    (_%__kont224098224099%_
                                                     _%hd222759222789%_
                                                     _%hd222733222826%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222725222765%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222725222765%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222734222828%_))
                                    (let ((_%e222758222786%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222734222828%_))))
                                      (let ((_%tl222760222791%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222758222786%_)))
                                            (_%hd222759222789%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222758222786%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222760222791%_))
                                            (_%__kont224098224099%_
                                             _%hd222759222789%_
                                             _%hd222733222826%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222725222765%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222725222765%_))))))
                        (let () (declare (not safe)) (_%g222725222765%_)))))
                (let () (declare (not safe)) (_%g222725222765%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222708%_)
        (let ((_%self222711%_ _%self222708%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222711%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222482%_)
        (let* ((_%self222485%_ _%self222482%_)
               (_%self222494222510%_ _%self222485%_)
               (_%E222496222513%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222494222510%_
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
               (_%K222497222528%_
                (lambda (_%methods222516%_
                         _%metaclass222517%_
                         _%system?222518%_
                         _%final?222519%_
                         _%struct?222520%_
                         _%constructor222521%_
                         _%fields222522%_
                         _%slots222523%_
                         _%precendence-list222524%_
                         _%super222525%_
                         _%id222526%_)
                  (cons '@class
                        (cons _%id222526%_
                              (cons _%super222525%_
                                    (cons _%precendence-list222524%_
                                          (cons _%slots222523%_
                                                (cons _%fields222522%_
                                                      (cons _%constructor222521%_
                                                            (cons _%struct?222520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222519%_
                                (cons _%system?222518%_
                                      (cons _%metaclass222517%_
                                            (cons (if _%methods222516%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222516%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222498222531%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '1 '#f '#f)))
               (_%id222534%_ _%e222498222531%_)
               (_%e222499222536%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '2 '#f '#f)))
               (_%super222539%_ _%e222499222536%_)
               (_%e222500222541%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '3 '#f '#f)))
               (_%precendence-list222544%_ _%e222500222541%_)
               (_%e222501222546%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '4 '#f '#f)))
               (_%slots222549%_ _%e222501222546%_)
               (_%e222502222551%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '5 '#f '#f)))
               (_%fields222554%_ _%e222502222551%_)
               (_%e222503222556%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '6 '#f '#f)))
               (_%constructor222559%_ _%e222503222556%_)
               (_%e222504222561%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '7 '#f '#f)))
               (_%struct?222564%_ _%e222504222561%_)
               (_%e222505222566%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '8 '#f '#f)))
               (_%final?222569%_ _%e222505222566%_)
               (_%e222506222571%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222494222510%_ '9 '#f '#f)))
               (_%system?222574%_ _%e222506222571%_)
               (_%e222507222576%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222494222510%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222579%_ _%e222507222576%_)
               (_%e222508222581%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222494222510%_
                   '11
                   '#f
                   '#f)))
               (_%methods222584%_ _%e222508222581%_))
          (_%K222497222528%_
           _%methods222584%_
           _%metaclass222579%_
           _%system?222574%_
           _%final?222569%_
           _%struct?222564%_
           _%constructor222559%_
           _%fields222554%_
           _%slots222549%_
           _%precendence-list222544%_
           _%super222539%_
           _%id222534%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222347%_)
        (let ((_%self222350%_ _%self222347%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222350%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222212%_)
        (let ((_%self222215%_ _%self222212%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222215%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222077%_)
        (let ((_%self222080%_ _%self222077%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222080%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222080%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222080%_
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
      (lambda (_%self221942%_)
        (let ((_%self221945%_ _%self221942%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221945%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221945%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self221945%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221807%_)
        (let ((_%self221810%_ _%self221807%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221810%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221810%_
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
      (lambda (_%self221621%_)
        (let* ((_%self221624%_ _%self221621%_)
               (_%self221633221642%_ _%self221624%_)
               (_%E221635221645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221633221642%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221636221664%_
                (lambda (_%dispatch221648%_
                         _%arity221649%_
                         _%signature221650%_)
                  (if _%signature221650%_
                      (let ((_%signature221652%_ _%signature221650%_))
                        (cons '@lambda
                              (cons _%arity221649%_
                                    (cons _%dispatch221648%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221652%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221652%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221652%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221652%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221652%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221649%_
                                  (cons _%dispatch221648%_ '()))))))
               (_%e221637221667%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221633221642%_ '1 '#f '#f)))
               (_%e221638221670%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221633221642%_ '2 '#f '#f)))
               (_%signature221673%_ _%e221638221670%_)
               (_%e221639221675%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221633221642%_ '3 '#f '#f)))
               (_%arity221678%_ _%e221639221675%_)
               (_%e221640221680%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221633221642%_ '4 '#f '#f)))
               (_%dispatch221683%_ _%e221640221680%_))
          (_%K221636221664%_
           _%dispatch221683%_
           _%arity221678%_
           _%signature221673%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221481%_)
        (let ((_%self221484%_ _%self221481%_))
          (letrec ((_%clause-e221495%_
                    (lambda (_%clause221497%_)
                      (cdr (let ((__method224182
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221497%_
                                     'typedecl))))
                             (if __method224182
                                 (let ()
                                   (declare (not safe))
                                   (__method224182 _%clause221497%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221497%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221495%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221484%_
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
      (lambda (_%self221346%_)
        (let ((_%self221349%_ _%self221346%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221349%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221349%_
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
      (lambda (_%self221211%_)
        (let ((_%self221214%_ _%self221211%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221214%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221214%_
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
      (lambda (_%self221076%_)
        (let ((_%self221079%_ _%self221076%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221079%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
