(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770313942)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224345
                   (let ((__obj224339
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
                       (gxc#optimizer-info:::init! __obj224339))
                     __obj224339)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224345)))))
    (define gxc#optimize!
      (lambda (_%ctx223947%_)
        (let ((__tmp224347
               (lambda ()
                 (let ((__tmp224349
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223947%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223947%_)
                          (let ((__tmp224351
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224350
                                 (##structure-ref
                                  _%ctx223947%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224351 __tmp224350 '#t))
                          (let ((_%code223951%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223947%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223947%_
                             _%code223951%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224348
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224349
                    gxc#current-compile-local-type
                    __tmp224348))))
              (__tmp224346 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224347
           gxc#current-compile-mutators
           __tmp224346))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223933%_)
        (letrec ((_%load-it!223935%_
                  (lambda (_%id223945%_)
                    (if (let ((__tmp224352
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224352 _%id223945%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223945%_)
                          (let ((__tmp224353
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224353 _%id223945%_ '#t)))))))
          (let* ((_%modid223937%_
                  (##structure-ref
                   _%ctx223933%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223939%_ (symbol->string _%modid223937%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223939%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223939%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223935%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223935%_
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
      (lambda (_%ctx223870%_)
        (letrec* ((_%deps223872%_
                   (let* ((_%imports223923%_
                           (##structure-ref
                            _%ctx223870%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223925%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223870%_))))
                     (if _%$e223925%_
                         ((lambda (_%g223927223929%_)
                            (cons _%g223927223929%_ _%imports223923%_))
                          _%$e223925%_)
                         _%imports223923%_))))
          (let _%lp223874%_ ((_%rest223876%_ _%deps223872%_))
            (let* ((_%rest223877223885%_ _%rest223876%_)
                   (_%else223879223893%_ (lambda () '#!void))
                   (_%K223881223911%_
                    (lambda (_%rest223896%_ _%hd223897%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223897%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224355
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224354
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223897%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224355 __tmp224354))
                                '#!void
                                (begin
                                  (let ((_%$e223900%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223897%_))))
                                    (if _%$e223900%_
                                        ((lambda (_%pre223903%_)
                                           (_%lp223874%_
                                            (cons _%pre223903%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223897%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223900%_)
                                        (_%lp223874%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223897%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223897%_)))
                            (_%lp223874%_ _%rest223896%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223897%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224357
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224356
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223897%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224357 __tmp224356))
                                    '#!void
                                    (begin
                                      (_%lp223874%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223897%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223897%_)))
                                (_%lp223874%_ _%rest223896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223897%_
                                     'gx#module-import::t))
                                  (_%lp223874%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223897%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223896%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223897%_
                                         'gx#module-export::t))
                                      (_%lp223874%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223897%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223896%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223897%_
                                             'gx#import-set::t))
                                          (_%lp223874%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223897%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223896%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223897%_))))))))))
              (if (pair? _%rest223877223885%_)
                  (let ((_%hd223882223914%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223877223885%_)))
                        (_%tl223883223916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223877223885%_))))
                    (let* ((_%hd223919%_ _%hd223882223914%_)
                           (_%rest223921%_ _%tl223883223916%_))
                      (_%K223881223911%_ _%rest223921%_ _%hd223919%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223850%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223850%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223850%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223852%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223854%_
                    (##structure-ref
                     _%ctx223850%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223856%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223852%_ _%id223854%_)))
                   (_%$e223859%_ _%mod223856%_))
              (if _%$e223859%_
                  _%$e223859%_
                  (let* ((_%mod223862%_
                          (gxc#optimizer-import-ssxi _%ctx223850%_))
                         (_%val223867%_
                          (let ((_%$e223864%_ _%mod223862%_))
                            (if _%$e223864%_ _%$e223864%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223852%_ _%id223854%_ _%val223867%_))
                    _%val223867%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223848%_)
        (if (##structure-ref _%ctx223848%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223848%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223826%_)
        (letrec ((_%catch-e223828%_
                  (lambda (_%exn223846%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223846%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223846%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223826%_))))
                    '#f))
                 (_%import-e223829%_
                  (lambda ()
                    (let* ((_%str-id223832%_
                            (let ((__tmp224358
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223826%_))))
                              (declare (not safe))
                              (##string-append __tmp224358 '".ssxi")))
                           (_%artefact-path223839%_
                            (let ((_%odir223833223835%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223833223835%_
                                  (let ((_%odir223837%_ _%odir223833223835%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223832%_
                                        '".ss"))
                                     _%odir223837%_))
                                  '#f)))
                           (_%library-path223841%_
                            (let ((__tmp224359
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223832%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224359)))
                           (_%ssxi-path223843%_
                            (if (and _%artefact-path223839%_
                                     (file-exists? _%artefact-path223839%_))
                                _%artefact-path223839%_
                                _%library-path223841%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223843%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223843%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223828%_ _%import-e223829%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223811%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223811%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223811%_))
        (let* ((_%stx223813%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223811%_)))
               (_%stx223815%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223813%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223815%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223815%_))
          (let _%fixpoint223818%_ ((_%current223820%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223815%_))
            (let ((_%refined223822%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223820%_ _%refined223822%_)
                  '#!void
                  (_%fixpoint223818%_ _%refined223822%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223815%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223815%_))
          (let ((_%stx223824%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223815%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223824%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224361 (list gxc#::generate-runtime-empty::t))
            (__tmp224360 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224361
         '()
         __tmp224360
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223808%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223808%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224362
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
        (__make-atomic-promise __tmp224362)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223800%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223803%_
                (let ((__obj224341
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224341))
               (__tmp224363
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223803%_ _%stx223800%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224363
           gxc#current-compile-method
           _%self223803%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223760%_ _%stx223761%_)
        (let* ((_%g223763223773%_
                (lambda (_%g223764223770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223764223770%_))))
               (_%g223762223797%_
                (lambda (_%g223764223776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223764223776%_))
                      (let ((_%e223766223778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223764223776%_))))
                        (let ((_%hd223767223781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223766223778%_)))
                              (_%tl223768223783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223766223778%_))))
                          ((lambda (_%g223765223786%_)
                             (let ((__tmp224366
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223760%_
                                         _%stx223761%_))))
                                   (__tmp224364
                                    (let ((__tmp224365
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224365 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224366
                                gx#current-expander-phi
                                __tmp224364)))
                           _%tl223768223783%_)))
                      (_%g223763223773%_ _%g223764223776%_)))))
          (_%g223762223797%_ _%stx223761%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223699%_ _%stx223700%_)
        (let* ((_%g223702223716%_
                (lambda (_%g223703223713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223703223713%_))))
               (_%g223701223757%_
                (lambda (_%g223703223719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223703223719%_))
                      (let ((_%e223706223721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223703223719%_))))
                        (let ((_%hd223707223724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223706223721%_)))
                              (_%tl223708223726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223706223721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223708223726%_))
                              (let ((_%e223709223729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223708223726%_))))
                                (let ((_%hd223710223732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223709223729%_)))
                                      (_%tl223711223734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223709223729%_))))
                                  ((lambda (_%g223704223737%_
                                            _%g223705223738%_)
                                     (let* ((_%ctx223751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223705223738%_)))
                                            (_%code223753%_
                                             (##structure-ref
                                              _%ctx223751%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224367
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223699%_
                                                  _%code223753%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224367
                                        gx#current-expander-context
                                        _%ctx223751%_)))
                                   _%tl223711223734%_
                                   _%hd223710223732%_)))
                              (_%g223702223716%_ _%g223703223719%_))))
                      (_%g223702223716%_ _%g223703223719%_)))))
          (_%g223701223757%_ _%stx223700%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223506%_ _%stx223507%_)
        (letrec ((_%generate-e223509%_
                  (lambda (_%id223684%_)
                    (let* ((_%sym223686%_
                            (if (let ((__tmp224368
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224368))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223684%_))
                                '#f))
                           (_%$e223688%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223686%_))))
                      (if _%$e223688%_
                          ((lambda (_%klass223691%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223686%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223686%_
                                                     (cons (let ((__method224342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223691%_ 'typedecl))))
                     (if __method224342
                         (let ()
                           (declare (not safe))
                           (__method224342 _%klass223691%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223691%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223686%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223686%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223688%_)
                          (let ((_%$e223693%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223686%_))))
                            (if _%$e223693%_
                                ((lambda (_%type223696%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223686%_
                                      '" "
                                      _%type223696%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223696%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223686%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223686%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223696%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223686%_
                                                   (cons (let ((__method224343
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223696%_ 'typedecl))))
                   (if __method224343
                       (let ()
                         (declare (not safe))
                         (__method224343 _%type223696%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223696%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223693%_)
                                '(begin))))))))
          (let* ((_%__stx223954223955%_ _%stx223507%_)
                 (_%g223512223550%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223954223955%_)))))
            (let ((_%__kont223956223957%_
                   (lambda (_%g223514223666%_)
                     (_%generate-e223509%_ _%g223514223666%_)))
                  (_%__kont223958223959%_
                   (lambda (_%g223527223601%_)
                     (let ((_%types223627%_
                            (map _%generate-e223509%_
                                 (let ((__tmp224369
                                        (lambda (_%g223619223622%_
                                                 _%g223620223624%_)
                                          (cons _%g223619223622%_
                                                _%g223620223624%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224369
                                    '()
                                    _%g223527223601%_)))))
                       (cons 'begin _%types223627%_)))))
              (let ((_%__match224009224010%_
                     (lambda (_%e223528223555%_
                              _%hd223529223558%_
                              _%tl223530223560%_
                              _%e223531223563%_
                              _%hd223532223566%_
                              _%tl223533223568%_
                              _%__splice223960223961%_
                              _%target223534223571%_
                              _%tl223536223573%_)
                       (letrec ((_%loop223537223576%_
                                 (lambda (_%hd223535223579%_
                                          _%id223541223581%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223535223579%_))
                                       (let ((_%e223538223583%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223535223579%_))))
                                         (let ((_%lp-tl223540223588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223538223583%_)))
                                               (_%lp-hd223539223586%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223538223583%_))))
                                           (_%loop223537223576%_
                                            _%lp-tl223540223588%_
                                            (cons _%lp-hd223539223586%_
                                                  _%id223541223581%_))))
                                       (let ((_%id223542223591%_
                                              (reverse _%id223541223581%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223533223568%_))
                                             (let ((_%e223543223593%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223533223568%_))))
                                               (let ((_%tl223545223598%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223543223593%_)))
                                                     (_%hd223544223596%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223543223593%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223545223598%_))
                                                     (_%__kont223958223959%_
                                                      _%id223542223591%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223512223550%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223512223550%_))))))))
                         (_%loop223537223576%_ _%target223534223571%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223954223955%_))
                    (let ((_%e223515223634%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223954223955%_))))
                      (let ((_%tl223517223639%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223515223634%_)))
                            (_%hd223516223637%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223515223634%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223517223639%_))
                            (let ((_%e223518223642%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223517223639%_))))
                              (let ((_%tl223520223647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223518223642%_)))
                                    (_%hd223519223645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223518223642%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223519223645%_))
                                    (let ((_%e223521223650%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223519223645%_))))
                                      (let ((_%tl223523223655%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223521223650%_)))
                                            (_%hd223522223653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223521223650%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223523223655%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223520223647%_))
                                                (let ((_%e223524223658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223520223647%_))))
                                                  (let ((_%tl223526223663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223524223658%_)))
                                                        (_%hd223525223661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223524223658%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223526223663%_))
                                                        (_%__kont223956223957%_
                                                         _%hd223522223653%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223519223645%_))
                                                            (let ((_%__splice223960223961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223519223645%_
                              '0))))
                      (let ((_%tl223536223573%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223960223961%_ '1)))
                            (_%target223534223571%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223960223961%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223536223573%_))
                            (_%__match224009224010%_
                             _%e223515223634%_
                             _%hd223516223637%_
                             _%tl223517223639%_
                             _%e223518223642%_
                             _%hd223519223645%_
                             _%tl223520223647%_
                             _%__splice223960223961%_
                             _%target223534223571%_
                             _%tl223536223573%_)
                            (let ()
                              (declare (not safe))
                              (_%g223512223550%_)))))
                    (let () (declare (not safe)) (_%g223512223550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223519223645%_))
                                                    (let ((_%__splice223960223961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223519223645%_
                                                              '0))))
                                                      (let ((_%tl223536223573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223960223961%_ '1)))
                    (_%target223534223571%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223960223961%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223536223573%_))
                    (_%__match224009224010%_
                     _%e223515223634%_
                     _%hd223516223637%_
                     _%tl223517223639%_
                     _%e223518223642%_
                     _%hd223519223645%_
                     _%tl223520223647%_
                     _%__splice223960223961%_
                     _%target223534223571%_
                     _%tl223536223573%_)
                    (let () (declare (not safe)) (_%g223512223550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223512223550%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223519223645%_))
                                                (let ((_%__splice223960223961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223519223645%_
                                                          '0))))
                                                  (let ((_%tl223536223573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223960223961%_
                                                            '1)))
                                                        (_%target223534223571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223960223961%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223536223573%_))
                                                        (_%__match224009224010%_
                                                         _%e223515223634%_
                                                         _%hd223516223637%_
                                                         _%tl223517223639%_
                                                         _%e223518223642%_
                                                         _%hd223519223645%_
                                                         _%tl223520223647%_
                                                         _%__splice223960223961%_
                                                         _%target223534223571%_
                                                         _%tl223536223573%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223512223550%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223512223550%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223519223645%_))
                                        (let ((_%__splice223960223961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223519223645%_
                                                  '0))))
                                          (let ((_%tl223536223573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223960223961%_
                                                    '1)))
                                                (_%target223534223571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223960223961%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223536223573%_))
                                                (_%__match224009224010%_
                                                 _%e223515223634%_
                                                 _%hd223516223637%_
                                                 _%tl223517223639%_
                                                 _%e223518223642%_
                                                 _%hd223519223645%_
                                                 _%tl223520223647%_
                                                 _%__splice223960223961%_
                                                 _%target223534223571%_
                                                 _%tl223536223573%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223512223550%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223512223550%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223512223550%_)))))
                    (let () (declare (not safe)) (_%g223512223550%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self223059%_ _%stx223060%_)
        (let* ((_%__stx224012224013%_ _%stx223060%_)
               (_%g223064223166%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224012224013%_)))))
          (let ((_%__kont224014224015%_
                 (lambda (_%g223066223456%_
                          _%g223067223457%_
                          _%g223068223458%_
                          _%g223069223459%_
                          _%g223070223460%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223069223459%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223068223458%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223067223457%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g223066223456%_))
                                                 '())))))))
                (_%__kont224016224017%_
                 (lambda (_%g223119223282%_
                          _%g223120223283%_
                          _%g223121223284%_
                          _%g223122223285%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223121223284%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223120223283%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223119223282%_))
                                           (cons '#f '())))))))
                (_%__kont224018224019%_ (lambda () '(begin))))
            (let ((_%__match224147224148%_
                   (lambda (_%e223071223328%_
                            _%hd223072223331%_
                            _%tl223073223333%_
                            _%e223074223336%_
                            _%hd223075223339%_
                            _%tl223076223341%_
                            _%e223077223344%_
                            _%hd223078223347%_
                            _%tl223079223349%_
                            _%e223080223352%_
                            _%hd223081223355%_
                            _%tl223082223357%_
                            _%e223083223360%_
                            _%hd223084223363%_
                            _%tl223085223365%_
                            _%e223086223368%_
                            _%hd223087223371%_
                            _%tl223088223373%_
                            _%e223089223376%_
                            _%hd223090223379%_
                            _%tl223091223381%_
                            _%e223092223384%_
                            _%hd223093223387%_
                            _%tl223094223389%_
                            _%e223095223392%_
                            _%hd223096223395%_
                            _%tl223097223397%_
                            _%e223098223400%_
                            _%hd223099223403%_
                            _%tl223100223405%_
                            _%e223101223408%_
                            _%hd223102223411%_
                            _%tl223103223413%_
                            _%e223104223416%_
                            _%hd223105223419%_
                            _%tl223106223421%_
                            _%e223107223424%_
                            _%hd223108223427%_
                            _%tl223109223429%_
                            _%e223110223432%_
                            _%hd223111223435%_
                            _%tl223112223437%_
                            _%e223113223440%_
                            _%hd223114223443%_
                            _%tl223115223445%_
                            _%e223116223448%_
                            _%hd223117223451%_
                            _%tl223118223453%_)
                     (let ((_%g223066223456%_ _%hd223117223451%_)
                           (_%g223067223457%_ _%hd223108223427%_)
                           (_%g223068223458%_ _%hd223099223403%_)
                           (_%g223069223459%_ _%hd223090223379%_)
                           (_%g223070223460%_ _%hd223081223355%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g223070223460%_
                              'bind-method!))
                           (_%__kont224014224015%_
                            _%g223066223456%_
                            _%g223067223457%_
                            _%g223068223458%_
                            _%g223069223459%_
                            _%g223070223460%_)
                           (_%__kont224018224019%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224012224013%_))
                  (let ((_%e223071223328%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224012224013%_))))
                    (let ((_%tl223073223333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223071223328%_)))
                          (_%hd223072223331%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223071223328%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl223073223333%_))
                          (let ((_%e223074223336%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl223073223333%_))))
                            (let ((_%tl223076223341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223074223336%_)))
                                  (_%hd223075223339%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223074223336%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd223075223339%_))
                                  (let ((_%e223077223344%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd223075223339%_))))
                                    (let ((_%tl223079223349%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223077223344%_)))
                                          (_%hd223078223347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223077223344%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd223078223347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd223078223347%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223079223349%_))
                                                  (let ((_%e223080223352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223079223349%_))))
                                                    (let ((_%tl223082223357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223080223352%_)))
                                                          (_%hd223081223355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223080223352%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl223082223357%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl223076223341%_))
                      (let ((_%e223083223360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl223076223341%_))))
                        (let ((_%tl223085223365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223083223360%_)))
                              (_%hd223084223363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223083223360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd223084223363%_))
                              (let ((_%e223086223368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd223084223363%_))))
                                (let ((_%tl223088223373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223086223368%_)))
                                      (_%hd223087223371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223086223368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd223087223371%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd223087223371%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl223088223373%_))
                                              (let ((_%e223089223376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl223088223373%_))))
                                                (let ((_%tl223091223381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e223089223376%_)))
                                                      (_%hd223090223379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e223089223376%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223091223381%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl223085223365%_))
                                                          (let ((_%e223092223384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl223085223365%_))))
                    (let ((_%tl223094223389%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223092223384%_)))
                          (_%hd223093223387%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223092223384%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223093223387%_))
                          (let ((_%e223095223392%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223093223387%_))))
                            (let ((_%tl223097223397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223095223392%_)))
                                  (_%hd223096223395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223095223392%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd223096223395%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd223096223395%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl223097223397%_))
                                          (let ((_%e223098223400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl223097223397%_))))
                                            (let ((_%tl223100223405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223098223400%_)))
                                                  (_%hd223099223403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223098223400%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223100223405%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl223094223389%_))
                                                      (let ((_%e223101223408%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl223094223389%_))))
                (let ((_%tl223103223413%_
                       (let () (declare (not safe)) (##cdr _%e223101223408%_)))
                      (_%hd223102223411%_
                       (let ()
                         (declare (not safe))
                         (##car _%e223101223408%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd223102223411%_))
                      (let ((_%e223104223416%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd223102223411%_))))
                        (let ((_%tl223106223421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223104223416%_)))
                              (_%hd223105223419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223104223416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd223105223419%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd223105223419%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl223106223421%_))
                                      (let ((_%e223107223424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl223106223421%_))))
                                        (let ((_%tl223109223429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223107223424%_)))
                                              (_%hd223108223427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223107223424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223109223429%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223103223413%_))
                                                  (let ((_%e223110223432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223103223413%_))))
                                                    (let ((_%tl223112223437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223110223432%_)))
                                                          (_%hd223111223435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223110223432%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd223111223435%_))
                                                          (let ((_%e223113223440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd223111223435%_))))
                    (let ((_%tl223115223445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223113223440%_)))
                          (_%hd223114223443%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223113223440%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd223114223443%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd223114223443%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl223115223445%_))
                                  (let ((_%e223116223448%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl223115223445%_))))
                                    (let ((_%tl223118223453%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223116223448%_)))
                                          (_%hd223117223451%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223116223448%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl223118223453%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223112223437%_))
                                              (_%__match224147224148%_
                                               _%e223071223328%_
                                               _%hd223072223331%_
                                               _%tl223073223333%_
                                               _%e223074223336%_
                                               _%hd223075223339%_
                                               _%tl223076223341%_
                                               _%e223077223344%_
                                               _%hd223078223347%_
                                               _%tl223079223349%_
                                               _%e223080223352%_
                                               _%hd223081223355%_
                                               _%tl223082223357%_
                                               _%e223083223360%_
                                               _%hd223084223363%_
                                               _%tl223085223365%_
                                               _%e223086223368%_
                                               _%hd223087223371%_
                                               _%tl223088223373%_
                                               _%e223089223376%_
                                               _%hd223090223379%_
                                               _%tl223091223381%_
                                               _%e223092223384%_
                                               _%hd223093223387%_
                                               _%tl223094223389%_
                                               _%e223095223392%_
                                               _%hd223096223395%_
                                               _%tl223097223397%_
                                               _%e223098223400%_
                                               _%hd223099223403%_
                                               _%tl223100223405%_
                                               _%e223101223408%_
                                               _%hd223102223411%_
                                               _%tl223103223413%_
                                               _%e223104223416%_
                                               _%hd223105223419%_
                                               _%tl223106223421%_
                                               _%e223107223424%_
                                               _%hd223108223427%_
                                               _%tl223109223429%_
                                               _%e223110223432%_
                                               _%hd223111223435%_
                                               _%tl223112223437%_
                                               _%e223113223440%_
                                               _%hd223114223443%_
                                               _%tl223115223445%_
                                               _%e223116223448%_
                                               _%hd223117223451%_
                                               _%tl223118223453%_)
                                              (_%__kont224018224019%_))
                                          (_%__kont224018224019%_))))
                                  (_%__kont224018224019%_))
                              (_%__kont224018224019%_))
                          (_%__kont224018224019%_))))
                  (_%__kont224018224019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223103223413%_))
                                                      (if (let ((__tmp224370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224370 'bind-method!))
                  (let ((_%g223119223282%_ _%hd223108223427%_)
                        (_%g223120223283%_ _%hd223099223403%_)
                        (_%g223121223284%_ _%hd223090223379%_)
                        (_%g223122223285%_ _%hd223081223355%_))
                    (_%__kont224016224017%_
                     _%g223119223282%_
                     _%g223120223283%_
                     _%g223121223284%_
                     _%g223122223285%_))
                  (_%__kont224018224019%_))
              (_%__kont224018224019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont224018224019%_))))
                                      (_%__kont224018224019%_))
                                  (_%__kont224018224019%_))
                              (_%__kont224018224019%_))))
                      (_%__kont224018224019%_))))
              (_%__kont224018224019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont224018224019%_))))
                                          (_%__kont224018224019%_))
                                      (_%__kont224018224019%_))
                                  (_%__kont224018224019%_))))
                          (_%__kont224018224019%_))))
                  (_%__kont224018224019%_))
              (_%__kont224018224019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont224018224019%_))
                                          (_%__kont224018224019%_))
                                      (_%__kont224018224019%_))))
                              (_%__kont224018224019%_))))
                      (_%__kont224018224019%_))
                  (_%__kont224018224019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont224018224019%_))
                                              (_%__kont224018224019%_))
                                          (_%__kont224018224019%_))))
                                  (_%__kont224018224019%_))))
                          (_%__kont224018224019%_))))
                  (_%__kont224018224019%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222883%_ _%stx222884%_)
        (let* ((_%__stx224256224257%_ _%stx222884%_)
               (_%g222887222927%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224256224257%_)))))
          (let ((_%__kont224258224259%_
                 (lambda (_%g222889223033%_ _%g222890223034%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222890223034%_))
                               (cons _%g222889223033%_ '())))))
                (_%__kont224260224261%_
                 (lambda (_%g222912222956%_ _%g222913222957%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224256224257%_))
                (let ((_%e222891222977%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224256224257%_))))
                  (let ((_%tl222893222982%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222891222977%_)))
                        (_%hd222892222980%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222891222977%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222893222982%_))
                        (let ((_%e222894222985%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222893222982%_))))
                          (let ((_%tl222896222990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222894222985%_)))
                                (_%hd222895222988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222894222985%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222895222988%_))
                                (let ((_%e222897222993%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222895222988%_))))
                                  (let ((_%tl222899222998%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222897222993%_)))
                                        (_%hd222898222996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222897222993%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222898222996%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222898222996%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222899222998%_))
                                                (let ((_%e222900223001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222899222998%_))))
                                                  (let ((_%tl222902223006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222900223001%_)))
                                                        (_%hd222901223004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222900223001%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222902223006%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222896222990%_))
                                                            (let ((_%e222903223009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222896222990%_))))
                      (let ((_%tl222905223014%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222903223009%_)))
                            (_%hd222904223012%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222903223009%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222904223012%_))
                            (let ((_%e222906223017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222904223012%_))))
                              (let ((_%tl222908223022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222906223017%_)))
                                    (_%hd222907223020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222906223017%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222907223020%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222907223020%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222908223022%_))
                                            (let ((_%e222909223025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222908223022%_))))
                                              (let ((_%tl222911223030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222909223025%_)))
                                                    (_%hd222910223028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222909223025%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222911223030%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222905223014%_))
                                                        (_%__kont224258224259%_
                                                         _%hd222910223028%_
                                                         _%hd222901223004%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222887222927%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222905223014%_))
                                                        (_%__kont224260224261%_
                                                         _%hd222904223012%_
                                                         _%hd222895222988%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222887222927%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222905223014%_))
                                                (_%__kont224260224261%_
                                                 _%hd222904223012%_
                                                 _%hd222895222988%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222887222927%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222905223014%_))
                                            (_%__kont224260224261%_
                                             _%hd222904223012%_
                                             _%hd222895222988%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222887222927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222905223014%_))
                                        (_%__kont224260224261%_
                                         _%hd222904223012%_
                                         _%hd222895222988%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222887222927%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222905223014%_))
                                (_%__kont224260224261%_
                                 _%hd222904223012%_
                                 _%hd222895222988%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222887222927%_))))))
                    (let () (declare (not safe)) (_%g222887222927%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222896222990%_))
                    (let ((_%e222920222948%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222896222990%_))))
                      (let ((_%tl222922222953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222920222948%_)))
                            (_%hd222921222951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222920222948%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222922222953%_))
                            (_%__kont224260224261%_
                             _%hd222921222951%_
                             _%hd222895222988%_)
                            (let ()
                              (declare (not safe))
                              (_%g222887222927%_)))))
                    (let () (declare (not safe)) (_%g222887222927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222896222990%_))
                                                    (let ((_%e222920222948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222896222990%_))))
                                                      (let ((_%tl222922222953%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222920222948%_)))
                    (_%hd222921222951%_
                     (let () (declare (not safe)) (##car _%e222920222948%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222922222953%_))
                    (_%__kont224260224261%_
                     _%hd222921222951%_
                     _%hd222895222988%_)
                    (let () (declare (not safe)) (_%g222887222927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222887222927%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222896222990%_))
                                                (let ((_%e222920222948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222896222990%_))))
                                                  (let ((_%tl222922222953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222920222948%_)))
                                                        (_%hd222921222951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222920222948%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222922222953%_))
                                                        (_%__kont224260224261%_
                                                         _%hd222921222951%_
                                                         _%hd222895222988%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222887222927%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222887222927%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222896222990%_))
                                            (let ((_%e222920222948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222896222990%_))))
                                              (let ((_%tl222922222953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222920222948%_)))
                                                    (_%hd222921222951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222920222948%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222922222953%_))
                                                    (_%__kont224260224261%_
                                                     _%hd222921222951%_
                                                     _%hd222895222988%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222887222927%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222887222927%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222896222990%_))
                                    (let ((_%e222920222948%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222896222990%_))))
                                      (let ((_%tl222922222953%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222920222948%_)))
                                            (_%hd222921222951%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222920222948%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222922222953%_))
                                            (_%__kont224260224261%_
                                             _%hd222921222951%_
                                             _%hd222895222988%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222887222927%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222887222927%_))))))
                        (let () (declare (not safe)) (_%g222887222927%_)))))
                (let () (declare (not safe)) (_%g222887222927%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222870%_)
        (let ((_%self222873%_ _%self222870%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222873%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222644%_)
        (let* ((_%self222647%_ _%self222644%_)
               (_%self222656222672%_ _%self222647%_)
               (_%E222658222675%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222656222672%_
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
               (_%K222659222690%_
                (lambda (_%methods222678%_
                         _%metaclass222679%_
                         _%system?222680%_
                         _%final?222681%_
                         _%struct?222682%_
                         _%constructor222683%_
                         _%fields222684%_
                         _%slots222685%_
                         _%precendence-list222686%_
                         _%super222687%_
                         _%id222688%_)
                  (cons '@class
                        (cons _%id222688%_
                              (cons _%super222687%_
                                    (cons _%precendence-list222686%_
                                          (cons _%slots222685%_
                                                (cons _%fields222684%_
                                                      (cons _%constructor222683%_
                                                            (cons _%struct?222682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222681%_
                                (cons _%system?222680%_
                                      (cons _%metaclass222679%_
                                            (cons (if _%methods222678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222678%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222660222693%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '1 '#f '#f)))
               (_%id222696%_ _%e222660222693%_)
               (_%e222661222698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '2 '#f '#f)))
               (_%super222701%_ _%e222661222698%_)
               (_%e222662222703%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '3 '#f '#f)))
               (_%precendence-list222706%_ _%e222662222703%_)
               (_%e222663222708%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '4 '#f '#f)))
               (_%slots222711%_ _%e222663222708%_)
               (_%e222664222713%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '5 '#f '#f)))
               (_%fields222716%_ _%e222664222713%_)
               (_%e222665222718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '6 '#f '#f)))
               (_%constructor222721%_ _%e222665222718%_)
               (_%e222666222723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '7 '#f '#f)))
               (_%struct?222726%_ _%e222666222723%_)
               (_%e222667222728%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '8 '#f '#f)))
               (_%final?222731%_ _%e222667222728%_)
               (_%e222668222733%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222656222672%_ '9 '#f '#f)))
               (_%system?222736%_ _%e222668222733%_)
               (_%e222669222738%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222656222672%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222741%_ _%e222669222738%_)
               (_%e222670222743%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222656222672%_
                   '11
                   '#f
                   '#f)))
               (_%methods222746%_ _%e222670222743%_))
          (_%K222659222690%_
           _%methods222746%_
           _%metaclass222741%_
           _%system?222736%_
           _%final?222731%_
           _%struct?222726%_
           _%constructor222721%_
           _%fields222716%_
           _%slots222711%_
           _%precendence-list222706%_
           _%super222701%_
           _%id222696%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222509%_)
        (let ((_%self222512%_ _%self222509%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222512%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222374%_)
        (let ((_%self222377%_ _%self222374%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222377%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222239%_)
        (let ((_%self222242%_ _%self222239%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222242%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222242%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222242%_
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
      (lambda (_%self222104%_)
        (let ((_%self222107%_ _%self222104%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222107%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222107%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222107%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221969%_)
        (let ((_%self221972%_ _%self221969%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221972%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221972%_
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
      (lambda (_%self221783%_)
        (let* ((_%self221786%_ _%self221783%_)
               (_%self221795221804%_ _%self221786%_)
               (_%E221797221807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221795221804%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221798221826%_
                (lambda (_%dispatch221810%_
                         _%arity221811%_
                         _%signature221812%_)
                  (if _%signature221812%_
                      (let ((_%signature221814%_ _%signature221812%_))
                        (cons '@lambda
                              (cons _%arity221811%_
                                    (cons _%dispatch221810%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221814%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221814%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221814%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221814%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221814%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221811%_
                                  (cons _%dispatch221810%_ '()))))))
               (_%e221799221829%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221795221804%_ '1 '#f '#f)))
               (_%e221800221832%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221795221804%_ '2 '#f '#f)))
               (_%signature221835%_ _%e221800221832%_)
               (_%e221801221837%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221795221804%_ '3 '#f '#f)))
               (_%arity221840%_ _%e221801221837%_)
               (_%e221802221842%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221795221804%_ '4 '#f '#f)))
               (_%dispatch221845%_ _%e221802221842%_))
          (_%K221798221826%_
           _%dispatch221845%_
           _%arity221840%_
           _%signature221835%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221643%_)
        (let ((_%self221646%_ _%self221643%_))
          (letrec ((_%clause-e221657%_
                    (lambda (_%clause221659%_)
                      (cdr (let ((__method224344
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221659%_
                                     'typedecl))))
                             (if __method224344
                                 (let ()
                                   (declare (not safe))
                                   (__method224344 _%clause221659%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221659%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221657%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221646%_
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
      (lambda (_%self221508%_)
        (let ((_%self221511%_ _%self221508%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221511%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221511%_
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
      (lambda (_%self221373%_)
        (let ((_%self221376%_ _%self221373%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221376%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221376%_
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
      (lambda (_%self221238%_)
        (let ((_%self221241%_ _%self221238%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221241%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
