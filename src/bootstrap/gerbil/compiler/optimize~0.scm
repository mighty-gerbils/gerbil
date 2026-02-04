(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770248985)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224139
                   (let ((__obj224133
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
                       (gxc#optimizer-info:::init! __obj224133))
                     __obj224133)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224139)))))
    (define gxc#optimize!
      (lambda (_%ctx223741%_)
        (let ((__tmp224141
               (lambda ()
                 (let ((__tmp224143
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223741%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223741%_)
                          (let ((__tmp224145
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224144
                                 (##structure-ref
                                  _%ctx223741%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224145 __tmp224144 '#t))
                          (let ((_%code223745%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223741%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223741%_
                             _%code223745%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224142
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224143
                    gxc#current-compile-local-type
                    __tmp224142))))
              (__tmp224140 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224141
           gxc#current-compile-mutators
           __tmp224140))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223727%_)
        (letrec ((_%load-it!223729%_
                  (lambda (_%id223739%_)
                    (if (let ((__tmp224146
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224146 _%id223739%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223739%_)
                          (let ((__tmp224147
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224147 _%id223739%_ '#t)))))))
          (let* ((_%modid223731%_
                  (##structure-ref
                   _%ctx223727%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223733%_ (symbol->string _%modid223731%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223733%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223733%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223729%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223729%_
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
      (lambda (_%ctx223664%_)
        (letrec* ((_%deps223666%_
                   (let* ((_%imports223717%_
                           (##structure-ref
                            _%ctx223664%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223719%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223664%_))))
                     (if _%$e223719%_
                         ((lambda (_%g223721223723%_)
                            (cons _%g223721223723%_ _%imports223717%_))
                          _%$e223719%_)
                         _%imports223717%_))))
          (let _%lp223668%_ ((_%rest223670%_ _%deps223666%_))
            (let* ((_%rest223671223679%_ _%rest223670%_)
                   (_%else223673223687%_ (lambda () '#!void))
                   (_%K223675223705%_
                    (lambda (_%rest223690%_ _%hd223691%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223691%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224149
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224148
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223691%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224149 __tmp224148))
                                '#!void
                                (begin
                                  (let ((_%$e223694%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223691%_))))
                                    (if _%$e223694%_
                                        ((lambda (_%pre223697%_)
                                           (_%lp223668%_
                                            (cons _%pre223697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223691%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223694%_)
                                        (_%lp223668%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223691%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223691%_)))
                            (_%lp223668%_ _%rest223690%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223691%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224151
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224150
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223691%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224151 __tmp224150))
                                    '#!void
                                    (begin
                                      (_%lp223668%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223691%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223691%_)))
                                (_%lp223668%_ _%rest223690%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223691%_
                                     'gx#module-import::t))
                                  (_%lp223668%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223691%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223690%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223691%_
                                         'gx#module-export::t))
                                      (_%lp223668%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223691%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223690%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223691%_
                                             'gx#import-set::t))
                                          (_%lp223668%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223691%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223690%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223691%_))))))))))
              (if (pair? _%rest223671223679%_)
                  (let ((_%hd223676223708%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223671223679%_)))
                        (_%tl223677223710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223671223679%_))))
                    (let* ((_%hd223713%_ _%hd223676223708%_)
                           (_%rest223715%_ _%tl223677223710%_))
                      (_%K223675223705%_ _%rest223715%_ _%hd223713%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223644%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223644%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223644%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223646%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223648%_
                    (##structure-ref
                     _%ctx223644%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223650%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223646%_ _%id223648%_)))
                   (_%$e223653%_ _%mod223650%_))
              (if _%$e223653%_
                  _%$e223653%_
                  (let* ((_%mod223656%_
                          (gxc#optimizer-import-ssxi _%ctx223644%_))
                         (_%val223661%_
                          (let ((_%$e223658%_ _%mod223656%_))
                            (if _%$e223658%_ _%$e223658%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223646%_ _%id223648%_ _%val223661%_))
                    _%val223661%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223642%_)
        (if (##structure-ref _%ctx223642%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223642%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223620%_)
        (letrec ((_%catch-e223622%_
                  (lambda (_%exn223640%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223640%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223640%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223620%_))))
                    '#f))
                 (_%import-e223623%_
                  (lambda ()
                    (let* ((_%str-id223626%_
                            (let ((__tmp224152
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223620%_))))
                              (declare (not safe))
                              (##string-append __tmp224152 '".ssxi")))
                           (_%artefact-path223633%_
                            (let ((_%odir223627223629%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223627223629%_
                                  (let ((_%odir223631%_ _%odir223627223629%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223626%_
                                        '".ss"))
                                     _%odir223631%_))
                                  '#f)))
                           (_%library-path223635%_
                            (let ((__tmp224153
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223626%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224153)))
                           (_%ssxi-path223637%_
                            (if (and _%artefact-path223633%_
                                     (file-exists? _%artefact-path223633%_))
                                _%artefact-path223633%_
                                _%library-path223635%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223637%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223637%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223622%_ _%import-e223623%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223605%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223605%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223605%_))
        (let* ((_%stx223607%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223605%_)))
               (_%stx223609%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223607%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223609%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223609%_))
          (let _%fixpoint223612%_ ((_%current223614%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223609%_))
            (let ((_%refined223616%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223614%_ _%refined223616%_)
                  '#!void
                  (_%fixpoint223612%_ _%refined223616%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223609%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223609%_))
          (let ((_%stx223618%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223609%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223618%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224155 (list gxc#::generate-runtime-empty::t))
            (__tmp224154 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224155
         '()
         __tmp224154
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223602%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223602%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224156
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
        (__make-atomic-promise __tmp224156)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223594%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223597%_
                (let ((__obj224135
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224135))
               (__tmp224157
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223597%_ _%stx223594%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224157
           gxc#current-compile-method
           _%self223597%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223554%_ _%stx223555%_)
        (let* ((_%g223557223567%_
                (lambda (_%g223558223564%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223558223564%_))))
               (_%g223556223591%_
                (lambda (_%g223558223570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223558223570%_))
                      (let ((_%e223560223572%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223558223570%_))))
                        (let ((_%hd223561223575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223560223572%_)))
                              (_%tl223562223577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223560223572%_))))
                          ((lambda (_%g223559223580%_)
                             (let ((__tmp224160
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223554%_
                                         _%stx223555%_))))
                                   (__tmp224158
                                    (let ((__tmp224159
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224159 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224160
                                gx#current-expander-phi
                                __tmp224158)))
                           _%tl223562223577%_)))
                      (_%g223557223567%_ _%g223558223570%_)))))
          (_%g223556223591%_ _%stx223555%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223493%_ _%stx223494%_)
        (let* ((_%g223496223510%_
                (lambda (_%g223497223507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223497223507%_))))
               (_%g223495223551%_
                (lambda (_%g223497223513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223497223513%_))
                      (let ((_%e223500223515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223497223513%_))))
                        (let ((_%hd223501223518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223500223515%_)))
                              (_%tl223502223520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223500223515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223502223520%_))
                              (let ((_%e223503223523%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223502223520%_))))
                                (let ((_%hd223504223526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223503223523%_)))
                                      (_%tl223505223528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223503223523%_))))
                                  ((lambda (_%g223498223531%_
                                            _%g223499223532%_)
                                     (let* ((_%ctx223545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223499223532%_)))
                                            (_%code223547%_
                                             (##structure-ref
                                              _%ctx223545%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224161
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223493%_
                                                  _%code223547%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224161
                                        gx#current-expander-context
                                        _%ctx223545%_)))
                                   _%tl223505223528%_
                                   _%hd223504223526%_)))
                              (_%g223496223510%_ _%g223497223513%_))))
                      (_%g223496223510%_ _%g223497223513%_)))))
          (_%g223495223551%_ _%stx223494%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223300%_ _%stx223301%_)
        (letrec ((_%generate-e223303%_
                  (lambda (_%id223478%_)
                    (let* ((_%sym223480%_
                            (if (let ((__tmp224162
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224162))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223478%_))
                                '#f))
                           (_%$e223482%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223480%_))))
                      (if _%$e223482%_
                          ((lambda (_%klass223485%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223480%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223480%_
                                                     (cons (let ((__method224136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223485%_ 'typedecl))))
                     (if __method224136
                         (let ()
                           (declare (not safe))
                           (__method224136 _%klass223485%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223485%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223480%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223480%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223482%_)
                          (let ((_%$e223487%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223480%_))))
                            (if _%$e223487%_
                                ((lambda (_%type223490%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223480%_
                                      '" "
                                      _%type223490%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223490%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223480%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223480%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223490%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223480%_
                                                   (cons (let ((__method224137
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223490%_ 'typedecl))))
                   (if __method224137
                       (let ()
                         (declare (not safe))
                         (__method224137 _%type223490%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223490%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223487%_)
                                '(begin))))))))
          (let* ((_%__stx223748223749%_ _%stx223301%_)
                 (_%g223306223344%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223748223749%_)))))
            (let ((_%__kont223750223751%_
                   (lambda (_%g223308223460%_)
                     (_%generate-e223303%_ _%g223308223460%_)))
                  (_%__kont223752223753%_
                   (lambda (_%g223321223395%_)
                     (let ((_%types223421%_
                            (map _%generate-e223303%_
                                 (let ((__tmp224163
                                        (lambda (_%g223413223416%_
                                                 _%g223414223418%_)
                                          (cons _%g223413223416%_
                                                _%g223414223418%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224163
                                    '()
                                    _%g223321223395%_)))))
                       (cons 'begin _%types223421%_)))))
              (let ((_%__match223803223804%_
                     (lambda (_%e223322223349%_
                              _%hd223323223352%_
                              _%tl223324223354%_
                              _%e223325223357%_
                              _%hd223326223360%_
                              _%tl223327223362%_
                              _%__splice223754223755%_
                              _%target223328223365%_
                              _%tl223330223367%_)
                       (letrec ((_%loop223331223370%_
                                 (lambda (_%hd223329223373%_
                                          _%id223335223375%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223329223373%_))
                                       (let ((_%e223332223377%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223329223373%_))))
                                         (let ((_%lp-tl223334223382%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223332223377%_)))
                                               (_%lp-hd223333223380%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223332223377%_))))
                                           (_%loop223331223370%_
                                            _%lp-tl223334223382%_
                                            (cons _%lp-hd223333223380%_
                                                  _%id223335223375%_))))
                                       (let ((_%id223336223385%_
                                              (reverse _%id223335223375%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223327223362%_))
                                             (let ((_%e223337223387%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223327223362%_))))
                                               (let ((_%tl223339223392%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223337223387%_)))
                                                     (_%hd223338223390%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223337223387%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223339223392%_))
                                                     (_%__kont223752223753%_
                                                      _%id223336223385%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223306223344%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223306223344%_))))))))
                         (_%loop223331223370%_ _%target223328223365%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223748223749%_))
                    (let ((_%e223309223428%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223748223749%_))))
                      (let ((_%tl223311223433%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223309223428%_)))
                            (_%hd223310223431%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223309223428%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223311223433%_))
                            (let ((_%e223312223436%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223311223433%_))))
                              (let ((_%tl223314223441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223312223436%_)))
                                    (_%hd223313223439%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223312223436%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223313223439%_))
                                    (let ((_%e223315223444%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223313223439%_))))
                                      (let ((_%tl223317223449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223315223444%_)))
                                            (_%hd223316223447%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223315223444%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223317223449%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223314223441%_))
                                                (let ((_%e223318223452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223314223441%_))))
                                                  (let ((_%tl223320223457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223318223452%_)))
                                                        (_%hd223319223455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223318223452%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223320223457%_))
                                                        (_%__kont223750223751%_
                                                         _%hd223316223447%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223313223439%_))
                                                            (let ((_%__splice223754223755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223313223439%_
                              '0))))
                      (let ((_%tl223330223367%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223754223755%_ '1)))
                            (_%target223328223365%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223754223755%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223330223367%_))
                            (_%__match223803223804%_
                             _%e223309223428%_
                             _%hd223310223431%_
                             _%tl223311223433%_
                             _%e223312223436%_
                             _%hd223313223439%_
                             _%tl223314223441%_
                             _%__splice223754223755%_
                             _%target223328223365%_
                             _%tl223330223367%_)
                            (let ()
                              (declare (not safe))
                              (_%g223306223344%_)))))
                    (let () (declare (not safe)) (_%g223306223344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223313223439%_))
                                                    (let ((_%__splice223754223755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223313223439%_
                                                              '0))))
                                                      (let ((_%tl223330223367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223754223755%_ '1)))
                    (_%target223328223365%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223754223755%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223330223367%_))
                    (_%__match223803223804%_
                     _%e223309223428%_
                     _%hd223310223431%_
                     _%tl223311223433%_
                     _%e223312223436%_
                     _%hd223313223439%_
                     _%tl223314223441%_
                     _%__splice223754223755%_
                     _%target223328223365%_
                     _%tl223330223367%_)
                    (let () (declare (not safe)) (_%g223306223344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223306223344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223313223439%_))
                                                (let ((_%__splice223754223755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223313223439%_
                                                          '0))))
                                                  (let ((_%tl223330223367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223754223755%_
                                                            '1)))
                                                        (_%target223328223365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223754223755%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223330223367%_))
                                                        (_%__match223803223804%_
                                                         _%e223309223428%_
                                                         _%hd223310223431%_
                                                         _%tl223311223433%_
                                                         _%e223312223436%_
                                                         _%hd223313223439%_
                                                         _%tl223314223441%_
                                                         _%__splice223754223755%_
                                                         _%target223328223365%_
                                                         _%tl223330223367%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223306223344%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223306223344%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223313223439%_))
                                        (let ((_%__splice223754223755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223313223439%_
                                                  '0))))
                                          (let ((_%tl223330223367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223754223755%_
                                                    '1)))
                                                (_%target223328223365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223754223755%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223330223367%_))
                                                (_%__match223803223804%_
                                                 _%e223309223428%_
                                                 _%hd223310223431%_
                                                 _%tl223311223433%_
                                                 _%e223312223436%_
                                                 _%hd223313223439%_
                                                 _%tl223314223441%_
                                                 _%__splice223754223755%_
                                                 _%target223328223365%_
                                                 _%tl223330223367%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223306223344%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223306223344%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223306223344%_)))))
                    (let () (declare (not safe)) (_%g223306223344%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self222853%_ _%stx222854%_)
        (let* ((_%__stx223806223807%_ _%stx222854%_)
               (_%g222858222960%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223806223807%_)))))
          (let ((_%__kont223808223809%_
                 (lambda (_%g222860223250%_
                          _%g222861223251%_
                          _%g222862223252%_
                          _%g222863223253%_
                          _%g222864223254%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222863223253%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g222862223252%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g222861223251%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g222860223250%_))
                                                 '())))))))
                (_%__kont223810223811%_
                 (lambda (_%g222913223076%_
                          _%g222914223077%_
                          _%g222915223078%_
                          _%g222916223079%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222915223078%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g222914223077%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g222913223076%_))
                                           (cons '#f '())))))))
                (_%__kont223812223813%_ (lambda () '(begin))))
            (let ((_%__match223941223942%_
                   (lambda (_%e222865223122%_
                            _%hd222866223125%_
                            _%tl222867223127%_
                            _%e222868223130%_
                            _%hd222869223133%_
                            _%tl222870223135%_
                            _%e222871223138%_
                            _%hd222872223141%_
                            _%tl222873223143%_
                            _%e222874223146%_
                            _%hd222875223149%_
                            _%tl222876223151%_
                            _%e222877223154%_
                            _%hd222878223157%_
                            _%tl222879223159%_
                            _%e222880223162%_
                            _%hd222881223165%_
                            _%tl222882223167%_
                            _%e222883223170%_
                            _%hd222884223173%_
                            _%tl222885223175%_
                            _%e222886223178%_
                            _%hd222887223181%_
                            _%tl222888223183%_
                            _%e222889223186%_
                            _%hd222890223189%_
                            _%tl222891223191%_
                            _%e222892223194%_
                            _%hd222893223197%_
                            _%tl222894223199%_
                            _%e222895223202%_
                            _%hd222896223205%_
                            _%tl222897223207%_
                            _%e222898223210%_
                            _%hd222899223213%_
                            _%tl222900223215%_
                            _%e222901223218%_
                            _%hd222902223221%_
                            _%tl222903223223%_
                            _%e222904223226%_
                            _%hd222905223229%_
                            _%tl222906223231%_
                            _%e222907223234%_
                            _%hd222908223237%_
                            _%tl222909223239%_
                            _%e222910223242%_
                            _%hd222911223245%_
                            _%tl222912223247%_)
                     (let ((_%g222860223250%_ _%hd222911223245%_)
                           (_%g222861223251%_ _%hd222902223221%_)
                           (_%g222862223252%_ _%hd222893223197%_)
                           (_%g222863223253%_ _%hd222884223173%_)
                           (_%g222864223254%_ _%hd222875223149%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g222864223254%_
                              'bind-method!))
                           (_%__kont223808223809%_
                            _%g222860223250%_
                            _%g222861223251%_
                            _%g222862223252%_
                            _%g222863223253%_
                            _%g222864223254%_)
                           (_%__kont223812223813%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223806223807%_))
                  (let ((_%e222865223122%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223806223807%_))))
                    (let ((_%tl222867223127%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222865223122%_)))
                          (_%hd222866223125%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222865223122%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl222867223127%_))
                          (let ((_%e222868223130%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl222867223127%_))))
                            (let ((_%tl222870223135%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e222868223130%_)))
                                  (_%hd222869223133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e222868223130%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd222869223133%_))
                                  (let ((_%e222871223138%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd222869223133%_))))
                                    (let ((_%tl222873223143%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e222871223138%_)))
                                          (_%hd222872223141%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e222871223138%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd222872223141%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd222872223141%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl222873223143%_))
                                                  (let ((_%e222874223146%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl222873223143%_))))
                                                    (let ((_%tl222876223151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e222874223146%_)))
                                                          (_%hd222875223149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e222874223146%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl222876223151%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl222870223135%_))
                      (let ((_%e222877223154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl222870223135%_))))
                        (let ((_%tl222879223159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222877223154%_)))
                              (_%hd222878223157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222877223154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd222878223157%_))
                              (let ((_%e222880223162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd222878223157%_))))
                                (let ((_%tl222882223167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e222880223162%_)))
                                      (_%hd222881223165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e222880223162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd222881223165%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd222881223165%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl222882223167%_))
                                              (let ((_%e222883223170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl222882223167%_))))
                                                (let ((_%tl222885223175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e222883223170%_)))
                                                      (_%hd222884223173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e222883223170%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl222885223175%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl222879223159%_))
                                                          (let ((_%e222886223178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl222879223159%_))))
                    (let ((_%tl222888223183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222886223178%_)))
                          (_%hd222887223181%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222886223178%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd222887223181%_))
                          (let ((_%e222889223186%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd222887223181%_))))
                            (let ((_%tl222891223191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e222889223186%_)))
                                  (_%hd222890223189%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e222889223186%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd222890223189%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd222890223189%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl222891223191%_))
                                          (let ((_%e222892223194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl222891223191%_))))
                                            (let ((_%tl222894223199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e222892223194%_)))
                                                  (_%hd222893223197%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e222892223194%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl222894223199%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl222888223183%_))
                                                      (let ((_%e222895223202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl222888223183%_))))
                (let ((_%tl222897223207%_
                       (let () (declare (not safe)) (##cdr _%e222895223202%_)))
                      (_%hd222896223205%_
                       (let ()
                         (declare (not safe))
                         (##car _%e222895223202%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd222896223205%_))
                      (let ((_%e222898223210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd222896223205%_))))
                        (let ((_%tl222900223215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222898223210%_)))
                              (_%hd222899223213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222898223210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd222899223213%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd222899223213%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl222900223215%_))
                                      (let ((_%e222901223218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl222900223215%_))))
                                        (let ((_%tl222903223223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e222901223218%_)))
                                              (_%hd222902223221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e222901223218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl222903223223%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl222897223207%_))
                                                  (let ((_%e222904223226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl222897223207%_))))
                                                    (let ((_%tl222906223231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e222904223226%_)))
                                                          (_%hd222905223229%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e222904223226%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd222905223229%_))
                                                          (let ((_%e222907223234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd222905223229%_))))
                    (let ((_%tl222909223239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222907223234%_)))
                          (_%hd222908223237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222907223234%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd222908223237%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd222908223237%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl222909223239%_))
                                  (let ((_%e222910223242%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl222909223239%_))))
                                    (let ((_%tl222912223247%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e222910223242%_)))
                                          (_%hd222911223245%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e222910223242%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl222912223247%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl222906223231%_))
                                              (_%__match223941223942%_
                                               _%e222865223122%_
                                               _%hd222866223125%_
                                               _%tl222867223127%_
                                               _%e222868223130%_
                                               _%hd222869223133%_
                                               _%tl222870223135%_
                                               _%e222871223138%_
                                               _%hd222872223141%_
                                               _%tl222873223143%_
                                               _%e222874223146%_
                                               _%hd222875223149%_
                                               _%tl222876223151%_
                                               _%e222877223154%_
                                               _%hd222878223157%_
                                               _%tl222879223159%_
                                               _%e222880223162%_
                                               _%hd222881223165%_
                                               _%tl222882223167%_
                                               _%e222883223170%_
                                               _%hd222884223173%_
                                               _%tl222885223175%_
                                               _%e222886223178%_
                                               _%hd222887223181%_
                                               _%tl222888223183%_
                                               _%e222889223186%_
                                               _%hd222890223189%_
                                               _%tl222891223191%_
                                               _%e222892223194%_
                                               _%hd222893223197%_
                                               _%tl222894223199%_
                                               _%e222895223202%_
                                               _%hd222896223205%_
                                               _%tl222897223207%_
                                               _%e222898223210%_
                                               _%hd222899223213%_
                                               _%tl222900223215%_
                                               _%e222901223218%_
                                               _%hd222902223221%_
                                               _%tl222903223223%_
                                               _%e222904223226%_
                                               _%hd222905223229%_
                                               _%tl222906223231%_
                                               _%e222907223234%_
                                               _%hd222908223237%_
                                               _%tl222909223239%_
                                               _%e222910223242%_
                                               _%hd222911223245%_
                                               _%tl222912223247%_)
                                              (_%__kont223812223813%_))
                                          (_%__kont223812223813%_))))
                                  (_%__kont223812223813%_))
                              (_%__kont223812223813%_))
                          (_%__kont223812223813%_))))
                  (_%__kont223812223813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl222897223207%_))
                                                      (if (let ((__tmp224164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224164 'bind-method!))
                  (let ((_%g222913223076%_ _%hd222902223221%_)
                        (_%g222914223077%_ _%hd222893223197%_)
                        (_%g222915223078%_ _%hd222884223173%_)
                        (_%g222916223079%_ _%hd222875223149%_))
                    (_%__kont223810223811%_
                     _%g222913223076%_
                     _%g222914223077%_
                     _%g222915223078%_
                     _%g222916223079%_))
                  (_%__kont223812223813%_))
              (_%__kont223812223813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223812223813%_))))
                                      (_%__kont223812223813%_))
                                  (_%__kont223812223813%_))
                              (_%__kont223812223813%_))))
                      (_%__kont223812223813%_))))
              (_%__kont223812223813%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223812223813%_))))
                                          (_%__kont223812223813%_))
                                      (_%__kont223812223813%_))
                                  (_%__kont223812223813%_))))
                          (_%__kont223812223813%_))))
                  (_%__kont223812223813%_))
              (_%__kont223812223813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223812223813%_))
                                          (_%__kont223812223813%_))
                                      (_%__kont223812223813%_))))
                              (_%__kont223812223813%_))))
                      (_%__kont223812223813%_))
                  (_%__kont223812223813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223812223813%_))
                                              (_%__kont223812223813%_))
                                          (_%__kont223812223813%_))))
                                  (_%__kont223812223813%_))))
                          (_%__kont223812223813%_))))
                  (_%__kont223812223813%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222677%_ _%stx222678%_)
        (let* ((_%__stx224050224051%_ _%stx222678%_)
               (_%g222681222721%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224050224051%_)))))
          (let ((_%__kont224052224053%_
                 (lambda (_%g222683222827%_ _%g222684222828%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222684222828%_))
                               (cons _%g222683222827%_ '())))))
                (_%__kont224054224055%_
                 (lambda (_%g222706222750%_ _%g222707222751%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224050224051%_))
                (let ((_%e222685222771%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224050224051%_))))
                  (let ((_%tl222687222776%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222685222771%_)))
                        (_%hd222686222774%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222685222771%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222687222776%_))
                        (let ((_%e222688222779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222687222776%_))))
                          (let ((_%tl222690222784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222688222779%_)))
                                (_%hd222689222782%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222688222779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222689222782%_))
                                (let ((_%e222691222787%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222689222782%_))))
                                  (let ((_%tl222693222792%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222691222787%_)))
                                        (_%hd222692222790%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222691222787%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222692222790%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222692222790%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222693222792%_))
                                                (let ((_%e222694222795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222693222792%_))))
                                                  (let ((_%tl222696222800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222694222795%_)))
                                                        (_%hd222695222798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222694222795%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222696222800%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222690222784%_))
                                                            (let ((_%e222697222803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222690222784%_))))
                      (let ((_%tl222699222808%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222697222803%_)))
                            (_%hd222698222806%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222697222803%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222698222806%_))
                            (let ((_%e222700222811%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222698222806%_))))
                              (let ((_%tl222702222816%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222700222811%_)))
                                    (_%hd222701222814%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222700222811%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222701222814%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222701222814%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222702222816%_))
                                            (let ((_%e222703222819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222702222816%_))))
                                              (let ((_%tl222705222824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222703222819%_)))
                                                    (_%hd222704222822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222703222819%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222705222824%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222699222808%_))
                                                        (_%__kont224052224053%_
                                                         _%hd222704222822%_
                                                         _%hd222695222798%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222681222721%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222699222808%_))
                                                        (_%__kont224054224055%_
                                                         _%hd222698222806%_
                                                         _%hd222689222782%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222681222721%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222699222808%_))
                                                (_%__kont224054224055%_
                                                 _%hd222698222806%_
                                                 _%hd222689222782%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222681222721%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222699222808%_))
                                            (_%__kont224054224055%_
                                             _%hd222698222806%_
                                             _%hd222689222782%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222681222721%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222699222808%_))
                                        (_%__kont224054224055%_
                                         _%hd222698222806%_
                                         _%hd222689222782%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222681222721%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222699222808%_))
                                (_%__kont224054224055%_
                                 _%hd222698222806%_
                                 _%hd222689222782%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222681222721%_))))))
                    (let () (declare (not safe)) (_%g222681222721%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222690222784%_))
                    (let ((_%e222714222742%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222690222784%_))))
                      (let ((_%tl222716222747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222714222742%_)))
                            (_%hd222715222745%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222714222742%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222716222747%_))
                            (_%__kont224054224055%_
                             _%hd222715222745%_
                             _%hd222689222782%_)
                            (let ()
                              (declare (not safe))
                              (_%g222681222721%_)))))
                    (let () (declare (not safe)) (_%g222681222721%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222690222784%_))
                                                    (let ((_%e222714222742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222690222784%_))))
                                                      (let ((_%tl222716222747%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222714222742%_)))
                    (_%hd222715222745%_
                     (let () (declare (not safe)) (##car _%e222714222742%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222716222747%_))
                    (_%__kont224054224055%_
                     _%hd222715222745%_
                     _%hd222689222782%_)
                    (let () (declare (not safe)) (_%g222681222721%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222681222721%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222690222784%_))
                                                (let ((_%e222714222742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222690222784%_))))
                                                  (let ((_%tl222716222747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222714222742%_)))
                                                        (_%hd222715222745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222714222742%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222716222747%_))
                                                        (_%__kont224054224055%_
                                                         _%hd222715222745%_
                                                         _%hd222689222782%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222681222721%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222681222721%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222690222784%_))
                                            (let ((_%e222714222742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222690222784%_))))
                                              (let ((_%tl222716222747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222714222742%_)))
                                                    (_%hd222715222745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222714222742%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222716222747%_))
                                                    (_%__kont224054224055%_
                                                     _%hd222715222745%_
                                                     _%hd222689222782%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222681222721%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222681222721%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222690222784%_))
                                    (let ((_%e222714222742%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222690222784%_))))
                                      (let ((_%tl222716222747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222714222742%_)))
                                            (_%hd222715222745%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222714222742%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222716222747%_))
                                            (_%__kont224054224055%_
                                             _%hd222715222745%_
                                             _%hd222689222782%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222681222721%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222681222721%_))))))
                        (let () (declare (not safe)) (_%g222681222721%_)))))
                (let () (declare (not safe)) (_%g222681222721%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222664%_)
        (let ((_%self222667%_ _%self222664%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222667%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222438%_)
        (let* ((_%self222441%_ _%self222438%_)
               (_%self222450222466%_ _%self222441%_)
               (_%E222452222469%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222450222466%_
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
               (_%K222453222484%_
                (lambda (_%methods222472%_
                         _%metaclass222473%_
                         _%system?222474%_
                         _%final?222475%_
                         _%struct?222476%_
                         _%constructor222477%_
                         _%fields222478%_
                         _%slots222479%_
                         _%precendence-list222480%_
                         _%super222481%_
                         _%id222482%_)
                  (cons '@class
                        (cons _%id222482%_
                              (cons _%super222481%_
                                    (cons _%precendence-list222480%_
                                          (cons _%slots222479%_
                                                (cons _%fields222478%_
                                                      (cons _%constructor222477%_
                                                            (cons _%struct?222476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222475%_
                                (cons _%system?222474%_
                                      (cons _%metaclass222473%_
                                            (cons (if _%methods222472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222472%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222454222487%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '1 '#f '#f)))
               (_%id222490%_ _%e222454222487%_)
               (_%e222455222492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '2 '#f '#f)))
               (_%super222495%_ _%e222455222492%_)
               (_%e222456222497%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '3 '#f '#f)))
               (_%precendence-list222500%_ _%e222456222497%_)
               (_%e222457222502%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '4 '#f '#f)))
               (_%slots222505%_ _%e222457222502%_)
               (_%e222458222507%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '5 '#f '#f)))
               (_%fields222510%_ _%e222458222507%_)
               (_%e222459222512%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '6 '#f '#f)))
               (_%constructor222515%_ _%e222459222512%_)
               (_%e222460222517%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '7 '#f '#f)))
               (_%struct?222520%_ _%e222460222517%_)
               (_%e222461222522%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '8 '#f '#f)))
               (_%final?222525%_ _%e222461222522%_)
               (_%e222462222527%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222450222466%_ '9 '#f '#f)))
               (_%system?222530%_ _%e222462222527%_)
               (_%e222463222532%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222450222466%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222535%_ _%e222463222532%_)
               (_%e222464222537%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222450222466%_
                   '11
                   '#f
                   '#f)))
               (_%methods222540%_ _%e222464222537%_))
          (_%K222453222484%_
           _%methods222540%_
           _%metaclass222535%_
           _%system?222530%_
           _%final?222525%_
           _%struct?222520%_
           _%constructor222515%_
           _%fields222510%_
           _%slots222505%_
           _%precendence-list222500%_
           _%super222495%_
           _%id222490%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222303%_)
        (let ((_%self222306%_ _%self222303%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222306%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222168%_)
        (let ((_%self222171%_ _%self222168%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222171%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222033%_)
        (let ((_%self222036%_ _%self222033%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222036%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222036%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222036%_
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
      (lambda (_%self221898%_)
        (let ((_%self221901%_ _%self221898%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221901%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221901%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self221901%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221763%_)
        (let ((_%self221766%_ _%self221763%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221766%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221766%_
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
      (lambda (_%self221577%_)
        (let* ((_%self221580%_ _%self221577%_)
               (_%self221589221598%_ _%self221580%_)
               (_%E221591221601%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221589221598%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221592221620%_
                (lambda (_%dispatch221604%_
                         _%arity221605%_
                         _%signature221606%_)
                  (if _%signature221606%_
                      (let ((_%signature221608%_ _%signature221606%_))
                        (cons '@lambda
                              (cons _%arity221605%_
                                    (cons _%dispatch221604%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221608%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221608%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221608%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221608%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221608%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221605%_
                                  (cons _%dispatch221604%_ '()))))))
               (_%e221593221623%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221589221598%_ '1 '#f '#f)))
               (_%e221594221626%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221589221598%_ '2 '#f '#f)))
               (_%signature221629%_ _%e221594221626%_)
               (_%e221595221631%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221589221598%_ '3 '#f '#f)))
               (_%arity221634%_ _%e221595221631%_)
               (_%e221596221636%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221589221598%_ '4 '#f '#f)))
               (_%dispatch221639%_ _%e221596221636%_))
          (_%K221592221620%_
           _%dispatch221639%_
           _%arity221634%_
           _%signature221629%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221437%_)
        (let ((_%self221440%_ _%self221437%_))
          (letrec ((_%clause-e221451%_
                    (lambda (_%clause221453%_)
                      (cdr (let ((__method224138
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221453%_
                                     'typedecl))))
                             (if __method224138
                                 (let ()
                                   (declare (not safe))
                                   (__method224138 _%clause221453%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221453%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221451%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221440%_
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
      (lambda (_%self221302%_)
        (let ((_%self221305%_ _%self221302%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221305%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221305%_
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
      (lambda (_%self221167%_)
        (let ((_%self221170%_ _%self221167%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221170%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221170%_
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
      (lambda (_%self221032%_)
        (let ((_%self221035%_ _%self221032%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221035%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
