(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771178572)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp258334
                   (let ((__obj258328
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
                       (gxc#optimizer-info:::init! __obj258328))
                     __obj258328)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp258334)))))
    (define gxc#optimize!
      (lambda (_%ctx257936%_)
        (let ((__tmp258336
               (lambda ()
                 (let ((__tmp258338
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx257936%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx257936%_)
                          (let ((__tmp258340
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp258339
                                 (##structure-ref
                                  _%ctx257936%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258340 __tmp258339 '#t))
                          (let ((_%code257940%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx257936%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx257936%_
                             _%code257940%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp258337
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp258338
                    gxc#current-compile-local-type
                    __tmp258337))))
              (__tmp258335 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258336
           gxc#current-compile-mutators
           __tmp258335))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx257922%_)
        (letrec ((_%load-it!257924%_
                  (lambda (_%id257934%_)
                    (if (let ((__tmp258341
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp258341 _%id257934%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id257934%_)
                          (let ((__tmp258342
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258342 _%id257934%_ '#t)))))))
          (let* ((_%modid257926%_
                  (##structure-ref
                   _%ctx257922%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str257928%_ (symbol->string _%modid257926%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str257928%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str257928%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257924%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257924%_
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
      (lambda (_%ctx257859%_)
        (letrec* ((_%deps257861%_
                   (let* ((_%imports257912%_
                           (##structure-ref
                            _%ctx257859%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e257914%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx257859%_))))
                     (if _%$e257914%_
                         ((lambda (_%g257916257918%_)
                            (cons _%g257916257918%_ _%imports257912%_))
                          _%$e257914%_)
                         _%imports257912%_))))
          (let _%lp257863%_ ((_%rest257865%_ _%deps257861%_))
            (let* ((_%rest257866257874%_ _%rest257865%_)
                   (_%else257868257882%_ (lambda () '#!void))
                   (_%K257870257900%_
                    (lambda (_%rest257885%_ _%hd257886%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd257886%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp258344
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp258343
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257886%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp258344 __tmp258343))
                                '#!void
                                (begin
                                  (let ((_%$e257889%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd257886%_))))
                                    (if _%$e257889%_
                                        ((lambda (_%pre257892%_)
                                           (_%lp257863%_
                                            (cons _%pre257892%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd257886%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e257889%_)
                                        (_%lp257863%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257886%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd257886%_)))
                            (_%lp257863%_ _%rest257885%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd257886%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp258346
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp258345
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd257886%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp258346 __tmp258345))
                                    '#!void
                                    (begin
                                      (_%lp257863%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257886%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd257886%_)))
                                (_%lp257863%_ _%rest257885%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd257886%_
                                     'gx#module-import::t))
                                  (_%lp257863%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257886%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest257885%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd257886%_
                                         'gx#module-export::t))
                                      (_%lp257863%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd257886%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest257885%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd257886%_
                                             'gx#import-set::t))
                                          (_%lp257863%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd257886%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest257885%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd257886%_))))))))))
              (if (pair? _%rest257866257874%_)
                  (let ((_%hd257871257903%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257866257874%_)))
                        (_%tl257872257905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257866257874%_))))
                    (let* ((_%hd257908%_ _%hd257871257903%_)
                           (_%rest257910%_ _%tl257872257905%_))
                      (_%K257870257900%_ _%rest257910%_ _%hd257908%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx257839%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx257839%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx257839%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht257841%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id257843%_
                    (##structure-ref
                     _%ctx257839%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod257845%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht257841%_ _%id257843%_)))
                   (_%$e257848%_ _%mod257845%_))
              (if _%$e257848%_
                  _%$e257848%_
                  (let* ((_%mod257851%_
                          (gxc#optimizer-import-ssxi _%ctx257839%_))
                         (_%val257856%_
                          (let ((_%$e257853%_ _%mod257851%_))
                            (if _%$e257853%_ _%$e257853%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht257841%_ _%id257843%_ _%val257856%_))
                    _%val257856%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx257837%_)
        (if (##structure-ref _%ctx257837%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx257837%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id257815%_)
        (letrec ((_%catch-e257817%_
                  (lambda (_%exn257835%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn257835%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn257835%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id257815%_))))
                    '#f))
                 (_%import-e257818%_
                  (lambda ()
                    (let* ((_%str-id257821%_
                            (let ((__tmp258347
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id257815%_))))
                              (declare (not safe))
                              (##string-append __tmp258347 '".ssxi")))
                           (_%artefact-path257828%_
                            (let ((_%odir257822257824%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir257822257824%_
                                  (let ((_%odir257826%_ _%odir257822257824%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id257821%_
                                        '".ss"))
                                     _%odir257826%_))
                                  '#f)))
                           (_%library-path257830%_
                            (let ((__tmp258348
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id257821%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp258348)))
                           (_%ssxi-path257832%_
                            (if (and _%artefact-path257828%_
                                     (file-exists? _%artefact-path257828%_))
                                _%artefact-path257828%_
                                _%library-path257830%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path257832%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path257832%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e257817%_ _%import-e257818%_)))))
    (define gxc#optimize-source
      (lambda (_%stx257800%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx257800%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx257800%_))
        (let* ((_%stx257802%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx257800%_)))
               (_%stx257804%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx257802%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx257804%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx257804%_))
          (let _%fixpoint257807%_ ((_%current257809%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx257804%_))
            (let ((_%refined257811%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current257809%_ _%refined257811%_)
                  '#!void
                  (_%fixpoint257807%_ _%refined257811%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx257804%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx257804%_))
          (let ((_%stx257813%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx257804%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx257813%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp258350 (list gxc#::generate-runtime-empty::t))
            (__tmp258349 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp258350
         '()
         __tmp258349
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args257797%_
        (apply make-instance gxc#::generate-ssxi::t _%$args257797%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp258351
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
        (__make-atomic-promise __tmp258351)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx257789%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self257792%_
                (let ((__obj258330
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj258330))
               (__tmp258352
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257792%_ _%stx257789%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258352
           gxc#current-compile-method
           _%self257792%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self257749%_ _%stx257750%_)
        (let* ((_%g257752257762%_
                (lambda (_%g257753257759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257753257759%_))))
               (_%g257751257786%_
                (lambda (_%g257753257765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257753257765%_))
                      (let ((_%e257755257767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257753257765%_))))
                        (let ((_%hd257756257770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257755257767%_)))
                              (_%tl257757257772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257755257767%_))))
                          ((lambda (_%g257754257775%_)
                             (let ((__tmp258355
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self257749%_
                                         _%stx257750%_))))
                                   (__tmp258353
                                    (let ((__tmp258354
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp258354 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp258355
                                gx#current-expander-phi
                                __tmp258353)))
                           _%tl257757257772%_)))
                      (_%g257752257762%_ _%g257753257765%_)))))
          (_%g257751257786%_ _%stx257750%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self257688%_ _%stx257689%_)
        (let* ((_%g257691257705%_
                (lambda (_%g257692257702%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257692257702%_))))
               (_%g257690257746%_
                (lambda (_%g257692257708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257692257708%_))
                      (let ((_%e257695257710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257692257708%_))))
                        (let ((_%hd257696257713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257695257710%_)))
                              (_%tl257697257715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257695257710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257697257715%_))
                              (let ((_%e257698257718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl257697257715%_))))
                                (let ((_%hd257699257721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257698257718%_)))
                                      (_%tl257700257723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257698257718%_))))
                                  ((lambda (_%g257693257726%_
                                            _%g257694257727%_)
                                     (let* ((_%ctx257740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g257694257727%_)))
                                            (_%code257742%_
                                             (##structure-ref
                                              _%ctx257740%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp258356
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self257688%_
                                                  _%code257742%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258356
                                        gx#current-expander-context
                                        _%ctx257740%_)))
                                   _%tl257700257723%_
                                   _%hd257699257721%_)))
                              (_%g257691257705%_ _%g257692257708%_))))
                      (_%g257691257705%_ _%g257692257708%_)))))
          (_%g257690257746%_ _%stx257689%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self257495%_ _%stx257496%_)
        (letrec ((_%generate-e257498%_
                  (lambda (_%id257673%_)
                    (let* ((_%sym257675%_
                            (if (let ((__tmp258357
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp258357))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id257673%_))
                                '#f))
                           (_%$e257677%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym257675%_))))
                      (if _%$e257677%_
                          ((lambda (_%klass257680%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym257675%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym257675%_
                                                     (cons (let ((__method258331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass257680%_ 'typedecl))))
                     (if __method258331
                         (let ()
                           (declare (not safe))
                           (__method258331 _%klass257680%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass257680%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym257675%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym257675%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e257677%_)
                          (let ((_%$e257682%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym257675%_))))
                            (if _%$e257682%_
                                ((lambda (_%type257685%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym257675%_
                                      '" "
                                      _%type257685%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type257685%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym257675%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym257675%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type257685%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym257675%_
                                                   (cons (let ((__method258332
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type257685%_ 'typedecl))))
                   (if __method258332
                       (let ()
                         (declare (not safe))
                         (__method258332 _%type257685%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type257685%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e257682%_)
                                '(begin))))))))
          (let* ((_%__stx257943257944%_ _%stx257496%_)
                 (_%g257501257539%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257943257944%_)))))
            (let ((_%__kont257945257946%_
                   (lambda (_%g257503257655%_)
                     (_%generate-e257498%_ _%g257503257655%_)))
                  (_%__kont257947257948%_
                   (lambda (_%g257516257590%_)
                     (let ((_%types257616%_
                            (map _%generate-e257498%_
                                 (let ((__tmp258358
                                        (lambda (_%g257608257611%_
                                                 _%g257609257613%_)
                                          (cons _%g257608257611%_
                                                _%g257609257613%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp258358
                                    '()
                                    _%g257516257590%_)))))
                       (cons 'begin _%types257616%_)))))
              (let ((_%__match257998257999%_
                     (lambda (_%e257517257544%_
                              _%hd257518257547%_
                              _%tl257519257549%_
                              _%e257520257552%_
                              _%hd257521257555%_
                              _%tl257522257557%_
                              _%__splice257949257950%_
                              _%target257523257560%_
                              _%tl257525257562%_)
                       (letrec ((_%loop257526257565%_
                                 (lambda (_%hd257524257568%_
                                          _%id257530257570%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd257524257568%_))
                                       (let ((_%e257527257572%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd257524257568%_))))
                                         (let ((_%lp-tl257529257577%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e257527257572%_)))
                                               (_%lp-hd257528257575%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e257527257572%_))))
                                           (_%loop257526257565%_
                                            _%lp-tl257529257577%_
                                            (cons _%lp-hd257528257575%_
                                                  _%id257530257570%_))))
                                       (let ((_%id257531257580%_
                                              (reverse _%id257530257570%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl257522257557%_))
                                             (let ((_%e257532257582%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl257522257557%_))))
                                               (let ((_%tl257534257587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e257532257582%_)))
                                                     (_%hd257533257585%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e257532257582%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl257534257587%_))
                                                     (_%__kont257947257948%_
                                                      _%id257531257580%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g257501257539%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g257501257539%_))))))))
                         (_%loop257526257565%_ _%target257523257560%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257943257944%_))
                    (let ((_%e257504257623%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257943257944%_))))
                      (let ((_%tl257506257628%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257504257623%_)))
                            (_%hd257505257626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257504257623%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl257506257628%_))
                            (let ((_%e257507257631%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl257506257628%_))))
                              (let ((_%tl257509257636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257507257631%_)))
                                    (_%hd257508257634%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257507257631%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd257508257634%_))
                                    (let ((_%e257510257639%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd257508257634%_))))
                                      (let ((_%tl257512257644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257510257639%_)))
                                            (_%hd257511257642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257510257639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257512257644%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257509257636%_))
                                                (let ((_%e257513257647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257509257636%_))))
                                                  (let ((_%tl257515257652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257513257647%_)))
                                                        (_%hd257514257650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257513257647%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257515257652%_))
                                                        (_%__kont257945257946%_
                                                         _%hd257511257642%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd257508257634%_))
                                                            (let ((_%__splice257949257950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd257508257634%_
                              '0))))
                      (let ((_%tl257525257562%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257949257950%_ '1)))
                            (_%target257523257560%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice257949257950%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257525257562%_))
                            (_%__match257998257999%_
                             _%e257504257623%_
                             _%hd257505257626%_
                             _%tl257506257628%_
                             _%e257507257631%_
                             _%hd257508257634%_
                             _%tl257509257636%_
                             _%__splice257949257950%_
                             _%target257523257560%_
                             _%tl257525257562%_)
                            (let ()
                              (declare (not safe))
                              (_%g257501257539%_)))))
                    (let () (declare (not safe)) (_%g257501257539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd257508257634%_))
                                                    (let ((_%__splice257949257950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd257508257634%_
                                                              '0))))
                                                      (let ((_%tl257525257562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice257949257950%_ '1)))
                    (_%target257523257560%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice257949257950%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257525257562%_))
                    (_%__match257998257999%_
                     _%e257504257623%_
                     _%hd257505257626%_
                     _%tl257506257628%_
                     _%e257507257631%_
                     _%hd257508257634%_
                     _%tl257509257636%_
                     _%__splice257949257950%_
                     _%target257523257560%_
                     _%tl257525257562%_)
                    (let () (declare (not safe)) (_%g257501257539%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257501257539%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd257508257634%_))
                                                (let ((_%__splice257949257950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd257508257634%_
                                                          '0))))
                                                  (let ((_%tl257525257562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257949257950%_
                                                            '1)))
                                                        (_%target257523257560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice257949257950%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257525257562%_))
                                                        (_%__match257998257999%_
                                                         _%e257504257623%_
                                                         _%hd257505257626%_
                                                         _%tl257506257628%_
                                                         _%e257507257631%_
                                                         _%hd257508257634%_
                                                         _%tl257509257636%_
                                                         _%__splice257949257950%_
                                                         _%target257523257560%_
                                                         _%tl257525257562%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257501257539%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257501257539%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd257508257634%_))
                                        (let ((_%__splice257949257950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd257508257634%_
                                                  '0))))
                                          (let ((_%tl257525257562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257949257950%_
                                                    '1)))
                                                (_%target257523257560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice257949257950%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257525257562%_))
                                                (_%__match257998257999%_
                                                 _%e257504257623%_
                                                 _%hd257505257626%_
                                                 _%tl257506257628%_
                                                 _%e257507257631%_
                                                 _%hd257508257634%_
                                                 _%tl257509257636%_
                                                 _%__splice257949257950%_
                                                 _%target257523257560%_
                                                 _%tl257525257562%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257501257539%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g257501257539%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g257501257539%_)))))
                    (let () (declare (not safe)) (_%g257501257539%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self257048%_ _%stx257049%_)
        (let* ((_%__stx258001258002%_ _%stx257049%_)
               (_%g257053257155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258001258002%_)))))
          (let ((_%__kont258003258004%_
                 (lambda (_%g257055257445%_
                          _%g257056257446%_
                          _%g257057257447%_
                          _%g257058257448%_
                          _%g257059257449%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257058257448%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257057257447%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257056257446%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g257055257445%_))
                                                 '())))))))
                (_%__kont258005258006%_
                 (lambda (_%g257108257271%_
                          _%g257109257272%_
                          _%g257110257273%_
                          _%g257111257274%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257110257273%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257109257272%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257108257271%_))
                                           (cons '#f '())))))))
                (_%__kont258007258008%_ (lambda () '(begin))))
            (let ((_%__match258136258137%_
                   (lambda (_%e257060257317%_
                            _%hd257061257320%_
                            _%tl257062257322%_
                            _%e257063257325%_
                            _%hd257064257328%_
                            _%tl257065257330%_
                            _%e257066257333%_
                            _%hd257067257336%_
                            _%tl257068257338%_
                            _%e257069257341%_
                            _%hd257070257344%_
                            _%tl257071257346%_
                            _%e257072257349%_
                            _%hd257073257352%_
                            _%tl257074257354%_
                            _%e257075257357%_
                            _%hd257076257360%_
                            _%tl257077257362%_
                            _%e257078257365%_
                            _%hd257079257368%_
                            _%tl257080257370%_
                            _%e257081257373%_
                            _%hd257082257376%_
                            _%tl257083257378%_
                            _%e257084257381%_
                            _%hd257085257384%_
                            _%tl257086257386%_
                            _%e257087257389%_
                            _%hd257088257392%_
                            _%tl257089257394%_
                            _%e257090257397%_
                            _%hd257091257400%_
                            _%tl257092257402%_
                            _%e257093257405%_
                            _%hd257094257408%_
                            _%tl257095257410%_
                            _%e257096257413%_
                            _%hd257097257416%_
                            _%tl257098257418%_
                            _%e257099257421%_
                            _%hd257100257424%_
                            _%tl257101257426%_
                            _%e257102257429%_
                            _%hd257103257432%_
                            _%tl257104257434%_
                            _%e257105257437%_
                            _%hd257106257440%_
                            _%tl257107257442%_)
                     (let ((_%g257055257445%_ _%hd257106257440%_)
                           (_%g257056257446%_ _%hd257097257416%_)
                           (_%g257057257447%_ _%hd257088257392%_)
                           (_%g257058257448%_ _%hd257079257368%_)
                           (_%g257059257449%_ _%hd257070257344%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g257059257449%_
                              'bind-method!))
                           (_%__kont258003258004%_
                            _%g257055257445%_
                            _%g257056257446%_
                            _%g257057257447%_
                            _%g257058257448%_
                            _%g257059257449%_)
                           (_%__kont258007258008%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx258001258002%_))
                  (let ((_%e257060257317%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx258001258002%_))))
                    (let ((_%tl257062257322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257060257317%_)))
                          (_%hd257061257320%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257060257317%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257062257322%_))
                          (let ((_%e257063257325%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl257062257322%_))))
                            (let ((_%tl257065257330%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257063257325%_)))
                                  (_%hd257064257328%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257063257325%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd257064257328%_))
                                  (let ((_%e257066257333%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd257064257328%_))))
                                    (let ((_%tl257068257338%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257066257333%_)))
                                          (_%hd257067257336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257066257333%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd257067257336%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd257067257336%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257068257338%_))
                                                  (let ((_%e257069257341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257068257338%_))))
                                                    (let ((_%tl257071257346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257069257341%_)))
                                                          (_%hd257070257344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257069257341%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257071257346%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl257065257330%_))
                      (let ((_%e257072257349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl257065257330%_))))
                        (let ((_%tl257074257354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257072257349%_)))
                              (_%hd257073257352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257072257349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd257073257352%_))
                              (let ((_%e257075257357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd257073257352%_))))
                                (let ((_%tl257077257362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257075257357%_)))
                                      (_%hd257076257360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257075257357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd257076257360%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd257076257360%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257077257362%_))
                                              (let ((_%e257078257365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl257077257362%_))))
                                                (let ((_%tl257080257370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257078257365%_)))
                                                      (_%hd257079257368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257078257365%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257080257370%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl257074257354%_))
                                                          (let ((_%e257081257373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl257074257354%_))))
                    (let ((_%tl257083257378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257081257373%_)))
                          (_%hd257082257376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257081257373%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd257082257376%_))
                          (let ((_%e257084257381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd257082257376%_))))
                            (let ((_%tl257086257386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257084257381%_)))
                                  (_%hd257085257384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257084257381%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd257085257384%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd257085257384%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257086257386%_))
                                          (let ((_%e257087257389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl257086257386%_))))
                                            (let ((_%tl257089257394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257087257389%_)))
                                                  (_%hd257088257392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257087257389%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl257089257394%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257083257378%_))
                                                      (let ((_%e257090257397%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl257083257378%_))))
                (let ((_%tl257092257402%_
                       (let () (declare (not safe)) (##cdr _%e257090257397%_)))
                      (_%hd257091257400%_
                       (let ()
                         (declare (not safe))
                         (##car _%e257090257397%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd257091257400%_))
                      (let ((_%e257093257405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd257091257400%_))))
                        (let ((_%tl257095257410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257093257405%_)))
                              (_%hd257094257408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257093257405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd257094257408%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd257094257408%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257095257410%_))
                                      (let ((_%e257096257413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl257095257410%_))))
                                        (let ((_%tl257098257418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257096257413%_)))
                                              (_%hd257097257416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257096257413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257098257418%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257092257402%_))
                                                  (let ((_%e257099257421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257092257402%_))))
                                                    (let ((_%tl257101257426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257099257421%_)))
                                                          (_%hd257100257424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257099257421%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd257100257424%_))
                                                          (let ((_%e257102257429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd257100257424%_))))
                    (let ((_%tl257104257434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257102257429%_)))
                          (_%hd257103257432%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257102257429%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd257103257432%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd257103257432%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257104257434%_))
                                  (let ((_%e257105257437%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl257104257434%_))))
                                    (let ((_%tl257107257442%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257105257437%_)))
                                          (_%hd257106257440%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257105257437%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl257107257442%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257101257426%_))
                                              (_%__match258136258137%_
                                               _%e257060257317%_
                                               _%hd257061257320%_
                                               _%tl257062257322%_
                                               _%e257063257325%_
                                               _%hd257064257328%_
                                               _%tl257065257330%_
                                               _%e257066257333%_
                                               _%hd257067257336%_
                                               _%tl257068257338%_
                                               _%e257069257341%_
                                               _%hd257070257344%_
                                               _%tl257071257346%_
                                               _%e257072257349%_
                                               _%hd257073257352%_
                                               _%tl257074257354%_
                                               _%e257075257357%_
                                               _%hd257076257360%_
                                               _%tl257077257362%_
                                               _%e257078257365%_
                                               _%hd257079257368%_
                                               _%tl257080257370%_
                                               _%e257081257373%_
                                               _%hd257082257376%_
                                               _%tl257083257378%_
                                               _%e257084257381%_
                                               _%hd257085257384%_
                                               _%tl257086257386%_
                                               _%e257087257389%_
                                               _%hd257088257392%_
                                               _%tl257089257394%_
                                               _%e257090257397%_
                                               _%hd257091257400%_
                                               _%tl257092257402%_
                                               _%e257093257405%_
                                               _%hd257094257408%_
                                               _%tl257095257410%_
                                               _%e257096257413%_
                                               _%hd257097257416%_
                                               _%tl257098257418%_
                                               _%e257099257421%_
                                               _%hd257100257424%_
                                               _%tl257101257426%_
                                               _%e257102257429%_
                                               _%hd257103257432%_
                                               _%tl257104257434%_
                                               _%e257105257437%_
                                               _%hd257106257440%_
                                               _%tl257107257442%_)
                                              (_%__kont258007258008%_))
                                          (_%__kont258007258008%_))))
                                  (_%__kont258007258008%_))
                              (_%__kont258007258008%_))
                          (_%__kont258007258008%_))))
                  (_%__kont258007258008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257092257402%_))
                                                      (if (let ((__tmp258359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp258359 'bind-method!))
                  (let ((_%g257108257271%_ _%hd257097257416%_)
                        (_%g257109257272%_ _%hd257088257392%_)
                        (_%g257110257273%_ _%hd257079257368%_)
                        (_%g257111257274%_ _%hd257070257344%_))
                    (_%__kont258005258006%_
                     _%g257108257271%_
                     _%g257109257272%_
                     _%g257110257273%_
                     _%g257111257274%_))
                  (_%__kont258007258008%_))
              (_%__kont258007258008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258007258008%_))))
                                      (_%__kont258007258008%_))
                                  (_%__kont258007258008%_))
                              (_%__kont258007258008%_))))
                      (_%__kont258007258008%_))))
              (_%__kont258007258008%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258007258008%_))))
                                          (_%__kont258007258008%_))
                                      (_%__kont258007258008%_))
                                  (_%__kont258007258008%_))))
                          (_%__kont258007258008%_))))
                  (_%__kont258007258008%_))
              (_%__kont258007258008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258007258008%_))
                                          (_%__kont258007258008%_))
                                      (_%__kont258007258008%_))))
                              (_%__kont258007258008%_))))
                      (_%__kont258007258008%_))
                  (_%__kont258007258008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258007258008%_))
                                              (_%__kont258007258008%_))
                                          (_%__kont258007258008%_))))
                                  (_%__kont258007258008%_))))
                          (_%__kont258007258008%_))))
                  (_%__kont258007258008%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self256872%_ _%stx256873%_)
        (let* ((_%__stx258245258246%_ _%stx256873%_)
               (_%g256876256916%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258245258246%_)))))
          (let ((_%__kont258247258248%_
                 (lambda (_%g256878257022%_ _%g256879257023%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256879257023%_))
                               (cons _%g256878257022%_ '())))))
                (_%__kont258249258250%_
                 (lambda (_%g256901256945%_ _%g256902256946%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258245258246%_))
                (let ((_%e256880256966%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258245258246%_))))
                  (let ((_%tl256882256971%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e256880256966%_)))
                        (_%hd256881256969%_
                         (let ()
                           (declare (not safe))
                           (##car _%e256880256966%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl256882256971%_))
                        (let ((_%e256883256974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl256882256971%_))))
                          (let ((_%tl256885256979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e256883256974%_)))
                                (_%hd256884256977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e256883256974%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd256884256977%_))
                                (let ((_%e256886256982%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd256884256977%_))))
                                  (let ((_%tl256888256987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e256886256982%_)))
                                        (_%hd256887256985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e256886256982%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd256887256985%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd256887256985%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256888256987%_))
                                                (let ((_%e256889256990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256888256987%_))))
                                                  (let ((_%tl256891256995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256889256990%_)))
                                                        (_%hd256890256993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256889256990%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256891256995%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl256885256979%_))
                                                            (let ((_%e256892256998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256885256979%_))))
                      (let ((_%tl256894257003%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256892256998%_)))
                            (_%hd256893257001%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256892256998%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd256893257001%_))
                            (let ((_%e256895257006%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd256893257001%_))))
                              (let ((_%tl256897257011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256895257006%_)))
                                    (_%hd256896257009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256895257006%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd256896257009%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd256896257009%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256897257011%_))
                                            (let ((_%e256898257014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256897257011%_))))
                                              (let ((_%tl256900257019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256898257014%_)))
                                                    (_%hd256899257017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256898257014%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256900257019%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256894257003%_))
                                                        (_%__kont258247258248%_
                                                         _%hd256899257017%_
                                                         _%hd256890256993%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256876256916%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256894257003%_))
                                                        (_%__kont258249258250%_
                                                         _%hd256893257001%_
                                                         _%hd256884256977%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256876256916%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256894257003%_))
                                                (_%__kont258249258250%_
                                                 _%hd256893257001%_
                                                 _%hd256884256977%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256876256916%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256894257003%_))
                                            (_%__kont258249258250%_
                                             _%hd256893257001%_
                                             _%hd256884256977%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256876256916%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl256894257003%_))
                                        (_%__kont258249258250%_
                                         _%hd256893257001%_
                                         _%hd256884256977%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g256876256916%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl256894257003%_))
                                (_%__kont258249258250%_
                                 _%hd256893257001%_
                                 _%hd256884256977%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g256876256916%_))))))
                    (let () (declare (not safe)) (_%g256876256916%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl256885256979%_))
                    (let ((_%e256909256937%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256885256979%_))))
                      (let ((_%tl256911256942%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256909256937%_)))
                            (_%hd256910256940%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256909256937%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256911256942%_))
                            (_%__kont258249258250%_
                             _%hd256910256940%_
                             _%hd256884256977%_)
                            (let ()
                              (declare (not safe))
                              (_%g256876256916%_)))))
                    (let () (declare (not safe)) (_%g256876256916%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl256885256979%_))
                                                    (let ((_%e256909256937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl256885256979%_))))
                                                      (let ((_%tl256911256942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e256909256937%_)))
                    (_%hd256910256940%_
                     (let () (declare (not safe)) (##car _%e256909256937%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256911256942%_))
                    (_%__kont258249258250%_
                     _%hd256910256940%_
                     _%hd256884256977%_)
                    (let () (declare (not safe)) (_%g256876256916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256876256916%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256885256979%_))
                                                (let ((_%e256909256937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256885256979%_))))
                                                  (let ((_%tl256911256942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256909256937%_)))
                                                        (_%hd256910256940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256909256937%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256911256942%_))
                                                        (_%__kont258249258250%_
                                                         _%hd256910256940%_
                                                         _%hd256884256977%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256876256916%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256876256916%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256885256979%_))
                                            (let ((_%e256909256937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256885256979%_))))
                                              (let ((_%tl256911256942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256909256937%_)))
                                                    (_%hd256910256940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256909256937%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256911256942%_))
                                                    (_%__kont258249258250%_
                                                     _%hd256910256940%_
                                                     _%hd256884256977%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256876256916%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g256876256916%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl256885256979%_))
                                    (let ((_%e256909256937%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl256885256979%_))))
                                      (let ((_%tl256911256942%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256909256937%_)))
                                            (_%hd256910256940%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256909256937%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256911256942%_))
                                            (_%__kont258249258250%_
                                             _%hd256910256940%_
                                             _%hd256884256977%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256876256916%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g256876256916%_))))))
                        (let () (declare (not safe)) (_%g256876256916%_)))))
                (let () (declare (not safe)) (_%g256876256916%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self256859%_)
        (let ((_%self256862%_ _%self256859%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256862%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self256633%_)
        (let* ((_%self256636%_ _%self256633%_)
               (_%self256645256661%_ _%self256636%_)
               (_%E256647256664%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256645256661%_
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
               (_%K256648256679%_
                (lambda (_%methods256667%_
                         _%metaclass256668%_
                         _%system?256669%_
                         _%final?256670%_
                         _%struct?256671%_
                         _%constructor256672%_
                         _%fields256673%_
                         _%slots256674%_
                         _%precendence-list256675%_
                         _%super256676%_
                         _%id256677%_)
                  (cons '@class
                        (cons _%id256677%_
                              (cons _%super256676%_
                                    (cons _%precendence-list256675%_
                                          (cons _%slots256674%_
                                                (cons _%fields256673%_
                                                      (cons _%constructor256672%_
                                                            (cons _%struct?256671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?256670%_
                                (cons _%system?256669%_
                                      (cons _%metaclass256668%_
                                            (cons (if _%methods256667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods256667%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e256649256682%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '1 '#f '#f)))
               (_%id256685%_ _%e256649256682%_)
               (_%e256650256687%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '2 '#f '#f)))
               (_%super256690%_ _%e256650256687%_)
               (_%e256651256692%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '3 '#f '#f)))
               (_%precendence-list256695%_ _%e256651256692%_)
               (_%e256652256697%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '4 '#f '#f)))
               (_%slots256700%_ _%e256652256697%_)
               (_%e256653256702%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '5 '#f '#f)))
               (_%fields256705%_ _%e256653256702%_)
               (_%e256654256707%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '6 '#f '#f)))
               (_%constructor256710%_ _%e256654256707%_)
               (_%e256655256712%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '7 '#f '#f)))
               (_%struct?256715%_ _%e256655256712%_)
               (_%e256656256717%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '8 '#f '#f)))
               (_%final?256720%_ _%e256656256717%_)
               (_%e256657256722%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256645256661%_ '9 '#f '#f)))
               (_%system?256725%_ _%e256657256722%_)
               (_%e256658256727%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256645256661%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass256730%_ _%e256658256727%_)
               (_%e256659256732%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256645256661%_
                   '11
                   '#f
                   '#f)))
               (_%methods256735%_ _%e256659256732%_))
          (_%K256648256679%_
           _%methods256735%_
           _%metaclass256730%_
           _%system?256725%_
           _%final?256720%_
           _%struct?256715%_
           _%constructor256710%_
           _%fields256705%_
           _%slots256700%_
           _%precendence-list256695%_
           _%super256690%_
           _%id256685%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self256498%_)
        (let ((_%self256501%_ _%self256498%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256501%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self256363%_)
        (let ((_%self256366%_ _%self256363%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256366%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self256228%_)
        (let ((_%self256231%_ _%self256228%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256231%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256231%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256231%_
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
      (lambda (_%self256093%_)
        (let ((_%self256096%_ _%self256093%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256096%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256096%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256096%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self255958%_)
        (let ((_%self255961%_ _%self255958%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255961%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255961%_
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
      (lambda (_%self255772%_)
        (let* ((_%self255775%_ _%self255772%_)
               (_%self255784255793%_ _%self255775%_)
               (_%E255786255796%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255784255793%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K255787255815%_
                (lambda (_%dispatch255799%_
                         _%arity255800%_
                         _%signature255801%_)
                  (if _%signature255801%_
                      (let ((_%signature255803%_ _%signature255801%_))
                        (cons '@lambda
                              (cons _%arity255800%_
                                    (cons _%dispatch255799%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255803%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature255803%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature255803%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature255803%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature255803%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity255800%_
                                  (cons _%dispatch255799%_ '()))))))
               (_%e255788255818%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255784255793%_ '1 '#f '#f)))
               (_%e255789255821%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255784255793%_ '2 '#f '#f)))
               (_%signature255824%_ _%e255789255821%_)
               (_%e255790255826%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255784255793%_ '3 '#f '#f)))
               (_%arity255829%_ _%e255790255826%_)
               (_%e255791255831%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255784255793%_ '4 '#f '#f)))
               (_%dispatch255834%_ _%e255791255831%_))
          (_%K255787255815%_
           _%dispatch255834%_
           _%arity255829%_
           _%signature255824%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self255632%_)
        (let ((_%self255635%_ _%self255632%_))
          (letrec ((_%clause-e255646%_
                    (lambda (_%clause255648%_)
                      (cdr (let ((__method258333
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause255648%_
                                     'typedecl))))
                             (if __method258333
                                 (let ()
                                   (declare (not safe))
                                   (__method258333 _%clause255648%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause255648%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e255646%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255635%_
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
      (lambda (_%self255497%_)
        (let ((_%self255500%_ _%self255497%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255500%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255500%_
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
      (lambda (_%self255362%_)
        (let ((_%self255365%_ _%self255362%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255365%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255365%_
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
      (lambda (_%self255227%_)
        (let ((_%self255230%_ _%self255227%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255230%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
