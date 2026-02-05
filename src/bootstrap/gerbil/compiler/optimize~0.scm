(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770327935)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp224301
                   (let ((__obj224295
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
                       (gxc#optimizer-info:::init! __obj224295))
                     __obj224295)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp224301)))))
    (define gxc#optimize!
      (lambda (_%ctx223903%_)
        (let ((__tmp224303
               (lambda ()
                 (let ((__tmp224305
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx223903%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx223903%_)
                          (let ((__tmp224307
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp224306
                                 (##structure-ref
                                  _%ctx223903%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224307 __tmp224306 '#t))
                          (let ((_%code223907%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx223903%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx223903%_
                             _%code223907%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp224304
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224305
                    gxc#current-compile-local-type
                    __tmp224304))))
              (__tmp224302 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224303
           gxc#current-compile-mutators
           __tmp224302))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx223889%_)
        (letrec ((_%load-it!223891%_
                  (lambda (_%id223901%_)
                    (if (let ((__tmp224308
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp224308 _%id223901%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id223901%_)
                          (let ((__tmp224309
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp224309 _%id223901%_ '#t)))))))
          (let* ((_%modid223893%_
                  (##structure-ref
                   _%ctx223889%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str223895%_ (symbol->string _%modid223893%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str223895%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str223895%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223891%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!223891%_
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
      (lambda (_%ctx223826%_)
        (letrec* ((_%deps223828%_
                   (let* ((_%imports223879%_
                           (##structure-ref
                            _%ctx223826%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e223881%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx223826%_))))
                     (if _%$e223881%_
                         ((lambda (_%g223883223885%_)
                            (cons _%g223883223885%_ _%imports223879%_))
                          _%$e223881%_)
                         _%imports223879%_))))
          (let _%lp223830%_ ((_%rest223832%_ _%deps223828%_))
            (let* ((_%rest223833223841%_ _%rest223832%_)
                   (_%else223835223849%_ (lambda () '#!void))
                   (_%K223837223867%_
                    (lambda (_%rest223852%_ _%hd223853%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd223853%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp224311
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp224310
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223853%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp224311 __tmp224310))
                                '#!void
                                (begin
                                  (let ((_%$e223856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd223853%_))))
                                    (if _%$e223856%_
                                        ((lambda (_%pre223859%_)
                                           (_%lp223830%_
                                            (cons _%pre223859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd223853%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e223856%_)
                                        (_%lp223830%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223853%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd223853%_)))
                            (_%lp223830%_ _%rest223852%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd223853%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp224313
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp224312
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd223853%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp224313 __tmp224312))
                                    '#!void
                                    (begin
                                      (_%lp223830%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd223853%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd223853%_)))
                                (_%lp223830%_ _%rest223852%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd223853%_
                                     'gx#module-import::t))
                                  (_%lp223830%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd223853%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest223852%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd223853%_
                                         'gx#module-export::t))
                                      (_%lp223830%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd223853%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest223852%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd223853%_
                                             'gx#import-set::t))
                                          (_%lp223830%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd223853%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest223852%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd223853%_))))))))))
              (if (pair? _%rest223833223841%_)
                  (let ((_%hd223838223870%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223833223841%_)))
                        (_%tl223839223872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223833223841%_))))
                    (let* ((_%hd223875%_ _%hd223838223870%_)
                           (_%rest223877%_ _%tl223839223872%_))
                      (_%K223837223867%_ _%rest223877%_ _%hd223875%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx223806%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx223806%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx223806%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht223808%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id223810%_
                    (##structure-ref
                     _%ctx223806%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod223812%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht223808%_ _%id223810%_)))
                   (_%$e223815%_ _%mod223812%_))
              (if _%$e223815%_
                  _%$e223815%_
                  (let* ((_%mod223818%_
                          (gxc#optimizer-import-ssxi _%ctx223806%_))
                         (_%val223823%_
                          (let ((_%$e223820%_ _%mod223818%_))
                            (if _%$e223820%_ _%$e223820%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht223808%_ _%id223810%_ _%val223823%_))
                    _%val223823%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx223804%_)
        (if (##structure-ref _%ctx223804%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx223804%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id223782%_)
        (letrec ((_%catch-e223784%_
                  (lambda (_%exn223802%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn223802%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn223802%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id223782%_))))
                    '#f))
                 (_%import-e223785%_
                  (lambda ()
                    (let* ((_%str-id223788%_
                            (let ((__tmp224314
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id223782%_))))
                              (declare (not safe))
                              (##string-append __tmp224314 '".ssxi")))
                           (_%artefact-path223795%_
                            (let ((_%odir223789223791%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir223789223791%_
                                  (let ((_%odir223793%_ _%odir223789223791%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id223788%_
                                        '".ss"))
                                     _%odir223793%_))
                                  '#f)))
                           (_%library-path223797%_
                            (let ((__tmp224315
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id223788%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp224315)))
                           (_%ssxi-path223799%_
                            (if (and _%artefact-path223795%_
                                     (file-exists? _%artefact-path223795%_))
                                _%artefact-path223795%_
                                _%library-path223797%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path223799%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path223799%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e223784%_ _%import-e223785%_)))))
    (define gxc#optimize-source
      (lambda (_%stx223767%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx223767%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx223767%_))
        (let* ((_%stx223769%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx223767%_)))
               (_%stx223771%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx223769%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx223771%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx223771%_))
          (let _%fixpoint223774%_ ((_%current223776%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx223771%_))
            (let ((_%refined223778%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current223776%_ _%refined223778%_)
                  '#!void
                  (_%fixpoint223774%_ _%refined223778%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx223771%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx223771%_))
          (let ((_%stx223780%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx223771%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx223780%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp224317 (list gxc#::generate-runtime-empty::t))
            (__tmp224316 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp224317
         '()
         __tmp224316
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args223764%_
        (apply make-instance gxc#::generate-ssxi::t _%$args223764%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp224318
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
        (__make-atomic-promise __tmp224318)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx223756%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self223759%_
                (let ((__obj224297
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj224297))
               (__tmp224319
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223759%_ _%stx223756%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224319
           gxc#current-compile-method
           _%self223759%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self223716%_ _%stx223717%_)
        (let* ((_%g223719223729%_
                (lambda (_%g223720223726%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223720223726%_))))
               (_%g223718223753%_
                (lambda (_%g223720223732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223720223732%_))
                      (let ((_%e223722223734%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223720223732%_))))
                        (let ((_%hd223723223737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223722223734%_)))
                              (_%tl223724223739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223722223734%_))))
                          ((lambda (_%g223721223742%_)
                             (let ((__tmp224322
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self223716%_
                                         _%stx223717%_))))
                                   (__tmp224320
                                    (let ((__tmp224321
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp224321 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224322
                                gx#current-expander-phi
                                __tmp224320)))
                           _%tl223724223739%_)))
                      (_%g223719223729%_ _%g223720223732%_)))))
          (_%g223718223753%_ _%stx223717%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self223655%_ _%stx223656%_)
        (let* ((_%g223658223672%_
                (lambda (_%g223659223669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g223659223669%_))))
               (_%g223657223713%_
                (lambda (_%g223659223675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g223659223675%_))
                      (let ((_%e223662223677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g223659223675%_))))
                        (let ((_%hd223663223680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223662223677%_)))
                              (_%tl223664223682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223662223677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl223664223682%_))
                              (let ((_%e223665223685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl223664223682%_))))
                                (let ((_%hd223666223688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223665223685%_)))
                                      (_%tl223667223690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223665223685%_))))
                                  ((lambda (_%g223660223693%_
                                            _%g223661223694%_)
                                     (let* ((_%ctx223707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g223661223694%_)))
                                            (_%code223709%_
                                             (##structure-ref
                                              _%ctx223707%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp224323
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self223655%_
                                                  _%code223709%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224323
                                        gx#current-expander-context
                                        _%ctx223707%_)))
                                   _%tl223667223690%_
                                   _%hd223666223688%_)))
                              (_%g223658223672%_ _%g223659223675%_))))
                      (_%g223658223672%_ _%g223659223675%_)))))
          (_%g223657223713%_ _%stx223656%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self223462%_ _%stx223463%_)
        (letrec ((_%generate-e223465%_
                  (lambda (_%id223640%_)
                    (let* ((_%sym223642%_
                            (if (let ((__tmp224324
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp224324))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id223640%_))
                                '#f))
                           (_%$e223644%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym223642%_))))
                      (if _%$e223644%_
                          ((lambda (_%klass223647%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym223642%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym223642%_
                                                     (cons (let ((__method224298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass223647%_ 'typedecl))))
                     (if __method224298
                         (let ()
                           (declare (not safe))
                           (__method224298 _%klass223647%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass223647%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym223642%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym223642%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e223644%_)
                          (let ((_%$e223649%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym223642%_))))
                            (if _%$e223649%_
                                ((lambda (_%type223652%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym223642%_
                                      '" "
                                      _%type223652%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type223652%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym223642%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym223642%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type223652%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym223642%_
                                                   (cons (let ((__method224299
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type223652%_ 'typedecl))))
                   (if __method224299
                       (let ()
                         (declare (not safe))
                         (__method224299 _%type223652%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type223652%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e223649%_)
                                '(begin))))))))
          (let* ((_%__stx223910223911%_ _%stx223463%_)
                 (_%g223468223506%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223910223911%_)))))
            (let ((_%__kont223912223913%_
                   (lambda (_%g223470223622%_)
                     (_%generate-e223465%_ _%g223470223622%_)))
                  (_%__kont223914223915%_
                   (lambda (_%g223483223557%_)
                     (let ((_%types223583%_
                            (map _%generate-e223465%_
                                 (let ((__tmp224325
                                        (lambda (_%g223575223578%_
                                                 _%g223576223580%_)
                                          (cons _%g223575223578%_
                                                _%g223576223580%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224325
                                    '()
                                    _%g223483223557%_)))))
                       (cons 'begin _%types223583%_)))))
              (let ((_%__match223965223966%_
                     (lambda (_%e223484223511%_
                              _%hd223485223514%_
                              _%tl223486223516%_
                              _%e223487223519%_
                              _%hd223488223522%_
                              _%tl223489223524%_
                              _%__splice223916223917%_
                              _%target223490223527%_
                              _%tl223492223529%_)
                       (letrec ((_%loop223493223532%_
                                 (lambda (_%hd223491223535%_
                                          _%id223497223537%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd223491223535%_))
                                       (let ((_%e223494223539%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd223491223535%_))))
                                         (let ((_%lp-tl223496223544%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e223494223539%_)))
                                               (_%lp-hd223495223542%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e223494223539%_))))
                                           (_%loop223493223532%_
                                            _%lp-tl223496223544%_
                                            (cons _%lp-hd223495223542%_
                                                  _%id223497223537%_))))
                                       (let ((_%id223498223547%_
                                              (reverse _%id223497223537%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl223489223524%_))
                                             (let ((_%e223499223549%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl223489223524%_))))
                                               (let ((_%tl223501223554%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e223499223549%_)))
                                                     (_%hd223500223552%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e223499223549%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl223501223554%_))
                                                     (_%__kont223914223915%_
                                                      _%id223498223547%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g223468223506%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g223468223506%_))))))))
                         (_%loop223493223532%_ _%target223490223527%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223910223911%_))
                    (let ((_%e223471223590%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223910223911%_))))
                      (let ((_%tl223473223595%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223471223590%_)))
                            (_%hd223472223593%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223471223590%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl223473223595%_))
                            (let ((_%e223474223598%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl223473223595%_))))
                              (let ((_%tl223476223603%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e223474223598%_)))
                                    (_%hd223475223601%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e223474223598%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd223475223601%_))
                                    (let ((_%e223477223606%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd223475223601%_))))
                                      (let ((_%tl223479223611%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223477223606%_)))
                                            (_%hd223478223609%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223477223606%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl223479223611%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl223476223603%_))
                                                (let ((_%e223480223614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl223476223603%_))))
                                                  (let ((_%tl223482223619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e223480223614%_)))
                                                        (_%hd223481223617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e223480223614%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223482223619%_))
                                                        (_%__kont223912223913%_
                                                         _%hd223478223609%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd223475223601%_))
                                                            (let ((_%__splice223916223917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd223475223601%_
                              '0))))
                      (let ((_%tl223492223529%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223916223917%_ '1)))
                            (_%target223490223527%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice223916223917%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl223492223529%_))
                            (_%__match223965223966%_
                             _%e223471223590%_
                             _%hd223472223593%_
                             _%tl223473223595%_
                             _%e223474223598%_
                             _%hd223475223601%_
                             _%tl223476223603%_
                             _%__splice223916223917%_
                             _%target223490223527%_
                             _%tl223492223529%_)
                            (let ()
                              (declare (not safe))
                              (_%g223468223506%_)))))
                    (let () (declare (not safe)) (_%g223468223506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd223475223601%_))
                                                    (let ((_%__splice223916223917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd223475223601%_
                                                              '0))))
                                                      (let ((_%tl223492223529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice223916223917%_ '1)))
                    (_%target223490223527%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice223916223917%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl223492223529%_))
                    (_%__match223965223966%_
                     _%e223471223590%_
                     _%hd223472223593%_
                     _%tl223473223595%_
                     _%e223474223598%_
                     _%hd223475223601%_
                     _%tl223476223603%_
                     _%__splice223916223917%_
                     _%target223490223527%_
                     _%tl223492223529%_)
                    (let () (declare (not safe)) (_%g223468223506%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g223468223506%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd223475223601%_))
                                                (let ((_%__splice223916223917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd223475223601%_
                                                          '0))))
                                                  (let ((_%tl223492223529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223916223917%_
                                                            '1)))
                                                        (_%target223490223527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice223916223917%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl223492223529%_))
                                                        (_%__match223965223966%_
                                                         _%e223471223590%_
                                                         _%hd223472223593%_
                                                         _%tl223473223595%_
                                                         _%e223474223598%_
                                                         _%hd223475223601%_
                                                         _%tl223476223603%_
                                                         _%__splice223916223917%_
                                                         _%target223490223527%_
                                                         _%tl223492223529%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g223468223506%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223468223506%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd223475223601%_))
                                        (let ((_%__splice223916223917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd223475223601%_
                                                  '0))))
                                          (let ((_%tl223492223529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223916223917%_
                                                    '1)))
                                                (_%target223490223527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice223916223917%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl223492223529%_))
                                                (_%__match223965223966%_
                                                 _%e223471223590%_
                                                 _%hd223472223593%_
                                                 _%tl223473223595%_
                                                 _%e223474223598%_
                                                 _%hd223475223601%_
                                                 _%tl223476223603%_
                                                 _%__splice223916223917%_
                                                 _%target223490223527%_
                                                 _%tl223492223529%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g223468223506%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g223468223506%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g223468223506%_)))))
                    (let () (declare (not safe)) (_%g223468223506%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self223015%_ _%stx223016%_)
        (let* ((_%__stx223968223969%_ _%stx223016%_)
               (_%g223020223122%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223968223969%_)))))
          (let ((_%__kont223970223971%_
                 (lambda (_%g223022223412%_
                          _%g223023223413%_
                          _%g223024223414%_
                          _%g223025223415%_
                          _%g223026223416%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223025223415%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223024223414%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223023223413%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g223022223412%_))
                                                 '())))))))
                (_%__kont223972223973%_
                 (lambda (_%g223075223238%_
                          _%g223076223239%_
                          _%g223077223240%_
                          _%g223078223241%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g223077223240%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g223076223239%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g223075223238%_))
                                           (cons '#f '())))))))
                (_%__kont223974223975%_ (lambda () '(begin))))
            (let ((_%__match224103224104%_
                   (lambda (_%e223027223284%_
                            _%hd223028223287%_
                            _%tl223029223289%_
                            _%e223030223292%_
                            _%hd223031223295%_
                            _%tl223032223297%_
                            _%e223033223300%_
                            _%hd223034223303%_
                            _%tl223035223305%_
                            _%e223036223308%_
                            _%hd223037223311%_
                            _%tl223038223313%_
                            _%e223039223316%_
                            _%hd223040223319%_
                            _%tl223041223321%_
                            _%e223042223324%_
                            _%hd223043223327%_
                            _%tl223044223329%_
                            _%e223045223332%_
                            _%hd223046223335%_
                            _%tl223047223337%_
                            _%e223048223340%_
                            _%hd223049223343%_
                            _%tl223050223345%_
                            _%e223051223348%_
                            _%hd223052223351%_
                            _%tl223053223353%_
                            _%e223054223356%_
                            _%hd223055223359%_
                            _%tl223056223361%_
                            _%e223057223364%_
                            _%hd223058223367%_
                            _%tl223059223369%_
                            _%e223060223372%_
                            _%hd223061223375%_
                            _%tl223062223377%_
                            _%e223063223380%_
                            _%hd223064223383%_
                            _%tl223065223385%_
                            _%e223066223388%_
                            _%hd223067223391%_
                            _%tl223068223393%_
                            _%e223069223396%_
                            _%hd223070223399%_
                            _%tl223071223401%_
                            _%e223072223404%_
                            _%hd223073223407%_
                            _%tl223074223409%_)
                     (let ((_%g223022223412%_ _%hd223073223407%_)
                           (_%g223023223413%_ _%hd223064223383%_)
                           (_%g223024223414%_ _%hd223055223359%_)
                           (_%g223025223415%_ _%hd223046223335%_)
                           (_%g223026223416%_ _%hd223037223311%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g223026223416%_
                              'bind-method!))
                           (_%__kont223970223971%_
                            _%g223022223412%_
                            _%g223023223413%_
                            _%g223024223414%_
                            _%g223025223415%_
                            _%g223026223416%_)
                           (_%__kont223974223975%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223968223969%_))
                  (let ((_%e223027223284%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223968223969%_))))
                    (let ((_%tl223029223289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223027223284%_)))
                          (_%hd223028223287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223027223284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl223029223289%_))
                          (let ((_%e223030223292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl223029223289%_))))
                            (let ((_%tl223032223297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223030223292%_)))
                                  (_%hd223031223295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223030223292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd223031223295%_))
                                  (let ((_%e223033223300%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd223031223295%_))))
                                    (let ((_%tl223035223305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223033223300%_)))
                                          (_%hd223034223303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223033223300%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd223034223303%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd223034223303%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223035223305%_))
                                                  (let ((_%e223036223308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223035223305%_))))
                                                    (let ((_%tl223038223313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223036223308%_)))
                                                          (_%hd223037223311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223036223308%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl223038223313%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl223032223297%_))
                      (let ((_%e223039223316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl223032223297%_))))
                        (let ((_%tl223041223321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223039223316%_)))
                              (_%hd223040223319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223039223316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd223040223319%_))
                              (let ((_%e223042223324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd223040223319%_))))
                                (let ((_%tl223044223329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e223042223324%_)))
                                      (_%hd223043223327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e223042223324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd223043223327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd223043223327%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl223044223329%_))
                                              (let ((_%e223045223332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl223044223329%_))))
                                                (let ((_%tl223047223337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e223045223332%_)))
                                                      (_%hd223046223335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e223045223332%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223047223337%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl223041223321%_))
                                                          (let ((_%e223048223340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl223041223321%_))))
                    (let ((_%tl223050223345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223048223340%_)))
                          (_%hd223049223343%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223048223340%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223049223343%_))
                          (let ((_%e223051223348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223049223343%_))))
                            (let ((_%tl223053223353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223051223348%_)))
                                  (_%hd223052223351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223051223348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd223052223351%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd223052223351%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl223053223353%_))
                                          (let ((_%e223054223356%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl223053223353%_))))
                                            (let ((_%tl223056223361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e223054223356%_)))
                                                  (_%hd223055223359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e223054223356%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223056223361%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl223050223345%_))
                                                      (let ((_%e223057223364%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl223050223345%_))))
                (let ((_%tl223059223369%_
                       (let () (declare (not safe)) (##cdr _%e223057223364%_)))
                      (_%hd223058223367%_
                       (let ()
                         (declare (not safe))
                         (##car _%e223057223364%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd223058223367%_))
                      (let ((_%e223060223372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd223058223367%_))))
                        (let ((_%tl223062223377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e223060223372%_)))
                              (_%hd223061223375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e223060223372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd223061223375%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd223061223375%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl223062223377%_))
                                      (let ((_%e223063223380%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl223062223377%_))))
                                        (let ((_%tl223065223385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e223063223380%_)))
                                              (_%hd223064223383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e223063223380%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223065223385%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl223059223369%_))
                                                  (let ((_%e223066223388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl223059223369%_))))
                                                    (let ((_%tl223068223393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e223066223388%_)))
                                                          (_%hd223067223391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e223066223388%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd223067223391%_))
                                                          (let ((_%e223069223396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd223067223391%_))))
                    (let ((_%tl223071223401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e223069223396%_)))
                          (_%hd223070223399%_
                           (let ()
                             (declare (not safe))
                             (##car _%e223069223396%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd223070223399%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd223070223399%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl223071223401%_))
                                  (let ((_%e223072223404%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl223071223401%_))))
                                    (let ((_%tl223074223409%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e223072223404%_)))
                                          (_%hd223073223407%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e223072223404%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl223074223409%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl223068223393%_))
                                              (_%__match224103224104%_
                                               _%e223027223284%_
                                               _%hd223028223287%_
                                               _%tl223029223289%_
                                               _%e223030223292%_
                                               _%hd223031223295%_
                                               _%tl223032223297%_
                                               _%e223033223300%_
                                               _%hd223034223303%_
                                               _%tl223035223305%_
                                               _%e223036223308%_
                                               _%hd223037223311%_
                                               _%tl223038223313%_
                                               _%e223039223316%_
                                               _%hd223040223319%_
                                               _%tl223041223321%_
                                               _%e223042223324%_
                                               _%hd223043223327%_
                                               _%tl223044223329%_
                                               _%e223045223332%_
                                               _%hd223046223335%_
                                               _%tl223047223337%_
                                               _%e223048223340%_
                                               _%hd223049223343%_
                                               _%tl223050223345%_
                                               _%e223051223348%_
                                               _%hd223052223351%_
                                               _%tl223053223353%_
                                               _%e223054223356%_
                                               _%hd223055223359%_
                                               _%tl223056223361%_
                                               _%e223057223364%_
                                               _%hd223058223367%_
                                               _%tl223059223369%_
                                               _%e223060223372%_
                                               _%hd223061223375%_
                                               _%tl223062223377%_
                                               _%e223063223380%_
                                               _%hd223064223383%_
                                               _%tl223065223385%_
                                               _%e223066223388%_
                                               _%hd223067223391%_
                                               _%tl223068223393%_
                                               _%e223069223396%_
                                               _%hd223070223399%_
                                               _%tl223071223401%_
                                               _%e223072223404%_
                                               _%hd223073223407%_
                                               _%tl223074223409%_)
                                              (_%__kont223974223975%_))
                                          (_%__kont223974223975%_))))
                                  (_%__kont223974223975%_))
                              (_%__kont223974223975%_))
                          (_%__kont223974223975%_))))
                  (_%__kont223974223975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl223059223369%_))
                                                      (if (let ((__tmp224326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp224326 'bind-method!))
                  (let ((_%g223075223238%_ _%hd223064223383%_)
                        (_%g223076223239%_ _%hd223055223359%_)
                        (_%g223077223240%_ _%hd223046223335%_)
                        (_%g223078223241%_ _%hd223037223311%_))
                    (_%__kont223972223973%_
                     _%g223075223238%_
                     _%g223076223239%_
                     _%g223077223240%_
                     _%g223078223241%_))
                  (_%__kont223974223975%_))
              (_%__kont223974223975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223974223975%_))))
                                      (_%__kont223974223975%_))
                                  (_%__kont223974223975%_))
                              (_%__kont223974223975%_))))
                      (_%__kont223974223975%_))))
              (_%__kont223974223975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223974223975%_))))
                                          (_%__kont223974223975%_))
                                      (_%__kont223974223975%_))
                                  (_%__kont223974223975%_))))
                          (_%__kont223974223975%_))))
                  (_%__kont223974223975%_))
              (_%__kont223974223975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223974223975%_))
                                          (_%__kont223974223975%_))
                                      (_%__kont223974223975%_))))
                              (_%__kont223974223975%_))))
                      (_%__kont223974223975%_))
                  (_%__kont223974223975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223974223975%_))
                                              (_%__kont223974223975%_))
                                          (_%__kont223974223975%_))))
                                  (_%__kont223974223975%_))))
                          (_%__kont223974223975%_))))
                  (_%__kont223974223975%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self222839%_ _%stx222840%_)
        (let* ((_%__stx224212224213%_ _%stx222840%_)
               (_%g222843222883%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224212224213%_)))))
          (let ((_%__kont224214224215%_
                 (lambda (_%g222845222989%_ _%g222846222990%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g222846222990%_))
                               (cons _%g222845222989%_ '())))))
                (_%__kont224216224217%_
                 (lambda (_%g222868222912%_ _%g222869222913%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx224212224213%_))
                (let ((_%e222847222933%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx224212224213%_))))
                  (let ((_%tl222849222938%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222847222933%_)))
                        (_%hd222848222936%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222847222933%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl222849222938%_))
                        (let ((_%e222850222941%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl222849222938%_))))
                          (let ((_%tl222852222946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e222850222941%_)))
                                (_%hd222851222944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e222850222941%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd222851222944%_))
                                (let ((_%e222853222949%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd222851222944%_))))
                                  (let ((_%tl222855222954%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222853222949%_)))
                                        (_%hd222854222952%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222853222949%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd222854222952%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd222854222952%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222855222954%_))
                                                (let ((_%e222856222957%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222855222954%_))))
                                                  (let ((_%tl222858222962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222856222957%_)))
                                                        (_%hd222857222960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222856222957%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222858222962%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222852222946%_))
                                                            (let ((_%e222859222965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222852222946%_))))
                      (let ((_%tl222861222970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222859222965%_)))
                            (_%hd222860222968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222859222965%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd222860222968%_))
                            (let ((_%e222862222973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd222860222968%_))))
                              (let ((_%tl222864222978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222862222973%_)))
                                    (_%hd222863222976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222862222973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222863222976%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd222863222976%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222864222978%_))
                                            (let ((_%e222865222981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222864222978%_))))
                                              (let ((_%tl222867222986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222865222981%_)))
                                                    (_%hd222866222984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222865222981%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222867222986%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222861222970%_))
                                                        (_%__kont224214224215%_
                                                         _%hd222866222984%_
                                                         _%hd222857222960%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222843222883%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222861222970%_))
                                                        (_%__kont224216224217%_
                                                         _%hd222860222968%_
                                                         _%hd222851222944%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222843222883%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl222861222970%_))
                                                (_%__kont224216224217%_
                                                 _%hd222860222968%_
                                                 _%hd222851222944%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222843222883%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222861222970%_))
                                            (_%__kont224216224217%_
                                             _%hd222860222968%_
                                             _%hd222851222944%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222843222883%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl222861222970%_))
                                        (_%__kont224216224217%_
                                         _%hd222860222968%_
                                         _%hd222851222944%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g222843222883%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl222861222970%_))
                                (_%__kont224216224217%_
                                 _%hd222860222968%_
                                 _%hd222851222944%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g222843222883%_))))))
                    (let () (declare (not safe)) (_%g222843222883%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl222852222946%_))
                    (let ((_%e222876222904%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222852222946%_))))
                      (let ((_%tl222878222909%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222876222904%_)))
                            (_%hd222877222907%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222876222904%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222878222909%_))
                            (_%__kont224216224217%_
                             _%hd222877222907%_
                             _%hd222851222944%_)
                            (let ()
                              (declare (not safe))
                              (_%g222843222883%_)))))
                    (let () (declare (not safe)) (_%g222843222883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222852222946%_))
                                                    (let ((_%e222876222904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222852222946%_))))
                                                      (let ((_%tl222878222909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e222876222904%_)))
                    (_%hd222877222907%_
                     (let () (declare (not safe)) (##car _%e222876222904%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222878222909%_))
                    (_%__kont224216224217%_
                     _%hd222877222907%_
                     _%hd222851222944%_)
                    (let () (declare (not safe)) (_%g222843222883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222843222883%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl222852222946%_))
                                                (let ((_%e222876222904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl222852222946%_))))
                                                  (let ((_%tl222878222909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e222876222904%_)))
                                                        (_%hd222877222907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e222876222904%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl222878222909%_))
                                                        (_%__kont224216224217%_
                                                         _%hd222877222907%_
                                                         _%hd222851222944%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g222843222883%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g222843222883%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222852222946%_))
                                            (let ((_%e222876222904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222852222946%_))))
                                              (let ((_%tl222878222909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222876222904%_)))
                                                    (_%hd222877222907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222876222904%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl222878222909%_))
                                                    (_%__kont224216224217%_
                                                     _%hd222877222907%_
                                                     _%hd222851222944%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g222843222883%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g222843222883%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222852222946%_))
                                    (let ((_%e222876222904%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222852222946%_))))
                                      (let ((_%tl222878222909%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222876222904%_)))
                                            (_%hd222877222907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222876222904%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl222878222909%_))
                                            (_%__kont224216224217%_
                                             _%hd222877222907%_
                                             _%hd222851222944%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g222843222883%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g222843222883%_))))))
                        (let () (declare (not safe)) (_%g222843222883%_)))))
                (let () (declare (not safe)) (_%g222843222883%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self222826%_)
        (let ((_%self222829%_ _%self222826%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222829%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self222600%_)
        (let* ((_%self222603%_ _%self222600%_)
               (_%self222612222628%_ _%self222603%_)
               (_%E222614222631%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self222612222628%_
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
               (_%K222615222646%_
                (lambda (_%methods222634%_
                         _%metaclass222635%_
                         _%system?222636%_
                         _%final?222637%_
                         _%struct?222638%_
                         _%constructor222639%_
                         _%fields222640%_
                         _%slots222641%_
                         _%precendence-list222642%_
                         _%super222643%_
                         _%id222644%_)
                  (cons '@class
                        (cons _%id222644%_
                              (cons _%super222643%_
                                    (cons _%precendence-list222642%_
                                          (cons _%slots222641%_
                                                (cons _%fields222640%_
                                                      (cons _%constructor222639%_
                                                            (cons _%struct?222638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?222637%_
                                (cons _%system?222636%_
                                      (cons _%metaclass222635%_
                                            (cons (if _%methods222634%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods222634%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e222616222649%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '1 '#f '#f)))
               (_%id222652%_ _%e222616222649%_)
               (_%e222617222654%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '2 '#f '#f)))
               (_%super222657%_ _%e222617222654%_)
               (_%e222618222659%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '3 '#f '#f)))
               (_%precendence-list222662%_ _%e222618222659%_)
               (_%e222619222664%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '4 '#f '#f)))
               (_%slots222667%_ _%e222619222664%_)
               (_%e222620222669%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '5 '#f '#f)))
               (_%fields222672%_ _%e222620222669%_)
               (_%e222621222674%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '6 '#f '#f)))
               (_%constructor222677%_ _%e222621222674%_)
               (_%e222622222679%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '7 '#f '#f)))
               (_%struct?222682%_ _%e222622222679%_)
               (_%e222623222684%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '8 '#f '#f)))
               (_%final?222687%_ _%e222623222684%_)
               (_%e222624222689%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self222612222628%_ '9 '#f '#f)))
               (_%system?222692%_ _%e222624222689%_)
               (_%e222625222694%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222612222628%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass222697%_ _%e222625222694%_)
               (_%e222626222699%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self222612222628%_
                   '11
                   '#f
                   '#f)))
               (_%methods222702%_ _%e222626222699%_))
          (_%K222615222646%_
           _%methods222702%_
           _%metaclass222697%_
           _%system?222692%_
           _%final?222687%_
           _%struct?222682%_
           _%constructor222677%_
           _%fields222672%_
           _%slots222667%_
           _%precendence-list222662%_
           _%super222657%_
           _%id222652%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self222465%_)
        (let ((_%self222468%_ _%self222465%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222468%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self222330%_)
        (let ((_%self222333%_ _%self222330%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222333%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self222195%_)
        (let ((_%self222198%_ _%self222195%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222198%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222198%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222198%_
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
      (lambda (_%self222060%_)
        (let ((_%self222063%_ _%self222060%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self222063%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self222063%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self222063%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self221925%_)
        (let ((_%self221928%_ _%self221925%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221928%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221928%_
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
      (lambda (_%self221739%_)
        (let* ((_%self221742%_ _%self221739%_)
               (_%self221751221760%_ _%self221742%_)
               (_%E221753221763%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221751221760%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K221754221782%_
                (lambda (_%dispatch221766%_
                         _%arity221767%_
                         _%signature221768%_)
                  (if _%signature221768%_
                      (let ((_%signature221770%_ _%signature221768%_))
                        (cons '@lambda
                              (cons _%arity221767%_
                                    (cons _%dispatch221766%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature221770%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature221770%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature221770%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature221770%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature221770%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity221767%_
                                  (cons _%dispatch221766%_ '()))))))
               (_%e221755221785%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221751221760%_ '1 '#f '#f)))
               (_%e221756221788%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221751221760%_ '2 '#f '#f)))
               (_%signature221791%_ _%e221756221788%_)
               (_%e221757221793%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221751221760%_ '3 '#f '#f)))
               (_%arity221796%_ _%e221757221793%_)
               (_%e221758221798%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221751221760%_ '4 '#f '#f)))
               (_%dispatch221801%_ _%e221758221798%_))
          (_%K221754221782%_
           _%dispatch221801%_
           _%arity221796%_
           _%signature221791%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self221599%_)
        (let ((_%self221602%_ _%self221599%_))
          (letrec ((_%clause-e221613%_
                    (lambda (_%clause221615%_)
                      (cdr (let ((__method224300
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause221615%_
                                     'typedecl))))
                             (if __method224300
                                 (let ()
                                   (declare (not safe))
                                   (__method224300 _%clause221615%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause221615%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e221613%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self221602%_
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
      (lambda (_%self221464%_)
        (let ((_%self221467%_ _%self221464%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221467%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221467%_
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
      (lambda (_%self221329%_)
        (let ((_%self221332%_ _%self221329%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221332%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self221332%_
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
      (lambda (_%self221194%_)
        (let ((_%self221197%_ _%self221194%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221197%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
