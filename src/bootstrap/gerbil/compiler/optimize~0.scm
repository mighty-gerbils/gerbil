(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771101417)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp258281
                   (let ((__obj258275
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
                       (gxc#optimizer-info:::init! __obj258275))
                     __obj258275)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp258281)))))
    (define gxc#optimize!
      (lambda (_%ctx257883%_)
        (let ((__tmp258283
               (lambda ()
                 (let ((__tmp258285
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx257883%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx257883%_)
                          (let ((__tmp258287
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp258286
                                 (##structure-ref
                                  _%ctx257883%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258287 __tmp258286 '#t))
                          (let ((_%code257887%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx257883%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx257883%_
                             _%code257887%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp258284
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp258285
                    gxc#current-compile-local-type
                    __tmp258284))))
              (__tmp258282 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258283
           gxc#current-compile-mutators
           __tmp258282))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx257869%_)
        (letrec ((_%load-it!257871%_
                  (lambda (_%id257881%_)
                    (if (let ((__tmp258288
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp258288 _%id257881%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id257881%_)
                          (let ((__tmp258289
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258289 _%id257881%_ '#t)))))))
          (let* ((_%modid257873%_
                  (##structure-ref
                   _%ctx257869%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str257875%_ (symbol->string _%modid257873%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str257875%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str257875%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257871%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257871%_
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
      (lambda (_%ctx257806%_)
        (letrec* ((_%deps257808%_
                   (let* ((_%imports257859%_
                           (##structure-ref
                            _%ctx257806%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e257861%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx257806%_))))
                     (if _%$e257861%_
                         ((lambda (_%g257863257865%_)
                            (cons _%g257863257865%_ _%imports257859%_))
                          _%$e257861%_)
                         _%imports257859%_))))
          (let _%lp257810%_ ((_%rest257812%_ _%deps257808%_))
            (let* ((_%rest257813257821%_ _%rest257812%_)
                   (_%else257815257829%_ (lambda () '#!void))
                   (_%K257817257847%_
                    (lambda (_%rest257832%_ _%hd257833%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd257833%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp258291
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp258290
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257833%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp258291 __tmp258290))
                                '#!void
                                (begin
                                  (let ((_%$e257836%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd257833%_))))
                                    (if _%$e257836%_
                                        ((lambda (_%pre257839%_)
                                           (_%lp257810%_
                                            (cons _%pre257839%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd257833%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e257836%_)
                                        (_%lp257810%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257833%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd257833%_)))
                            (_%lp257810%_ _%rest257832%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd257833%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp258293
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp258292
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd257833%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp258293 __tmp258292))
                                    '#!void
                                    (begin
                                      (_%lp257810%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257833%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd257833%_)))
                                (_%lp257810%_ _%rest257832%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd257833%_
                                     'gx#module-import::t))
                                  (_%lp257810%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257833%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest257832%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd257833%_
                                         'gx#module-export::t))
                                      (_%lp257810%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd257833%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest257832%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd257833%_
                                             'gx#import-set::t))
                                          (_%lp257810%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd257833%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest257832%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd257833%_))))))))))
              (if (pair? _%rest257813257821%_)
                  (let ((_%hd257818257850%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257813257821%_)))
                        (_%tl257819257852%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257813257821%_))))
                    (let* ((_%hd257855%_ _%hd257818257850%_)
                           (_%rest257857%_ _%tl257819257852%_))
                      (_%K257817257847%_ _%rest257857%_ _%hd257855%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx257786%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx257786%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx257786%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht257788%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id257790%_
                    (##structure-ref
                     _%ctx257786%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod257792%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht257788%_ _%id257790%_)))
                   (_%$e257795%_ _%mod257792%_))
              (if _%$e257795%_
                  _%$e257795%_
                  (let* ((_%mod257798%_
                          (gxc#optimizer-import-ssxi _%ctx257786%_))
                         (_%val257803%_
                          (let ((_%$e257800%_ _%mod257798%_))
                            (if _%$e257800%_ _%$e257800%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht257788%_ _%id257790%_ _%val257803%_))
                    _%val257803%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx257784%_)
        (if (##structure-ref _%ctx257784%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx257784%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id257762%_)
        (letrec ((_%catch-e257764%_
                  (lambda (_%exn257782%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn257782%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn257782%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id257762%_))))
                    '#f))
                 (_%import-e257765%_
                  (lambda ()
                    (let* ((_%str-id257768%_
                            (let ((__tmp258294
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id257762%_))))
                              (declare (not safe))
                              (##string-append __tmp258294 '".ssxi")))
                           (_%artefact-path257775%_
                            (let ((_%odir257769257771%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir257769257771%_
                                  (let ((_%odir257773%_ _%odir257769257771%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id257768%_
                                        '".ss"))
                                     _%odir257773%_))
                                  '#f)))
                           (_%library-path257777%_
                            (let ((__tmp258295
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id257768%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp258295)))
                           (_%ssxi-path257779%_
                            (if (and _%artefact-path257775%_
                                     (file-exists? _%artefact-path257775%_))
                                _%artefact-path257775%_
                                _%library-path257777%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path257779%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path257779%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e257764%_ _%import-e257765%_)))))
    (define gxc#optimize-source
      (lambda (_%stx257747%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx257747%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx257747%_))
        (let* ((_%stx257749%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx257747%_)))
               (_%stx257751%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx257749%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx257751%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx257751%_))
          (let _%fixpoint257754%_ ((_%current257756%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx257751%_))
            (let ((_%refined257758%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current257756%_ _%refined257758%_)
                  '#!void
                  (_%fixpoint257754%_ _%refined257758%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx257751%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx257751%_))
          (let ((_%stx257760%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx257751%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx257760%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp258297 (list gxc#::generate-runtime-empty::t))
            (__tmp258296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp258297
         '()
         __tmp258296
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args257744%_
        (apply make-instance gxc#::generate-ssxi::t _%$args257744%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp258298
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
        (__make-atomic-promise __tmp258298)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx257736%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self257739%_
                (let ((__obj258277
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj258277))
               (__tmp258299
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257739%_ _%stx257736%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258299
           gxc#current-compile-method
           _%self257739%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self257696%_ _%stx257697%_)
        (let* ((_%g257699257709%_
                (lambda (_%g257700257706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257700257706%_))))
               (_%g257698257733%_
                (lambda (_%g257700257712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257700257712%_))
                      (let ((_%e257702257714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257700257712%_))))
                        (let ((_%hd257703257717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257702257714%_)))
                              (_%tl257704257719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257702257714%_))))
                          ((lambda (_%g257701257722%_)
                             (let ((__tmp258302
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self257696%_
                                         _%stx257697%_))))
                                   (__tmp258300
                                    (let ((__tmp258301
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp258301 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp258302
                                gx#current-expander-phi
                                __tmp258300)))
                           _%tl257704257719%_)))
                      (_%g257699257709%_ _%g257700257712%_)))))
          (_%g257698257733%_ _%stx257697%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self257635%_ _%stx257636%_)
        (let* ((_%g257638257652%_
                (lambda (_%g257639257649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257639257649%_))))
               (_%g257637257693%_
                (lambda (_%g257639257655%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257639257655%_))
                      (let ((_%e257642257657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257639257655%_))))
                        (let ((_%hd257643257660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257642257657%_)))
                              (_%tl257644257662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257642257657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257644257662%_))
                              (let ((_%e257645257665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl257644257662%_))))
                                (let ((_%hd257646257668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257645257665%_)))
                                      (_%tl257647257670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257645257665%_))))
                                  ((lambda (_%g257640257673%_
                                            _%g257641257674%_)
                                     (let* ((_%ctx257687%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g257641257674%_)))
                                            (_%code257689%_
                                             (##structure-ref
                                              _%ctx257687%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp258303
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self257635%_
                                                  _%code257689%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258303
                                        gx#current-expander-context
                                        _%ctx257687%_)))
                                   _%tl257647257670%_
                                   _%hd257646257668%_)))
                              (_%g257638257652%_ _%g257639257655%_))))
                      (_%g257638257652%_ _%g257639257655%_)))))
          (_%g257637257693%_ _%stx257636%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self257442%_ _%stx257443%_)
        (letrec ((_%generate-e257445%_
                  (lambda (_%id257620%_)
                    (let* ((_%sym257622%_
                            (if (let ((__tmp258304
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp258304))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id257620%_))
                                '#f))
                           (_%$e257624%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym257622%_))))
                      (if _%$e257624%_
                          ((lambda (_%klass257627%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym257622%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym257622%_
                                                     (cons (let ((__method258278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass257627%_ 'typedecl))))
                     (if __method258278
                         (let ()
                           (declare (not safe))
                           (__method258278 _%klass257627%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass257627%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym257622%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym257622%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e257624%_)
                          (let ((_%$e257629%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym257622%_))))
                            (if _%$e257629%_
                                ((lambda (_%type257632%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym257622%_
                                      '" "
                                      _%type257632%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type257632%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym257622%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym257622%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type257632%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym257622%_
                                                   (cons (let ((__method258279
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type257632%_ 'typedecl))))
                   (if __method258279
                       (let ()
                         (declare (not safe))
                         (__method258279 _%type257632%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type257632%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e257629%_)
                                '(begin))))))))
          (let* ((_%__stx257890257891%_ _%stx257443%_)
                 (_%g257448257486%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257890257891%_)))))
            (let ((_%__kont257892257893%_
                   (lambda (_%g257450257602%_)
                     (_%generate-e257445%_ _%g257450257602%_)))
                  (_%__kont257894257895%_
                   (lambda (_%g257463257537%_)
                     (let ((_%types257563%_
                            (map _%generate-e257445%_
                                 (let ((__tmp258305
                                        (lambda (_%g257555257558%_
                                                 _%g257556257560%_)
                                          (cons _%g257555257558%_
                                                _%g257556257560%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp258305
                                    '()
                                    _%g257463257537%_)))))
                       (cons 'begin _%types257563%_)))))
              (let ((_%__match257945257946%_
                     (lambda (_%e257464257491%_
                              _%hd257465257494%_
                              _%tl257466257496%_
                              _%e257467257499%_
                              _%hd257468257502%_
                              _%tl257469257504%_
                              _%__splice257896257897%_
                              _%target257470257507%_
                              _%tl257472257509%_)
                       (letrec ((_%loop257473257512%_
                                 (lambda (_%hd257471257515%_
                                          _%id257477257517%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd257471257515%_))
                                       (let ((_%e257474257519%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd257471257515%_))))
                                         (let ((_%lp-tl257476257524%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e257474257519%_)))
                                               (_%lp-hd257475257522%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e257474257519%_))))
                                           (_%loop257473257512%_
                                            _%lp-tl257476257524%_
                                            (cons _%lp-hd257475257522%_
                                                  _%id257477257517%_))))
                                       (let ((_%id257478257527%_
                                              (reverse _%id257477257517%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl257469257504%_))
                                             (let ((_%e257479257529%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl257469257504%_))))
                                               (let ((_%tl257481257534%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e257479257529%_)))
                                                     (_%hd257480257532%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e257479257529%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl257481257534%_))
                                                     (_%__kont257894257895%_
                                                      _%id257478257527%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g257448257486%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g257448257486%_))))))))
                         (_%loop257473257512%_ _%target257470257507%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257890257891%_))
                    (let ((_%e257451257570%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257890257891%_))))
                      (let ((_%tl257453257575%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257451257570%_)))
                            (_%hd257452257573%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257451257570%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl257453257575%_))
                            (let ((_%e257454257578%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl257453257575%_))))
                              (let ((_%tl257456257583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257454257578%_)))
                                    (_%hd257455257581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257454257578%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd257455257581%_))
                                    (let ((_%e257457257586%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd257455257581%_))))
                                      (let ((_%tl257459257591%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257457257586%_)))
                                            (_%hd257458257589%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257457257586%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257459257591%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257456257583%_))
                                                (let ((_%e257460257594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257456257583%_))))
                                                  (let ((_%tl257462257599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257460257594%_)))
                                                        (_%hd257461257597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257460257594%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257462257599%_))
                                                        (_%__kont257892257893%_
                                                         _%hd257458257589%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd257455257581%_))
                                                            (let ((_%__splice257896257897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd257455257581%_
                              '0))))
                      (let ((_%tl257472257509%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257896257897%_ '1)))
                            (_%target257470257507%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257896257897%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257472257509%_))
                            (_%__match257945257946%_
                             _%e257451257570%_
                             _%hd257452257573%_
                             _%tl257453257575%_
                             _%e257454257578%_
                             _%hd257455257581%_
                             _%tl257456257583%_
                             _%__splice257896257897%_
                             _%target257470257507%_
                             _%tl257472257509%_)
                            (let ()
                              (declare (not safe))
                              (_%g257448257486%_)))))
                    (let () (declare (not safe)) (_%g257448257486%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd257455257581%_))
                                                    (let ((_%__splice257896257897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd257455257581%_
                                                              '0))))
                                                      (let ((_%tl257472257509%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice257896257897%_ '1)))
                    (_%target257470257507%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice257896257897%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257472257509%_))
                    (_%__match257945257946%_
                     _%e257451257570%_
                     _%hd257452257573%_
                     _%tl257453257575%_
                     _%e257454257578%_
                     _%hd257455257581%_
                     _%tl257456257583%_
                     _%__splice257896257897%_
                     _%target257470257507%_
                     _%tl257472257509%_)
                    (let () (declare (not safe)) (_%g257448257486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257448257486%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd257455257581%_))
                                                (let ((_%__splice257896257897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd257455257581%_
                                                          '0))))
                                                  (let ((_%tl257472257509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257896257897%_
                                                            '1)))
                                                        (_%target257470257507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257896257897%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257472257509%_))
                                                        (_%__match257945257946%_
                                                         _%e257451257570%_
                                                         _%hd257452257573%_
                                                         _%tl257453257575%_
                                                         _%e257454257578%_
                                                         _%hd257455257581%_
                                                         _%tl257456257583%_
                                                         _%__splice257896257897%_
                                                         _%target257470257507%_
                                                         _%tl257472257509%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257448257486%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257448257486%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd257455257581%_))
                                        (let ((_%__splice257896257897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd257455257581%_
                                                  '0))))
                                          (let ((_%tl257472257509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257896257897%_
                                                    '1)))
                                                (_%target257470257507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257896257897%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257472257509%_))
                                                (_%__match257945257946%_
                                                 _%e257451257570%_
                                                 _%hd257452257573%_
                                                 _%tl257453257575%_
                                                 _%e257454257578%_
                                                 _%hd257455257581%_
                                                 _%tl257456257583%_
                                                 _%__splice257896257897%_
                                                 _%target257470257507%_
                                                 _%tl257472257509%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257448257486%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g257448257486%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g257448257486%_)))))
                    (let () (declare (not safe)) (_%g257448257486%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self256995%_ _%stx256996%_)
        (let* ((_%__stx257948257949%_ _%stx256996%_)
               (_%g257000257102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx257948257949%_)))))
          (let ((_%__kont257950257951%_
                 (lambda (_%g257002257392%_
                          _%g257003257393%_
                          _%g257004257394%_
                          _%g257005257395%_
                          _%g257006257396%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257005257395%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257004257394%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257003257393%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g257002257392%_))
                                                 '())))))))
                (_%__kont257952257953%_
                 (lambda (_%g257055257218%_
                          _%g257056257219%_
                          _%g257057257220%_
                          _%g257058257221%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257057257220%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257056257219%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257055257218%_))
                                           (cons '#f '())))))))
                (_%__kont257954257955%_ (lambda () '(begin))))
            (let ((_%__match258083258084%_
                   (lambda (_%e257007257264%_
                            _%hd257008257267%_
                            _%tl257009257269%_
                            _%e257010257272%_
                            _%hd257011257275%_
                            _%tl257012257277%_
                            _%e257013257280%_
                            _%hd257014257283%_
                            _%tl257015257285%_
                            _%e257016257288%_
                            _%hd257017257291%_
                            _%tl257018257293%_
                            _%e257019257296%_
                            _%hd257020257299%_
                            _%tl257021257301%_
                            _%e257022257304%_
                            _%hd257023257307%_
                            _%tl257024257309%_
                            _%e257025257312%_
                            _%hd257026257315%_
                            _%tl257027257317%_
                            _%e257028257320%_
                            _%hd257029257323%_
                            _%tl257030257325%_
                            _%e257031257328%_
                            _%hd257032257331%_
                            _%tl257033257333%_
                            _%e257034257336%_
                            _%hd257035257339%_
                            _%tl257036257341%_
                            _%e257037257344%_
                            _%hd257038257347%_
                            _%tl257039257349%_
                            _%e257040257352%_
                            _%hd257041257355%_
                            _%tl257042257357%_
                            _%e257043257360%_
                            _%hd257044257363%_
                            _%tl257045257365%_
                            _%e257046257368%_
                            _%hd257047257371%_
                            _%tl257048257373%_
                            _%e257049257376%_
                            _%hd257050257379%_
                            _%tl257051257381%_
                            _%e257052257384%_
                            _%hd257053257387%_
                            _%tl257054257389%_)
                     (let ((_%g257002257392%_ _%hd257053257387%_)
                           (_%g257003257393%_ _%hd257044257363%_)
                           (_%g257004257394%_ _%hd257035257339%_)
                           (_%g257005257395%_ _%hd257026257315%_)
                           (_%g257006257396%_ _%hd257017257291%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g257006257396%_
                              'bind-method!))
                           (_%__kont257950257951%_
                            _%g257002257392%_
                            _%g257003257393%_
                            _%g257004257394%_
                            _%g257005257395%_
                            _%g257006257396%_)
                           (_%__kont257954257955%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx257948257949%_))
                  (let ((_%e257007257264%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx257948257949%_))))
                    (let ((_%tl257009257269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257007257264%_)))
                          (_%hd257008257267%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257007257264%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257009257269%_))
                          (let ((_%e257010257272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl257009257269%_))))
                            (let ((_%tl257012257277%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257010257272%_)))
                                  (_%hd257011257275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257010257272%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd257011257275%_))
                                  (let ((_%e257013257280%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd257011257275%_))))
                                    (let ((_%tl257015257285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257013257280%_)))
                                          (_%hd257014257283%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257013257280%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd257014257283%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd257014257283%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257015257285%_))
                                                  (let ((_%e257016257288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257015257285%_))))
                                                    (let ((_%tl257018257293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257016257288%_)))
                                                          (_%hd257017257291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257016257288%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257018257293%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl257012257277%_))
                      (let ((_%e257019257296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl257012257277%_))))
                        (let ((_%tl257021257301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257019257296%_)))
                              (_%hd257020257299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257019257296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd257020257299%_))
                              (let ((_%e257022257304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd257020257299%_))))
                                (let ((_%tl257024257309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257022257304%_)))
                                      (_%hd257023257307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257022257304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd257023257307%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd257023257307%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257024257309%_))
                                              (let ((_%e257025257312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl257024257309%_))))
                                                (let ((_%tl257027257317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257025257312%_)))
                                                      (_%hd257026257315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257025257312%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257027257317%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl257021257301%_))
                                                          (let ((_%e257028257320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl257021257301%_))))
                    (let ((_%tl257030257325%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257028257320%_)))
                          (_%hd257029257323%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257028257320%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd257029257323%_))
                          (let ((_%e257031257328%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd257029257323%_))))
                            (let ((_%tl257033257333%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257031257328%_)))
                                  (_%hd257032257331%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257031257328%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd257032257331%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd257032257331%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257033257333%_))
                                          (let ((_%e257034257336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl257033257333%_))))
                                            (let ((_%tl257036257341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257034257336%_)))
                                                  (_%hd257035257339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257034257336%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl257036257341%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257030257325%_))
                                                      (let ((_%e257037257344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl257030257325%_))))
                (let ((_%tl257039257349%_
                       (let () (declare (not safe)) (##cdr _%e257037257344%_)))
                      (_%hd257038257347%_
                       (let ()
                         (declare (not safe))
                         (##car _%e257037257344%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd257038257347%_))
                      (let ((_%e257040257352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd257038257347%_))))
                        (let ((_%tl257042257357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257040257352%_)))
                              (_%hd257041257355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257040257352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd257041257355%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd257041257355%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257042257357%_))
                                      (let ((_%e257043257360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl257042257357%_))))
                                        (let ((_%tl257045257365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257043257360%_)))
                                              (_%hd257044257363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257043257360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257045257365%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257039257349%_))
                                                  (let ((_%e257046257368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257039257349%_))))
                                                    (let ((_%tl257048257373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257046257368%_)))
                                                          (_%hd257047257371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257046257368%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd257047257371%_))
                                                          (let ((_%e257049257376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd257047257371%_))))
                    (let ((_%tl257051257381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257049257376%_)))
                          (_%hd257050257379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257049257376%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd257050257379%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd257050257379%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257051257381%_))
                                  (let ((_%e257052257384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl257051257381%_))))
                                    (let ((_%tl257054257389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257052257384%_)))
                                          (_%hd257053257387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257052257384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl257054257389%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257048257373%_))
                                              (_%__match258083258084%_
                                               _%e257007257264%_
                                               _%hd257008257267%_
                                               _%tl257009257269%_
                                               _%e257010257272%_
                                               _%hd257011257275%_
                                               _%tl257012257277%_
                                               _%e257013257280%_
                                               _%hd257014257283%_
                                               _%tl257015257285%_
                                               _%e257016257288%_
                                               _%hd257017257291%_
                                               _%tl257018257293%_
                                               _%e257019257296%_
                                               _%hd257020257299%_
                                               _%tl257021257301%_
                                               _%e257022257304%_
                                               _%hd257023257307%_
                                               _%tl257024257309%_
                                               _%e257025257312%_
                                               _%hd257026257315%_
                                               _%tl257027257317%_
                                               _%e257028257320%_
                                               _%hd257029257323%_
                                               _%tl257030257325%_
                                               _%e257031257328%_
                                               _%hd257032257331%_
                                               _%tl257033257333%_
                                               _%e257034257336%_
                                               _%hd257035257339%_
                                               _%tl257036257341%_
                                               _%e257037257344%_
                                               _%hd257038257347%_
                                               _%tl257039257349%_
                                               _%e257040257352%_
                                               _%hd257041257355%_
                                               _%tl257042257357%_
                                               _%e257043257360%_
                                               _%hd257044257363%_
                                               _%tl257045257365%_
                                               _%e257046257368%_
                                               _%hd257047257371%_
                                               _%tl257048257373%_
                                               _%e257049257376%_
                                               _%hd257050257379%_
                                               _%tl257051257381%_
                                               _%e257052257384%_
                                               _%hd257053257387%_
                                               _%tl257054257389%_)
                                              (_%__kont257954257955%_))
                                          (_%__kont257954257955%_))))
                                  (_%__kont257954257955%_))
                              (_%__kont257954257955%_))
                          (_%__kont257954257955%_))))
                  (_%__kont257954257955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257039257349%_))
                                                      (if (let ((__tmp258306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp258306 'bind-method!))
                  (let ((_%g257055257218%_ _%hd257044257363%_)
                        (_%g257056257219%_ _%hd257035257339%_)
                        (_%g257057257220%_ _%hd257026257315%_)
                        (_%g257058257221%_ _%hd257017257291%_))
                    (_%__kont257952257953%_
                     _%g257055257218%_
                     _%g257056257219%_
                     _%g257057257220%_
                     _%g257058257221%_))
                  (_%__kont257954257955%_))
              (_%__kont257954257955%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257954257955%_))))
                                      (_%__kont257954257955%_))
                                  (_%__kont257954257955%_))
                              (_%__kont257954257955%_))))
                      (_%__kont257954257955%_))))
              (_%__kont257954257955%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257954257955%_))))
                                          (_%__kont257954257955%_))
                                      (_%__kont257954257955%_))
                                  (_%__kont257954257955%_))))
                          (_%__kont257954257955%_))))
                  (_%__kont257954257955%_))
              (_%__kont257954257955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont257954257955%_))
                                          (_%__kont257954257955%_))
                                      (_%__kont257954257955%_))))
                              (_%__kont257954257955%_))))
                      (_%__kont257954257955%_))
                  (_%__kont257954257955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont257954257955%_))
                                              (_%__kont257954257955%_))
                                          (_%__kont257954257955%_))))
                                  (_%__kont257954257955%_))))
                          (_%__kont257954257955%_))))
                  (_%__kont257954257955%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self256819%_ _%stx256820%_)
        (let* ((_%__stx258192258193%_ _%stx256820%_)
               (_%g256823256863%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258192258193%_)))))
          (let ((_%__kont258194258195%_
                 (lambda (_%g256825256969%_ _%g256826256970%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256826256970%_))
                               (cons _%g256825256969%_ '())))))
                (_%__kont258196258197%_
                 (lambda (_%g256848256892%_ _%g256849256893%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258192258193%_))
                (let ((_%e256827256913%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258192258193%_))))
                  (let ((_%tl256829256918%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e256827256913%_)))
                        (_%hd256828256916%_
                         (let ()
                           (declare (not safe))
                           (##car _%e256827256913%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl256829256918%_))
                        (let ((_%e256830256921%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl256829256918%_))))
                          (let ((_%tl256832256926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e256830256921%_)))
                                (_%hd256831256924%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e256830256921%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd256831256924%_))
                                (let ((_%e256833256929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd256831256924%_))))
                                  (let ((_%tl256835256934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e256833256929%_)))
                                        (_%hd256834256932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e256833256929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd256834256932%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd256834256932%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256835256934%_))
                                                (let ((_%e256836256937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256835256934%_))))
                                                  (let ((_%tl256838256942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256836256937%_)))
                                                        (_%hd256837256940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256836256937%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256838256942%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl256832256926%_))
                                                            (let ((_%e256839256945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256832256926%_))))
                      (let ((_%tl256841256950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256839256945%_)))
                            (_%hd256840256948%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256839256945%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd256840256948%_))
                            (let ((_%e256842256953%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd256840256948%_))))
                              (let ((_%tl256844256958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256842256953%_)))
                                    (_%hd256843256956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256842256953%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd256843256956%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd256843256956%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256844256958%_))
                                            (let ((_%e256845256961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256844256958%_))))
                                              (let ((_%tl256847256966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256845256961%_)))
                                                    (_%hd256846256964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256845256961%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256847256966%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256841256950%_))
                                                        (_%__kont258194258195%_
                                                         _%hd256846256964%_
                                                         _%hd256837256940%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256823256863%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256841256950%_))
                                                        (_%__kont258196258197%_
                                                         _%hd256840256948%_
                                                         _%hd256831256924%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256823256863%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256841256950%_))
                                                (_%__kont258196258197%_
                                                 _%hd256840256948%_
                                                 _%hd256831256924%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256823256863%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256841256950%_))
                                            (_%__kont258196258197%_
                                             _%hd256840256948%_
                                             _%hd256831256924%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256823256863%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl256841256950%_))
                                        (_%__kont258196258197%_
                                         _%hd256840256948%_
                                         _%hd256831256924%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g256823256863%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl256841256950%_))
                                (_%__kont258196258197%_
                                 _%hd256840256948%_
                                 _%hd256831256924%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g256823256863%_))))))
                    (let () (declare (not safe)) (_%g256823256863%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl256832256926%_))
                    (let ((_%e256856256884%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256832256926%_))))
                      (let ((_%tl256858256889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256856256884%_)))
                            (_%hd256857256887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256856256884%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256858256889%_))
                            (_%__kont258196258197%_
                             _%hd256857256887%_
                             _%hd256831256924%_)
                            (let ()
                              (declare (not safe))
                              (_%g256823256863%_)))))
                    (let () (declare (not safe)) (_%g256823256863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl256832256926%_))
                                                    (let ((_%e256856256884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl256832256926%_))))
                                                      (let ((_%tl256858256889%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e256856256884%_)))
                    (_%hd256857256887%_
                     (let () (declare (not safe)) (##car _%e256856256884%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256858256889%_))
                    (_%__kont258196258197%_
                     _%hd256857256887%_
                     _%hd256831256924%_)
                    (let () (declare (not safe)) (_%g256823256863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256823256863%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256832256926%_))
                                                (let ((_%e256856256884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256832256926%_))))
                                                  (let ((_%tl256858256889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256856256884%_)))
                                                        (_%hd256857256887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256856256884%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256858256889%_))
                                                        (_%__kont258196258197%_
                                                         _%hd256857256887%_
                                                         _%hd256831256924%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256823256863%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256823256863%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256832256926%_))
                                            (let ((_%e256856256884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256832256926%_))))
                                              (let ((_%tl256858256889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256856256884%_)))
                                                    (_%hd256857256887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256856256884%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256858256889%_))
                                                    (_%__kont258196258197%_
                                                     _%hd256857256887%_
                                                     _%hd256831256924%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256823256863%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g256823256863%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl256832256926%_))
                                    (let ((_%e256856256884%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl256832256926%_))))
                                      (let ((_%tl256858256889%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256856256884%_)))
                                            (_%hd256857256887%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256856256884%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256858256889%_))
                                            (_%__kont258196258197%_
                                             _%hd256857256887%_
                                             _%hd256831256924%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256823256863%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g256823256863%_))))))
                        (let () (declare (not safe)) (_%g256823256863%_)))))
                (let () (declare (not safe)) (_%g256823256863%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self256806%_)
        (let ((_%self256809%_ _%self256806%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256809%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self256580%_)
        (let* ((_%self256583%_ _%self256580%_)
               (_%self256592256608%_ _%self256583%_)
               (_%E256594256611%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256592256608%_
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
               (_%K256595256626%_
                (lambda (_%methods256614%_
                         _%metaclass256615%_
                         _%system?256616%_
                         _%final?256617%_
                         _%struct?256618%_
                         _%constructor256619%_
                         _%fields256620%_
                         _%slots256621%_
                         _%precendence-list256622%_
                         _%super256623%_
                         _%id256624%_)
                  (cons '@class
                        (cons _%id256624%_
                              (cons _%super256623%_
                                    (cons _%precendence-list256622%_
                                          (cons _%slots256621%_
                                                (cons _%fields256620%_
                                                      (cons _%constructor256619%_
                                                            (cons _%struct?256618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?256617%_
                                (cons _%system?256616%_
                                      (cons _%metaclass256615%_
                                            (cons (if _%methods256614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods256614%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e256596256629%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '1 '#f '#f)))
               (_%id256632%_ _%e256596256629%_)
               (_%e256597256634%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '2 '#f '#f)))
               (_%super256637%_ _%e256597256634%_)
               (_%e256598256639%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '3 '#f '#f)))
               (_%precendence-list256642%_ _%e256598256639%_)
               (_%e256599256644%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '4 '#f '#f)))
               (_%slots256647%_ _%e256599256644%_)
               (_%e256600256649%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '5 '#f '#f)))
               (_%fields256652%_ _%e256600256649%_)
               (_%e256601256654%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '6 '#f '#f)))
               (_%constructor256657%_ _%e256601256654%_)
               (_%e256602256659%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '7 '#f '#f)))
               (_%struct?256662%_ _%e256602256659%_)
               (_%e256603256664%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '8 '#f '#f)))
               (_%final?256667%_ _%e256603256664%_)
               (_%e256604256669%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256592256608%_ '9 '#f '#f)))
               (_%system?256672%_ _%e256604256669%_)
               (_%e256605256674%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256592256608%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass256677%_ _%e256605256674%_)
               (_%e256606256679%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256592256608%_
                   '11
                   '#f
                   '#f)))
               (_%methods256682%_ _%e256606256679%_))
          (_%K256595256626%_
           _%methods256682%_
           _%metaclass256677%_
           _%system?256672%_
           _%final?256667%_
           _%struct?256662%_
           _%constructor256657%_
           _%fields256652%_
           _%slots256647%_
           _%precendence-list256642%_
           _%super256637%_
           _%id256632%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self256445%_)
        (let ((_%self256448%_ _%self256445%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256448%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self256310%_)
        (let ((_%self256313%_ _%self256310%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256313%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self256175%_)
        (let ((_%self256178%_ _%self256175%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256178%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256178%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256178%_
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
      (lambda (_%self256040%_)
        (let ((_%self256043%_ _%self256040%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256043%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256043%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256043%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self255905%_)
        (let ((_%self255908%_ _%self255905%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255908%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255908%_
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
      (lambda (_%self255719%_)
        (let* ((_%self255722%_ _%self255719%_)
               (_%self255731255740%_ _%self255722%_)
               (_%E255733255743%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255731255740%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K255734255762%_
                (lambda (_%dispatch255746%_
                         _%arity255747%_
                         _%signature255748%_)
                  (if _%signature255748%_
                      (let ((_%signature255750%_ _%signature255748%_))
                        (cons '@lambda
                              (cons _%arity255747%_
                                    (cons _%dispatch255746%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255750%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature255750%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature255750%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature255750%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature255750%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity255747%_
                                  (cons _%dispatch255746%_ '()))))))
               (_%e255735255765%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255731255740%_ '1 '#f '#f)))
               (_%e255736255768%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255731255740%_ '2 '#f '#f)))
               (_%signature255771%_ _%e255736255768%_)
               (_%e255737255773%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255731255740%_ '3 '#f '#f)))
               (_%arity255776%_ _%e255737255773%_)
               (_%e255738255778%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255731255740%_ '4 '#f '#f)))
               (_%dispatch255781%_ _%e255738255778%_))
          (_%K255734255762%_
           _%dispatch255781%_
           _%arity255776%_
           _%signature255771%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self255579%_)
        (let ((_%self255582%_ _%self255579%_))
          (letrec ((_%clause-e255593%_
                    (lambda (_%clause255595%_)
                      (cdr (let ((__method258280
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause255595%_
                                     'typedecl))))
                             (if __method258280
                                 (let ()
                                   (declare (not safe))
                                   (__method258280 _%clause255595%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause255595%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e255593%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255582%_
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
      (lambda (_%self255444%_)
        (let ((_%self255447%_ _%self255444%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255447%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255447%_
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
      (lambda (_%self255309%_)
        (let ((_%self255312%_ _%self255309%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255312%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255312%_
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
      (lambda (_%self255174%_)
        (let ((_%self255177%_ _%self255174%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255177%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
