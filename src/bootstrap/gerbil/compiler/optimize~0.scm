(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770342314)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224320
                   (let ((__obj224314
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
                       (gxc#optimizer-info:::init! __obj224314))
                     __obj224314)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224320)))))
    (define gxc#optimize!
      (lambda (_%ctx223922%_)
        (let ((__tmp224322
               (lambda ()
                 (let ((__tmp224324
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223922%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223922%_)
                          (let ((__tmp224326
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224325
                                 (##structure-ref
                                  _%ctx223922%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224326 __tmp224325 '#t))
                          (let ((_%code223926%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223922%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223922%_
                             _%code223926%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224323
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224324
                    gxc#current-compile-local-type
                    __tmp224323))))
              (__tmp224321 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224322
           gxc#current-compile-mutators
           __tmp224321))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223908%_)
        (letrec ((_%load-it!223910%_
                  (lambda (_%id223920%_)
                    (if (let ((__tmp224327
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224327 _%id223920%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223920%_)
                          (let ((__tmp224328
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224328 _%id223920%_ '#t)))))))
          (let* ((_%modid223912%_
                  (##structure-ref
                   _%ctx223908%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223914%_ (symbol->string _%modid223912%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223914%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223914%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223910%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223910%_
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
      (lambda (_%ctx223845%_)
        (letrec* ((_%deps223847%_
                   (let* ((_%imports223898%_
                           (##structure-ref
                            _%ctx223845%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223900%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223845%_))))
                     (if _%$e223900%_
                         ((lambda (_%g223902223904%_)
                            (cons _%g223902223904%_ _%imports223898%_))
                          _%$e223900%_)
                         _%imports223898%_))))
          (let _%lp223849%_ ((_%rest223851%_ _%deps223847%_))
            (let* ((_%rest223852223860%_ _%rest223851%_)
                   (_%else223854223868%_ (lambda () '#!void))
                   (_%K223856223886%_
                    (lambda (_%rest223871%_ _%hd223872%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223872%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224330
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224329
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223872%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224330 __tmp224329))
                                '#!void
                                (begin
                                  (let ((_%$e223875%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223872%_))))
                                    (if _%$e223875%_
                                        ((lambda (_%pre223878%_)
                                           (_%lp223849%_
                                            (cons _%pre223878%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223872%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223875%_)
                                        (_%lp223849%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223872%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223872%_)))
                            (_%lp223849%_ _%rest223871%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223872%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224332
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224331
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223872%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224332 __tmp224331))
                                    '#!void
                                    (begin
                                      (_%lp223849%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223872%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223872%_)))
                                (_%lp223849%_ _%rest223871%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223872%_
                                     'gx#module-import::t))
                                  (_%lp223849%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223872%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223871%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223872%_
                                         'gx#module-export::t))
                                      (_%lp223849%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223872%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223871%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223872%_
                                             'gx#import-set::t))
                                          (_%lp223849%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223872%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223871%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223872%_))))))))))
              (if (pair? _%rest223852223860%_)
                  (let ((_%hd223857223889%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223852223860%_)))
                        (_%tl223858223891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223852223860%_))))
                    (let* ((_%hd223894%_ _%hd223857223889%_)
                           (_%rest223896%_ _%tl223858223891%_))
                      (_%K223856223886%_ _%rest223896%_ _%hd223894%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223825%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223825%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223825%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223827%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223829%_
                    (##structure-ref
                     _%ctx223825%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223831%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223827%_ _%id223829%_)))
                   (_%$e223834%_ _%mod223831%_))
              (if _%$e223834%_
                  _%$e223834%_
                  (let* ((_%mod223837%_
                          (gxc#optimizer-import-ssxi _%ctx223825%_))
                         (_%val223842%_
                          (let ((_%$e223839%_ _%mod223837%_))
                            (if _%$e223839%_ _%$e223839%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223827%_ _%id223829%_ _%val223842%_))
                    _%val223842%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223823%_)
        (if (##structure-ref _%ctx223823%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223823%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223801%_)
        (letrec ((_%catch-e223803%_
                  (lambda (_%exn223821%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223821%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223821%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223801%_))))
                    '#f))
                 (_%import-e223804%_
                  (lambda ()
                    (let* ((_%str-id223807%_
                            (let ((__tmp224333
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223801%_))))
                              (declare (not safe))
                              (##string-append __tmp224333 '".ssxi")))
                           (_%artefact-path223814%_
                            (let ((_%odir223808223810%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223808223810%_
                                  (let ((_%odir223812%_ _%odir223808223810%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223807%_
                                        '".ss"))
                                     _%odir223812%_))
                                  '#f)))
                           (_%library-path223816%_
                            (let ((__tmp224334
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223807%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224334)))
                           (_%ssxi-path223818%_
                            (if (and _%artefact-path223814%_
                                     (file-exists? _%artefact-path223814%_))
                                _%artefact-path223814%_
                                _%library-path223816%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223818%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223818%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223803%_ _%import-e223804%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223786%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223786%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223786%_))
        (let* ((_%stx223788%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223786%_)))
               (_%stx223790%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223788%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223790%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223790%_))
          (let _%fixpoint223793%_ ((_%current223795%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223790%_))
            (let ((_%refined223797%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223795%_ _%refined223797%_)
                  '#!void
                  (_%fixpoint223793%_ _%refined223797%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223790%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223790%_))
          (let ((_%stx223799%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223790%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223799%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224336 (list gxc#::generate-runtime-empty::t))
            (__tmp224335 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224336
         '()
         __tmp224335
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223783%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223783%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224337
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
        (__make-atomic-promise __tmp224337)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223775%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223778%_
                (let ((__obj224316
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224316))
               (__tmp224338
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223778%_ _%stx223775%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224338
           gxc#current-compile-method
           _%self223778%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223735%_ _%stx223736%_)
        (let* ((_%g223738223748%_
                (lambda (_%g223739223745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223739223745%_))))
               (_%g223737223772%_
                (lambda (_%g223739223751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223739223751%_))
                      (let ((_%e223741223753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223739223751%_))))
                        (let ((_%hd223742223756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223741223753%_)))
                              (_%tl223743223758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223741223753%_))))
                          ((lambda (_%g223740223761%_)
                             (let ((__tmp224341
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223735%_
                                         _%stx223736%_))))
                                   (__tmp224339
                                    (let ((__tmp224340
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224340 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224341
                                gx#current-expander-phi
                                __tmp224339)))
                           _%tl223743223758%_)))
                      (_%g223738223748%_ _%g223739223751%_)))))
          (_%g223737223772%_ _%stx223736%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223674%_ _%stx223675%_)
        (let* ((_%g223677223691%_
                (lambda (_%g223678223688%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223678223688%_))))
               (_%g223676223732%_
                (lambda (_%g223678223694%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223678223694%_))
                      (let ((_%e223681223696%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223678223694%_))))
                        (let ((_%hd223682223699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223681223696%_)))
                              (_%tl223683223701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223681223696%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223683223701%_))
                              (let ((_%e223684223704%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223683223701%_))))
                                (let ((_%hd223685223707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223684223704%_)))
                                      (_%tl223686223709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223684223704%_))))
                                  ((lambda (_%g223679223712%_
                                            _%g223680223713%_)
                                     (let* ((_%ctx223726%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223680223713%_)))
                                            (_%code223728%_
                                             (##structure-ref
                                              _%ctx223726%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224342
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223674%_
                                                  _%code223728%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224342
                                        gx#current-expander-context
                                        _%ctx223726%_)))
                                   _%tl223686223709%_
                                   _%hd223685223707%_)))
                              (_%g223677223691%_ _%g223678223694%_))))
                      (_%g223677223691%_ _%g223678223694%_)))))
          (_%g223676223732%_ _%stx223675%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223481%_ _%stx223482%_)
        (letrec ((_%generate-e223484%_
                  (lambda (_%id223659%_)
                    (let* ((_%sym223661%_
                            (if (let ((__tmp224343
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224343))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223659%_))
                                '#f))
                           (_%$e223663%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223661%_))))
                      (if _%$e223663%_
                          ((lambda (_%klass223666%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223661%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223661%_
                                                     (cons (let ((__method224317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223666%_ 'typedecl))))
                     (if __method224317
                         (let ()
                           (declare (not safe))
                           (__method224317 _%klass223666%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223666%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223661%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223661%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223663%_)
                          (let ((_%$e223668%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223661%_))))
                            (if _%$e223668%_
                                ((lambda (_%type223671%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223661%_
                                      '" "
                                      _%type223671%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223671%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223661%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223661%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223671%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223661%_
                                                   (cons (let ((__method224318
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223671%_ 'typedecl))))
                   (if __method224318
                       (let ()
                         (declare (not safe))
                         (__method224318 _%type223671%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223671%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223668%_)
                                '(begin))))))))
          (let* ((_%__stx223929223930%_ _%stx223482%_)
                 (_%g223487223525%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223929223930%_)))))
            (let ((_%__kont223931223932%_
                   (lambda (_%g223489223641%_)
                     (_%generate-e223484%_ _%g223489223641%_)))
                  (_%__kont223933223934%_
                   (lambda (_%g223502223576%_)
                     (let ((_%types223602%_
                            (map _%generate-e223484%_
                                 (let ((__tmp224344
                                        (lambda (_%g223594223597%_
                                                 _%g223595223599%_)
                                          (cons _%g223594223597%_
                                                _%g223595223599%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224344
                                    '()
                                    _%g223502223576%_)))))
                       (cons 'begin _%types223602%_)))))
              (let ((_%__match223984223985%_
                     (lambda (_%e223503223530%_
                              _%hd223504223533%_
                              _%tl223505223535%_
                              _%e223506223538%_
                              _%hd223507223541%_
                              _%tl223508223543%_
                              _%__splice223935223936%_
                              _%target223509223546%_
                              _%tl223511223548%_)
                       (letrec ((_%loop223512223551%_
                                 (lambda (_%hd223510223554%_
                                          _%id223516223556%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223510223554%_))
                                       (let ((_%e223513223558%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223510223554%_))))
                                         (let ((_%lp-tl223515223563%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223513223558%_)))
                                               (_%lp-hd223514223561%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223513223558%_))))
                                           (_%loop223512223551%_
                                            _%lp-tl223515223563%_
                                            (cons _%lp-hd223514223561%_
                                                  _%id223516223556%_))))
                                       (let ((_%id223517223566%_
                                              (reverse _%id223516223556%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223508223543%_))
                                             (let ((_%e223518223568%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223508223543%_))))
                                               (let ((_%tl223520223573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223518223568%_)))
                                                     (_%hd223519223571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223518223568%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223520223573%_))
                                                     (_%__kont223933223934%_
                                                      _%id223517223566%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223487223525%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223487223525%_))))))))
                         (_%loop223512223551%_ _%target223509223546%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223929223930%_))
                    (let ((_%e223490223609%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223929223930%_))))
                      (let ((_%tl223492223614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223490223609%_)))
                            (_%hd223491223612%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223490223609%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223492223614%_))
                            (let ((_%e223493223617%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223492223614%_))))
                              (let ((_%tl223495223622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223493223617%_)))
                                    (_%hd223494223620%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223493223617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223494223620%_))
                                    (let ((_%e223496223625%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223494223620%_))))
                                      (let ((_%tl223498223630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223496223625%_)))
                                            (_%hd223497223628%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223496223625%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223498223630%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223495223622%_))
                                                (let ((_%e223499223633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223495223622%_))))
                                                  (let ((_%tl223501223638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223499223633%_)))
                                                        (_%hd223500223636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223499223633%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223501223638%_))
                                                        (_%__kont223931223932%_
                                                         _%hd223497223628%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223494223620%_))
                                                            (let ((_%__splice223935223936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223494223620%_
                              '0))))
                      (let ((_%tl223511223548%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223935223936%_ '1)))
                            (_%target223509223546%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223935223936%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223511223548%_))
                            (_%__match223984223985%_
                             _%e223490223609%_
                             _%hd223491223612%_
                             _%tl223492223614%_
                             _%e223493223617%_
                             _%hd223494223620%_
                             _%tl223495223622%_
                             _%__splice223935223936%_
                             _%target223509223546%_
                             _%tl223511223548%_)
                            (let ()
                              (declare (not safe))
                              (_%g223487223525%_)))))
                    (let () (declare (not safe)) (_%g223487223525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223494223620%_))
                                                    (let ((_%__splice223935223936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223494223620%_
                                                              '0))))
                                                      (let ((_%tl223511223548%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223935223936%_ '1)))
                    (_%target223509223546%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223935223936%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223511223548%_))
                    (_%__match223984223985%_
                     _%e223490223609%_
                     _%hd223491223612%_
                     _%tl223492223614%_
                     _%e223493223617%_
                     _%hd223494223620%_
                     _%tl223495223622%_
                     _%__splice223935223936%_
                     _%target223509223546%_
                     _%tl223511223548%_)
                    (let () (declare (not safe)) (_%g223487223525%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223487223525%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223494223620%_))
                                                (let ((_%__splice223935223936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223494223620%_
                                                          '0))))
                                                  (let ((_%tl223511223548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223935223936%_
                                                            '1)))
                                                        (_%target223509223546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223935223936%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223511223548%_))
                                                        (_%__match223984223985%_
                                                         _%e223490223609%_
                                                         _%hd223491223612%_
                                                         _%tl223492223614%_
                                                         _%e223493223617%_
                                                         _%hd223494223620%_
                                                         _%tl223495223622%_
                                                         _%__splice223935223936%_
                                                         _%target223509223546%_
                                                         _%tl223511223548%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223487223525%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223487223525%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223494223620%_))
                                        (let ((_%__splice223935223936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223494223620%_
                                                  '0))))
                                          (let ((_%tl223511223548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223935223936%_
                                                    '1)))
                                                (_%target223509223546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223935223936%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223511223548%_))
                                                (_%__match223984223985%_
                                                 _%e223490223609%_
                                                 _%hd223491223612%_
                                                 _%tl223492223614%_
                                                 _%e223493223617%_
                                                 _%hd223494223620%_
                                                 _%tl223495223622%_
                                                 _%__splice223935223936%_
                                                 _%target223509223546%_
                                                 _%tl223511223548%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223487223525%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223487223525%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223487223525%_)))))
                    (let () (declare (not safe)) (_%g223487223525%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self223034%_ _%stx223035%_)
        (let* ((_%__stx223987223988%_ _%stx223035%_)
               (_%g223039223141%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223987223988%_)))))
          (let ((_%__kont223989223990%_
                 (lambda (_%g223041223431%_
                          _%g223042223432%_
                          _%g223043223433%_
                          _%g223044223434%_
                          _%g223045223435%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223044223434%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223043223433%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223042223432%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g223041223431%_))
                                                 '())))))))
                (_%__kont223991223992%_
                 (lambda (_%g223094223257%_
                          _%g223095223258%_
                          _%g223096223259%_
                          _%g223097223260%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223096223259%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223095223258%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223094223257%_))
                                           (cons '#f '())))))))
                (_%__kont223993223994%_ (lambda () '(begin))))
            (let ((_%__match224122224123%_
                   (lambda (_%e223046223303%_
                            _%hd223047223306%_
                            _%tl223048223308%_
                            _%e223049223311%_
                            _%hd223050223314%_
                            _%tl223051223316%_
                            _%e223052223319%_
                            _%hd223053223322%_
                            _%tl223054223324%_
                            _%e223055223327%_
                            _%hd223056223330%_
                            _%tl223057223332%_
                            _%e223058223335%_
                            _%hd223059223338%_
                            _%tl223060223340%_
                            _%e223061223343%_
                            _%hd223062223346%_
                            _%tl223063223348%_
                            _%e223064223351%_
                            _%hd223065223354%_
                            _%tl223066223356%_
                            _%e223067223359%_
                            _%hd223068223362%_
                            _%tl223069223364%_
                            _%e223070223367%_
                            _%hd223071223370%_
                            _%tl223072223372%_
                            _%e223073223375%_
                            _%hd223074223378%_
                            _%tl223075223380%_
                            _%e223076223383%_
                            _%hd223077223386%_
                            _%tl223078223388%_
                            _%e223079223391%_
                            _%hd223080223394%_
                            _%tl223081223396%_
                            _%e223082223399%_
                            _%hd223083223402%_
                            _%tl223084223404%_
                            _%e223085223407%_
                            _%hd223086223410%_
                            _%tl223087223412%_
                            _%e223088223415%_
                            _%hd223089223418%_
                            _%tl223090223420%_
                            _%e223091223423%_
                            _%hd223092223426%_
                            _%tl223093223428%_)
                     (let ((_%g223041223431%_ _%hd223092223426%_)
                           (_%g223042223432%_ _%hd223083223402%_)
                           (_%g223043223433%_ _%hd223074223378%_)
                           (_%g223044223434%_ _%hd223065223354%_)
                           (_%g223045223435%_ _%hd223056223330%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g223045223435%_
                              'bind-method!))
                           (_%__kont223989223990%_
                            _%g223041223431%_
                            _%g223042223432%_
                            _%g223043223433%_
                            _%g223044223434%_
                            _%g223045223435%_)
                           (_%__kont223993223994%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223987223988%_))
                  (let ((_%e223046223303%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223987223988%_))))
                    (let ((_%tl223048223308%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223046223303%_)))
                          (_%hd223047223306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223046223303%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl223048223308%_))
                          (let ((_%e223049223311%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl223048223308%_))))
                            (let ((_%tl223051223316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223049223311%_)))
                                  (_%hd223050223314%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223049223311%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd223050223314%_))
                                  (let ((_%e223052223319%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd223050223314%_))))
                                    (let ((_%tl223054223324%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223052223319%_)))
                                          (_%hd223053223322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223052223319%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd223053223322%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd223053223322%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223054223324%_))
                                                  (let ((_%e223055223327%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223054223324%_))))
                                                    (let ((_%tl223057223332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223055223327%_)))
                                                          (_%hd223056223330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223055223327%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl223057223332%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl223051223316%_))
                      (let ((_%e223058223335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl223051223316%_))))
                        (let ((_%tl223060223340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223058223335%_)))
                              (_%hd223059223338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223058223335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd223059223338%_))
                              (let ((_%e223061223343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd223059223338%_))))
                                (let ((_%tl223063223348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223061223343%_)))
                                      (_%hd223062223346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223061223343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd223062223346%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd223062223346%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl223063223348%_))
                                              (let ((_%e223064223351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl223063223348%_))))
                                                (let ((_%tl223066223356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e223064223351%_)))
                                                      (_%hd223065223354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e223064223351%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223066223356%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl223060223340%_))
                                                          (let ((_%e223067223359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl223060223340%_))))
                    (let ((_%tl223069223364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223067223359%_)))
                          (_%hd223068223362%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223067223359%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223068223362%_))
                          (let ((_%e223070223367%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223068223362%_))))
                            (let ((_%tl223072223372%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223070223367%_)))
                                  (_%hd223071223370%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223070223367%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd223071223370%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd223071223370%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl223072223372%_))
                                          (let ((_%e223073223375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl223072223372%_))))
                                            (let ((_%tl223075223380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223073223375%_)))
                                                  (_%hd223074223378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223073223375%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223075223380%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl223069223364%_))
                                                      (let ((_%e223076223383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl223069223364%_))))
                (let ((_%tl223078223388%_
                       (let () (declare (not safe)) (##cdr _%e223076223383%_)))
                      (_%hd223077223386%_
                       (let ()
                         (declare (not safe))
                         (##car _%e223076223383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd223077223386%_))
                      (let ((_%e223079223391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd223077223386%_))))
                        (let ((_%tl223081223396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223079223391%_)))
                              (_%hd223080223394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223079223391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd223080223394%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd223080223394%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl223081223396%_))
                                      (let ((_%e223082223399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl223081223396%_))))
                                        (let ((_%tl223084223404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223082223399%_)))
                                              (_%hd223083223402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223082223399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223084223404%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223078223388%_))
                                                  (let ((_%e223085223407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223078223388%_))))
                                                    (let ((_%tl223087223412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223085223407%_)))
                                                          (_%hd223086223410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223085223407%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd223086223410%_))
                                                          (let ((_%e223088223415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd223086223410%_))))
                    (let ((_%tl223090223420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223088223415%_)))
                          (_%hd223089223418%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223088223415%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd223089223418%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd223089223418%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl223090223420%_))
                                  (let ((_%e223091223423%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl223090223420%_))))
                                    (let ((_%tl223093223428%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223091223423%_)))
                                          (_%hd223092223426%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223091223423%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl223093223428%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223087223412%_))
                                              (_%__match224122224123%_
                                               _%e223046223303%_
                                               _%hd223047223306%_
                                               _%tl223048223308%_
                                               _%e223049223311%_
                                               _%hd223050223314%_
                                               _%tl223051223316%_
                                               _%e223052223319%_
                                               _%hd223053223322%_
                                               _%tl223054223324%_
                                               _%e223055223327%_
                                               _%hd223056223330%_
                                               _%tl223057223332%_
                                               _%e223058223335%_
                                               _%hd223059223338%_
                                               _%tl223060223340%_
                                               _%e223061223343%_
                                               _%hd223062223346%_
                                               _%tl223063223348%_
                                               _%e223064223351%_
                                               _%hd223065223354%_
                                               _%tl223066223356%_
                                               _%e223067223359%_
                                               _%hd223068223362%_
                                               _%tl223069223364%_
                                               _%e223070223367%_
                                               _%hd223071223370%_
                                               _%tl223072223372%_
                                               _%e223073223375%_
                                               _%hd223074223378%_
                                               _%tl223075223380%_
                                               _%e223076223383%_
                                               _%hd223077223386%_
                                               _%tl223078223388%_
                                               _%e223079223391%_
                                               _%hd223080223394%_
                                               _%tl223081223396%_
                                               _%e223082223399%_
                                               _%hd223083223402%_
                                               _%tl223084223404%_
                                               _%e223085223407%_
                                               _%hd223086223410%_
                                               _%tl223087223412%_
                                               _%e223088223415%_
                                               _%hd223089223418%_
                                               _%tl223090223420%_
                                               _%e223091223423%_
                                               _%hd223092223426%_
                                               _%tl223093223428%_)
                                              (_%__kont223993223994%_))
                                          (_%__kont223993223994%_))))
                                  (_%__kont223993223994%_))
                              (_%__kont223993223994%_))
                          (_%__kont223993223994%_))))
                  (_%__kont223993223994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223078223388%_))
                                                      (if (let ((__tmp224345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224345 'bind-method!))
                  (let ((_%g223094223257%_ _%hd223083223402%_)
                        (_%g223095223258%_ _%hd223074223378%_)
                        (_%g223096223259%_ _%hd223065223354%_)
                        (_%g223097223260%_ _%hd223056223330%_))
                    (_%__kont223991223992%_
                     _%g223094223257%_
                     _%g223095223258%_
                     _%g223096223259%_
                     _%g223097223260%_))
                  (_%__kont223993223994%_))
              (_%__kont223993223994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223993223994%_))))
                                      (_%__kont223993223994%_))
                                  (_%__kont223993223994%_))
                              (_%__kont223993223994%_))))
                      (_%__kont223993223994%_))))
              (_%__kont223993223994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223993223994%_))))
                                          (_%__kont223993223994%_))
                                      (_%__kont223993223994%_))
                                  (_%__kont223993223994%_))))
                          (_%__kont223993223994%_))))
                  (_%__kont223993223994%_))
              (_%__kont223993223994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223993223994%_))
                                          (_%__kont223993223994%_))
                                      (_%__kont223993223994%_))))
                              (_%__kont223993223994%_))))
                      (_%__kont223993223994%_))
                  (_%__kont223993223994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223993223994%_))
                                              (_%__kont223993223994%_))
                                          (_%__kont223993223994%_))))
                                  (_%__kont223993223994%_))))
                          (_%__kont223993223994%_))))
                  (_%__kont223993223994%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222858%_ _%stx222859%_)
        (let* ((_%__stx224231224232%_ _%stx222859%_)
               (_%g222862222902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224231224232%_)))))
          (let ((_%__kont224233224234%_
                 (lambda (_%g222864223008%_ _%g222865223009%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222865223009%_))
                               (cons _%g222864223008%_ '())))))
                (_%__kont224235224236%_
                 (lambda (_%g222887222931%_ _%g222888222932%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224231224232%_))
                (let ((_%e222866222952%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224231224232%_))))
                  (let ((_%tl222868222957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222866222952%_)))
                        (_%hd222867222955%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222866222952%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222868222957%_))
                        (let ((_%e222869222960%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222868222957%_))))
                          (let ((_%tl222871222965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222869222960%_)))
                                (_%hd222870222963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222869222960%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222870222963%_))
                                (let ((_%e222872222968%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222870222963%_))))
                                  (let ((_%tl222874222973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222872222968%_)))
                                        (_%hd222873222971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222872222968%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222873222971%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222873222971%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222874222973%_))
                                                (let ((_%e222875222976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222874222973%_))))
                                                  (let ((_%tl222877222981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222875222976%_)))
                                                        (_%hd222876222979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222875222976%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222877222981%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222871222965%_))
                                                            (let ((_%e222878222984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222871222965%_))))
                      (let ((_%tl222880222989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222878222984%_)))
                            (_%hd222879222987%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222878222984%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222879222987%_))
                            (let ((_%e222881222992%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222879222987%_))))
                              (let ((_%tl222883222997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222881222992%_)))
                                    (_%hd222882222995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222881222992%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222882222995%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222882222995%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222883222997%_))
                                            (let ((_%e222884223000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222883222997%_))))
                                              (let ((_%tl222886223005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222884223000%_)))
                                                    (_%hd222885223003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222884223000%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222886223005%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222880222989%_))
                                                        (_%__kont224233224234%_
                                                         _%hd222885223003%_
                                                         _%hd222876222979%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222862222902%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222880222989%_))
                                                        (_%__kont224235224236%_
                                                         _%hd222879222987%_
                                                         _%hd222870222963%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222862222902%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222880222989%_))
                                                (_%__kont224235224236%_
                                                 _%hd222879222987%_
                                                 _%hd222870222963%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222862222902%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222880222989%_))
                                            (_%__kont224235224236%_
                                             _%hd222879222987%_
                                             _%hd222870222963%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222862222902%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222880222989%_))
                                        (_%__kont224235224236%_
                                         _%hd222879222987%_
                                         _%hd222870222963%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222862222902%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222880222989%_))
                                (_%__kont224235224236%_
                                 _%hd222879222987%_
                                 _%hd222870222963%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222862222902%_))))))
                    (let () (declare (not safe)) (_%g222862222902%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222871222965%_))
                    (let ((_%e222895222923%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222871222965%_))))
                      (let ((_%tl222897222928%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222895222923%_)))
                            (_%hd222896222926%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222895222923%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222897222928%_))
                            (_%__kont224235224236%_
                             _%hd222896222926%_
                             _%hd222870222963%_)
                            (let ()
                              (declare (not safe))
                              (_%g222862222902%_)))))
                    (let () (declare (not safe)) (_%g222862222902%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222871222965%_))
                                                    (let ((_%e222895222923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222871222965%_))))
                                                      (let ((_%tl222897222928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222895222923%_)))
                    (_%hd222896222926%_
                     (let () (declare (not safe)) (##car _%e222895222923%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222897222928%_))
                    (_%__kont224235224236%_
                     _%hd222896222926%_
                     _%hd222870222963%_)
                    (let () (declare (not safe)) (_%g222862222902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222862222902%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222871222965%_))
                                                (let ((_%e222895222923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222871222965%_))))
                                                  (let ((_%tl222897222928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222895222923%_)))
                                                        (_%hd222896222926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222895222923%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222897222928%_))
                                                        (_%__kont224235224236%_
                                                         _%hd222896222926%_
                                                         _%hd222870222963%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222862222902%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222862222902%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222871222965%_))
                                            (let ((_%e222895222923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222871222965%_))))
                                              (let ((_%tl222897222928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222895222923%_)))
                                                    (_%hd222896222926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222895222923%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222897222928%_))
                                                    (_%__kont224235224236%_
                                                     _%hd222896222926%_
                                                     _%hd222870222963%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222862222902%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222862222902%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222871222965%_))
                                    (let ((_%e222895222923%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222871222965%_))))
                                      (let ((_%tl222897222928%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222895222923%_)))
                                            (_%hd222896222926%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222895222923%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222897222928%_))
                                            (_%__kont224235224236%_
                                             _%hd222896222926%_
                                             _%hd222870222963%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222862222902%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222862222902%_))))))
                        (let () (declare (not safe)) (_%g222862222902%_)))))
                (let () (declare (not safe)) (_%g222862222902%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222845%_)
        (let ((_%self222848%_ _%self222845%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222848%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222619%_)
        (let* ((_%self222622%_ _%self222619%_)
               (_%self222631222647%_ _%self222622%_)
               (_%E222633222650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222631222647%_
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
               (_%K222634222665%_
                (lambda (_%methods222653%_
                         _%metaclass222654%_
                         _%system?222655%_
                         _%final?222656%_
                         _%struct?222657%_
                         _%constructor222658%_
                         _%fields222659%_
                         _%slots222660%_
                         _%precendence-list222661%_
                         _%super222662%_
                         _%id222663%_)
                  (cons '@class
                        (cons _%id222663%_
                              (cons _%super222662%_
                                    (cons _%precendence-list222661%_
                                          (cons _%slots222660%_
                                                (cons _%fields222659%_
                                                      (cons _%constructor222658%_
                                                            (cons _%struct?222657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222656%_
                                (cons _%system?222655%_
                                      (cons _%metaclass222654%_
                                            (cons (if _%methods222653%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222653%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222635222668%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '1 '#f '#f)))
               (_%id222671%_ _%e222635222668%_)
               (_%e222636222673%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '2 '#f '#f)))
               (_%super222676%_ _%e222636222673%_)
               (_%e222637222678%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '3 '#f '#f)))
               (_%precendence-list222681%_ _%e222637222678%_)
               (_%e222638222683%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '4 '#f '#f)))
               (_%slots222686%_ _%e222638222683%_)
               (_%e222639222688%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '5 '#f '#f)))
               (_%fields222691%_ _%e222639222688%_)
               (_%e222640222693%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '6 '#f '#f)))
               (_%constructor222696%_ _%e222640222693%_)
               (_%e222641222698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '7 '#f '#f)))
               (_%struct?222701%_ _%e222641222698%_)
               (_%e222642222703%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '8 '#f '#f)))
               (_%final?222706%_ _%e222642222703%_)
               (_%e222643222708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222631222647%_ '9 '#f '#f)))
               (_%system?222711%_ _%e222643222708%_)
               (_%e222644222713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222631222647%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222716%_ _%e222644222713%_)
               (_%e222645222718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222631222647%_
                   '11
                   '#f
                   '#f)))
               (_%methods222721%_ _%e222645222718%_))
          (_%K222634222665%_
           _%methods222721%_
           _%metaclass222716%_
           _%system?222711%_
           _%final?222706%_
           _%struct?222701%_
           _%constructor222696%_
           _%fields222691%_
           _%slots222686%_
           _%precendence-list222681%_
           _%super222676%_
           _%id222671%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222484%_)
        (let ((_%self222487%_ _%self222484%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222487%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222349%_)
        (let ((_%self222352%_ _%self222349%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222352%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222214%_)
        (let ((_%self222217%_ _%self222214%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222217%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222217%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222217%_
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
      (lambda (_%self222079%_)
        (let ((_%self222082%_ _%self222079%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222082%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222082%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222082%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221944%_)
        (let ((_%self221947%_ _%self221944%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221947%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221947%_
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
      (lambda (_%self221758%_)
        (let* ((_%self221761%_ _%self221758%_)
               (_%self221770221779%_ _%self221761%_)
               (_%E221772221782%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221770221779%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221773221801%_
                (lambda (_%dispatch221785%_
                         _%arity221786%_
                         _%signature221787%_)
                  (if _%signature221787%_
                      (let ((_%signature221789%_ _%signature221787%_))
                        (cons '@lambda
                              (cons _%arity221786%_
                                    (cons _%dispatch221785%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221789%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221789%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221789%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221789%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221789%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221786%_
                                  (cons _%dispatch221785%_ '()))))))
               (_%e221774221804%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221770221779%_ '1 '#f '#f)))
               (_%e221775221807%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221770221779%_ '2 '#f '#f)))
               (_%signature221810%_ _%e221775221807%_)
               (_%e221776221812%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221770221779%_ '3 '#f '#f)))
               (_%arity221815%_ _%e221776221812%_)
               (_%e221777221817%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221770221779%_ '4 '#f '#f)))
               (_%dispatch221820%_ _%e221777221817%_))
          (_%K221773221801%_
           _%dispatch221820%_
           _%arity221815%_
           _%signature221810%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221618%_)
        (let ((_%self221621%_ _%self221618%_))
          (letrec ((_%clause-e221632%_
                    (lambda (_%clause221634%_)
                      (cdr (let ((__method224319
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221634%_
                                     'typedecl))))
                             (if __method224319
                                 (let ()
                                   (declare (not safe))
                                   (__method224319 _%clause221634%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221634%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221632%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221621%_
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
      (lambda (_%self221483%_)
        (let ((_%self221486%_ _%self221483%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221486%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221486%_
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
      (lambda (_%self221348%_)
        (let ((_%self221351%_ _%self221348%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221351%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221351%_
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
      (lambda (_%self221213%_)
        (let ((_%self221216%_ _%self221213%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221216%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
